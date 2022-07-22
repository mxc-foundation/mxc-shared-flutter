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
              token:
                  (e.currency! == 'ETH_MXC') ? Token.mxc : Token.supernodeDhx,
              campaignBanners: e.banners!
                  .map((b) => CampaignBanner(
                      imageName: b.name!, imageLink: b.imageLink!))
                  .toList(),
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

  Future<List<CampaignParticipant>> checkParticipants(int campaignId,
      [int? organizationId]) async {
    final res = await _client.campaign.checkParticipants(
      organizationID:
          organizationId?.toString() ?? _client.defaultOrganizationId,
      campaignID: campaignId.toString(),
    );
    return res.body!.participation!
        .map((e) => CampaignParticipant(
              tierId: int.parse(e.tierID!),
              participantId: int.parse(e.participantID!),
              rewardClaimed: e.rewardClaimed ?? false,
            ))
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
