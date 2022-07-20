import 'package:mxc_logic/mxc_logic.dart';

class DemoCampaignRepository implements CampaignRepository {
  const DemoCampaignRepository();

  @override
  Future<List<Campaign>> listCurrent() async {
    return [
      Campaign(
          campaignId: 1,
          campaignName: 'staking rally',
          token: Token.mxc,
          campaignBanners: [],
          campaignTiers: []),
    ];
  }

  @override
  Future<List<CampaignParticipant>> checkParticipants(int activityId) async {
    return [
      CampaignParticipant(
        tierId: 1,
        participantId: 2,
        rewardClaimed: true,
      )
    ];
  }
}
