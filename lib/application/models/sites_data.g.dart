// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sites_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SitesResponseImpl _$$SitesResponseImplFromJson(Map<String, dynamic> json) =>
    _$SitesResponseImpl(
      sites: (json['sites'] as List<dynamic>)
          .map((e) => Site.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SitesResponseImplToJson(_$SitesResponseImpl instance) =>
    <String, dynamic>{
      'sites': instance.sites,
    };

_$SiteImpl _$$SiteImplFromJson(Map<String, dynamic> json) => _$SiteImpl(
      id: json['id'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      marketValue: json['marketValue'] as String,
      reservePrice: json['reservePrice'] as String,
      outbid: json['outbid'] as String,
      active: json['active'] as String,
      winning: json['winning'] as String,
      image: json['image'] as String,
      winningBid: json['winningBid'] as String,
      activeBid: json['activeBid'] as String,
      outbidBid: json['outbidBid'] as String,
    );

Map<String, dynamic> _$$SiteImplToJson(_$SiteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'marketValue': instance.marketValue,
      'reservePrice': instance.reservePrice,
      'outbid': instance.outbid,
      'active': instance.active,
      'winning': instance.winning,
      'image': instance.image,
      'winningBid': instance.winningBid,
      'activeBid': instance.activeBid,
      'outbidBid': instance.outbidBid,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['street'] as String,
      city: json['city'] as String,
      zipCode: json['zipCode'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'zipCode': instance.zipCode,
    };
