import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';
import 'package:mxc_logic/src/domain/entities/campaign.dart';

class CampaignRepository {
  CampaignRepository(this._client);

  final SupernodeClient _client;

  Future<List<CampaignActivity>> listCurrent() async {
    final res = await _client.campaign.listCurrentActivities(
      organizationID: _client.defaultOrganizationId,
    );
    return res.body!.activities!
        .map(
          (e) => CampaignActivity(
              activityId: e.activityID!,
              activityName: e.activityName!,
              token:
                  (e.currency! == 'ETH_MXC') ? Token.mxc : Token.supernodeDhx,
              campaignBanners: e.banners!
                  .map((b) => CampaignBanner(
                      imageName: b.name!, imageLink: b.imageLink!))
                  .toList(),
              campaignTiers: e.tiers!
                  .map((t) => CampaignTier(
                      id: t.id!,
                      details: t.details!,
                      slots: t.slots!,
                      slotsUsed: t.slotsUsed!))
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
