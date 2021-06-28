class FeatureInfo {

  String header;
  String description;
  int group; // 0 - Headline, 1 - Featured Events, 2 - Initiatives Text
  int i; // feature number in group

  List<String> headlineHeaders = [
    "Headline 1",
    "Headline 2",
    "Headline 3",
    "Headline 4",
    "Headline 5",
    "Headline 6",
  ];

  List<String> headlineDescriptions = [
    "Short Body Text 1: Habitasse elementum mauris. Elementum mauris diam, placerat aliquam viverra hendrerit.",
    "Short Body Text 2: Habitasse elementum mauris. Elementum mauris diam, placerat aliquam viverra hendrerit.",
    "Short Body Text 3: Habitasse elementum mauris. Elementum mauris diam, placerat aliquam viverra hendrerit.",
    "Short Body Text 4: Habitasse elementum mauris. Elementum mauris diam, placerat aliquam viverra hendrerit.",
    "Short Body Text 5: Habitasse elementum mauris. Elementum mauris diam, placerat aliquam viverra hendrerit.",
    "Short Body Text 6: Habitasse elementum mauris. Elementum mauris diam, placerat aliquam viverra hendrerit.",
  ];

  List<String> featuredEventsHeaders = [
    "Featured Events 1",
    "Featured Events 2",
    "Featured Events 3",
    "Featured Events 4",
  ];

  List<String> featuredEventsDescriptions = [
    "Short Body Text 1: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 2: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 3: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 4: Habitasse elementum mauris. Elementum mauris diam.",
  ];

  List<String> initiativesTextHeaders = [
    "Initiatives Text 1",
    "Initiatives Text 2",
  ];

  List<String> initiativesTextDescriptions = [
    "Short Body Text 1: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 2: Habitasse elementum mauris. Elementum mauris diam.",
  ];

  FeatureInfo({ this.group, this.i });

  void getInfo() {
    if(group == 0) {
      header = headlineHeaders[i];
      description = headlineDescriptions[i];
    } else if(group == 1) {
      header = featuredEventsHeaders[i];
      description = featuredEventsDescriptions[i];
    } else if(group == 2) {
      header = initiativesTextHeaders[i];
      description = initiativesTextDescriptions[i];
    }
  }

  int getLength() {
    if(group == 0) {
      return headlineHeaders.length;
    } else if(group == 1) {
      return featuredEventsHeaders.length;
    } else if(group == 2) {
      return initiativesTextHeaders.length;
    } else {
      return 0;
    }
  }
}