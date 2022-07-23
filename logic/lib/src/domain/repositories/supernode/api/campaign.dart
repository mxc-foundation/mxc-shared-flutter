import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';

class CampaignRepository {
  CampaignRepository(this._client);

  final SupernodeClient _client;

  Future<List<Campaign>> listCurrent({int? organizationId}) async {
    final res = await _client.campaign.listCurrentCampaigns(
      organizationID:
          organizationId?.toString() ?? _client.defaultOrganizationId,
    );
    return res.body!.campaigns!
        .map(
          (e) => Campaign(
              campaignId: int.parse(e.campaignID!),
              campaignName: e.campaignName!,
              campaignType: e.campaignType!,
              participated: e.participated!,
              rewardClaimed: e.rewardClaimed!,
              participant: e.participant != null
                  ? CampaignParticipant(
                      tierId: int.parse(e.participant!.tierID!),
                      participantId: int.parse(e.participant!.participantID!),
                    )
                  : CampaignParticipantEmpty(),
              token:
                  (e.currency! == 'ETH_MXC') ? Token.mxc : Token.supernodeDhx,
              bannerImage:
                  e.participated! ? e.banners!.claimReward! : e.banners!.$new!,
              campaignTiers: e.tiers!
                  .map((t) => CampaignTier(
                        id: int.parse(t.id!),
                        amount: int.parse(t.amount!.toString()),
                        lockPeriod: int.parse(t.lockPeriod!.toString()),
                        monthlyRate: double.parse(t.monthlyRate!.toString()),
                        reward: t.reward!,
                        imageLink: t.imageLink!,
                        slots: int.parse(t.slots!.toString()),
                        slotsUsed: int.parse(t.slotsUsed!.toString()),
                      ))
                  .toList()),
        )
        .toList();
  }

  Future<CampaignParticipateResult> participate({
    required int amount,
    required int tierId,
    int? organizationId,
  }) async {
    final res = await _client.campaign.participate(
      body: ExtapiParticipateRequest(
        amount: amount.toString(),
        organizationID:
            organizationId?.toString() ?? _client.defaultOrganizationId,
        tierID: tierId.toString(),
      ),
    );

    final data = res.body!;
    return CampaignParticipateResult(
      transactionId: int.parse(data.transactionID!),
      participantId: int.parse(data.participantID!),
    );
  }
}
