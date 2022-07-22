import 'package:mxc_logic/mxc_logic.dart';

class DemoCampaignRepository implements CampaignRepository {
  const DemoCampaignRepository();

  @override
  Future<List<Campaign>> listCurrent({int? organizationId}) async {
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
  Future<List<CampaignParticipant>> checkParticipants(int campaignId,
      [int? organizationId]) async {
    return [
      CampaignParticipant(
        tierId: 1,
        participantId: 2,
        rewardClaimed: true,
      )
    ];
  }

  @override
  Future<CampaignParticipateResult> participate({
    required int amount,
    required int tierId,
    int? organizationId,
  }) async =>
      CampaignParticipateResult(
        transactionId: 1,
        participantId: 2,
      );
}
