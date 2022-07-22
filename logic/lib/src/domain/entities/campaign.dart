import 'package:mxc_logic/mxc_logic.dart';

class Campaign {
  Campaign({
    required this.campaignId,
    required this.campaignName,
    required this.campaignType,
    required this.token,
    required this.campaignBanners,
    required this.campaignTiers,
  });

  final int campaignId;
  final String campaignName;
  final String campaignType;
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
    required this.amount,
    required this.lockPeriod,
    required this.monthlyRate,
    required this.reward,
    required this.imageLink,
    required this.slots,
    required this.slotsUsed,
  });

  final int id;
  final int amount;
  final int lockPeriod;
  final double monthlyRate;
  final String reward;
  final String imageLink;
  final int slots;
  final int slotsUsed;
}

class CampaignParticipant {
  CampaignParticipant({
    required this.tierId,
    required this.participantId,
    required this.rewardClaimed,
  });

  final int tierId;
  final int participantId;
  final bool rewardClaimed;
}

class CampaignParticipateResult {
  CampaignParticipateResult({
    required this.participantId,
    required this.transactionId,
  });

  final int participantId;
  final int transactionId;
}
