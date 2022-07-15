import 'package:mxc_logic/mxc_logic.dart';

class DemoCampaignRepository implements CampaignRepository {
  const DemoCampaignRepository();

  @override
  Future<List<CampaignActivity>> listCurrent() async {
    return [
      CampaignActivity(
          activityId: '1',
          activityName: 'staking rally',
          campaignBanners: [],
          campaignTiers: []),
    ];
  }
}
