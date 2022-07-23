import 'package:mxc_logic/mxc_logic.dart';

class Campaign {
  Campaign({
    required this.campaignId,
    required this.campaignName,
    required this.campaignType,
    required this.token,
    required this.bannerImage,
    required this.campaignTiers,
    required this.participated,
    required this.rewardClaimed,
    this.participant,
  });

  final int campaignId;
  final String campaignName;
  final String campaignType;
  final Token token;
  final String bannerImage;
  final List<CampaignTier> campaignTiers;
  final bool participated;
  final bool rewardClaimed;
  final CampaignParticipant? participant;
}

class CampaignBanner {
  CampaignBanner({
    required this.imageLink,
  });

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
  });

  final int tierId;
  final int participantId;
}

class CampaignParticipantEmpty extends CampaignParticipant {
  CampaignParticipantEmpty()
      : super(
          tierId: -1,
          participantId: -1,
        );
}

class CampaignParticipateResult {
  CampaignParticipateResult({
    required this.participantId,
    required this.transactionId,
  });

  final int participantId;
  final int transactionId;
}
