import 'package:mxc_logic/mxc_logic.dart';

class DemoCampaignRepository implements CampaignRepository {
  const DemoCampaignRepository();

  @override
  Future<List<CampaignActivity>> listCurrent() async {
    return [
      CampaignActivity(
          activityId: '1',
          activityName: 'staking rally',
          token: Token.mxc,
          campaignBanners: [],
          campaignTiers: []),
    ];
  }

  @override
  Future<List<CampaignParticipant>> checkParticipants(String activityId) async {
    return [
      CampaignParticipant(
        tierId: '1',
        participantId: '2',
        rewardClaimed: true,
      )
    ];
  }
}
