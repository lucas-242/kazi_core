import 'package:kazi_core/models/service.dart';

class RouteParams {
  const RouteParams({
    this.service,
    this.token,
    this.webViewParams,
  });

  final Service? service;
  final String? token;
  final WebViewParams? webViewParams;
}

class WebViewParams {
  WebViewParams(this.title, this.url);

  final String title;
  final String url;
}
