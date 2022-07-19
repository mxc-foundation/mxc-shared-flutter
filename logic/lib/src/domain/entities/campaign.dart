import 'package:mxc_logic/mxc_logic.dart';

class CampaignActivity {
  CampaignActivity({
    required this.activityId,
    required this.activityName,
    required this.token,
    required this.campaignBanners,
    required this.campaignTiers,
  });

  final String activityId;
  final String activityName;
  final Token token;
  final List<CampaignBanner> campaignBanners;
  final List<CampaignTier> campaignTiers;
}

class CampaignBanner {
  CampaignBanner({
    required this.imageName,
    required this.imageLink,
  });

  final String imageName;
  final String imageLink;
}

class CampaignTier {
  CampaignTier({
    required this.id,
    required this.details,
    required this.slots,
    required this.slotsUsed,
  });

  final String id;
  final String details;
  final String slots;
  final String slotsUsed;
}

class CampaignParticipant {
  CampaignParticipant({
    required this.tierId,
    required this.participantId,
    required this.rewardClaimed,
  });

  final String tierId;
  final String participantId;
  final bool rewardClaimed;
}
