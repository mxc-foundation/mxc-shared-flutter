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
}
