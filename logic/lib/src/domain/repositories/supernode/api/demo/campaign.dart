import 'package:mxc_logic/mxc_logic.dart';

class DemoCampaignRepository implements CampaignRepository {
  const DemoCampaignRepository();

  @override
  Future<List<Campaign>> listCurrent({int? organizationId}) async {
    return [
      Campaign(
        campaignId: 1,
        campaignName: 'staking rally',
        campaignType: 'stake',
        token: Token.mxc,
        bannerImage: '',
        campaignTiers: [],
        participated: false,
        rewardClaimed: false,
        participant: CampaignParticipantEmpty(),
      ),
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
