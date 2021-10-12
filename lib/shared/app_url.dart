class AppUri {
  static const String _movieApiUrl =
      'https://hmlg-logistics-mobile-driver-cnbi5ucx.ue.gateway.dev/api/v1';

  static const String _token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3d3dy5tZXJ5dG8uY29tLmJyLyIsImlhdCI6MTYzMzUzMjMwOSwibmJmIjoxNjMzNTMyMzA5LCJleHAiOjE2MzQxMzcxMDksImRhdGEiOnsidXNlciI6eyJpZCI6IjUwMCJ9fX0.cckvTtvCETxRSjqXKTWZeDNUDD-Ntc-nDVJ0H40x8dw';

  static baseUri() => _movieApiUrl;

  String isUser() => '/users-me';

  String isPendency() => '/driver-pendency';

  String isShipments() => '/load-truck';

  Map<String, String> isHeadersToken() => {'Authorization': 'Bearer $_token'};
}
