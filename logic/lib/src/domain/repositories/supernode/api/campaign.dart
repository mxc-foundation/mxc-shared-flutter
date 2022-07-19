import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/campaign.dart';

class CampaignRepository {
  CampaignRepository(this._client);

  final SupernodeClient _client;

  Future<List<Campaign>> listCurrent() async {
    final res = await _client.campaign.listCurrentCampaigns(
      organizationID: _client.defaultOrganizationId,
    );
    return res.body!.campaigns!
        .map(
          (e) => Campaign(
              campaignId: int.parse(e.campaignID!),
              campaignName: e.campaignName!,
              token:
                  (e.currency! == 'ETH_MXC') ? Token.mxc : Token.supernodeDhx,
              campaignBanners: e.banners!
                  .map((b) => CampaignBanner(
                      imageName: b.name!, imageLink: b.imageLink!))
                  .toList(),
              campaignTiers: e.tiers!
                  .map((t) => CampaignTier(
                        id: t.id!,
                        amount: int.parse(t.amount!.toString()),
                        lockPeriod: int.parse(t.amount!.toString()),
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

  Future<List<CampaignParticipant>> checkParticipants(String activityId) async {
    final res = await _client.campaign.checkParticipants(
      organizationID: _client.defaultOrganizationId,
      activityID: activityId,
    );
    return res.body!.participation!
        .map((e) => CampaignParticipant(
              tierId: e.tierID!,
              participantId: e.participantID!,
              rewardClaimed: e.rewardClaimed ?? false,
            ))
        .toList();
  }
}
