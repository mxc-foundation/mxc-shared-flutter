class CampaignActivity {
  CampaignActivity({
    required this.activityId,
    required this.activityName,
    required this.campaignBanners,
    required this.campaignTiers,
  });

  final String activityId;
  final String activityName;
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
