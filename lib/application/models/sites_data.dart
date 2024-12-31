import 'package:freezed_annotation/freezed_annotation.dart';

part 'sites_data.freezed.dart';
part 'sites_data.g.dart';

@freezed
class SitesResponse with _$SitesResponse {
  const factory SitesResponse({
    required List<Site> sites,
  }) = _SitesResponse;

  factory SitesResponse.fromJson(Map<String, dynamic> json) =>
      _$SitesResponseFromJson(json);
}

@freezed
class Site with _$Site {
  const factory Site({
    required String id,
    required Address address,
    required String marketValue,
    required String reservePrice,
    required String outbid,
    required String active,
    required String winning,
    required String image,
    required String winningBid,
    required String activeBid,
    required String outbidBid,
  }) = _Site;

  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required String street,
    required String city,
    required String zipCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
