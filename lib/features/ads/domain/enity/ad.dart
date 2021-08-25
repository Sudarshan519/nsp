abstract class AdContract {
  int getRefreshTime();
  int getPriority();
  String getAPIKey();
}

class Ads {
  Admob? admob;
  WalletAd? walletAd;
  FacebookAd? facebookAd;

  Ads({this.admob, this.walletAd, this.facebookAd});
  Ads.fromJson(Map<String, dynamic> json) {
    admob = json['admob'] != null
        ? Admob.fromJson(json['admob'] as Map<String, dynamic>)
        : null;
    walletAd = json['walletAd'] != null
        ? WalletAd.fromJson(json['walletAd'] as Map<String, dynamic>)
        : null;
    facebookAd = json['facebookAd'] != null
        ? FacebookAd.fromJson(json['facebookAd'] as Map<String, dynamic>)
        : null;
  }
}

class Admob implements AdContract {
  Banner? banner;
  int? priority;
  Banner? interstitial;
  Banner? nativeAdvanced;

  Admob({this.banner, this.priority, this.interstitial, this.nativeAdvanced});

  Admob.fromJson(Map<String, dynamic> json) {
    banner = json['banner'] != null
        ? Banner.fromJson(json['banner'] as Map<String, dynamic>)
        : null;
    priority = (json['priority'] as int?) ?? 0;
    interstitial = json['interstitial'] != null
        ? Banner.fromJson(json['interstitial'] as Map<String, dynamic>)
        : null;
    nativeAdvanced = json['native-advanced'] != null
        ? Banner.fromJson(json['native-advanced'] as Map<String, dynamic>)
        : null;
  }

  @override
  String getAPIKey() {
    return banner?.name ?? '';
  }

  @override
  int getPriority() {
    return priority ?? 0;
  }

  @override
  int getRefreshTime() {
    return banner?.refreshTime ?? 0;
  }
}

class Banner {
  String? name;
  bool? status;
  int? refreshTime;

  Banner({this.name, this.status, this.refreshTime});

  Banner.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    status = (json['status'] as bool?) ?? false;
    refreshTime = (json['refresh_time'] as int?) ?? 0;
  }
}

class WalletAd {
  Banner? overlay;
  int? priority;
  Banner? grid;
  Banner? banner;

  WalletAd({this.overlay, this.priority, this.grid, this.banner});

  WalletAd.fromJson(Map<String, dynamic> json) {
    overlay = json['overlay'] != null
        ? Banner.fromJson(json['overlay'] as Map<String, dynamic>)
        : null;
    priority = (json['priority'] as int?) ?? 0;
    grid = json['grid'] != null
        ? Banner.fromJson(json['grid'] as Map<String, dynamic>)
        : null;
    banner = json['banner'] != null
        ? Banner.fromJson(json['banner'] as Map<String, dynamic>)
        : null;
  }
}

class FacebookAd implements AdContract {
  Banner? overlay;
  int? priority;

  FacebookAd({this.overlay, this.priority});

  FacebookAd.fromJson(Map<String, dynamic> json) {
    overlay = json['overlay'] != null
        ? Banner.fromJson(json['overlay'] as Map<String, dynamic>)
        : null;
    priority = (json['priority'] as int?) ?? 0;
  }

  @override
  String getAPIKey() {
    return overlay?.name ?? '';
  }

  @override
  int getPriority() {
    return priority ?? 0;
  }

  @override
  int getRefreshTime() {
    return overlay?.refreshTime ?? 0;
  }
}
