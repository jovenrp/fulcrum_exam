// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sites_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SitesResponse _$SitesResponseFromJson(Map<String, dynamic> json) {
  return _SitesResponse.fromJson(json);
}

/// @nodoc
mixin _$SitesResponse {
  List<Site> get sites => throw _privateConstructorUsedError;

  /// Serializes this SitesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SitesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SitesResponseCopyWith<SitesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SitesResponseCopyWith<$Res> {
  factory $SitesResponseCopyWith(
          SitesResponse value, $Res Function(SitesResponse) then) =
      _$SitesResponseCopyWithImpl<$Res, SitesResponse>;
  @useResult
  $Res call({List<Site> sites});
}

/// @nodoc
class _$SitesResponseCopyWithImpl<$Res, $Val extends SitesResponse>
    implements $SitesResponseCopyWith<$Res> {
  _$SitesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SitesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
  }) {
    return _then(_value.copyWith(
      sites: null == sites
          ? _value.sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<Site>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SitesResponseImplCopyWith<$Res>
    implements $SitesResponseCopyWith<$Res> {
  factory _$$SitesResponseImplCopyWith(
          _$SitesResponseImpl value, $Res Function(_$SitesResponseImpl) then) =
      __$$SitesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Site> sites});
}

/// @nodoc
class __$$SitesResponseImplCopyWithImpl<$Res>
    extends _$SitesResponseCopyWithImpl<$Res, _$SitesResponseImpl>
    implements _$$SitesResponseImplCopyWith<$Res> {
  __$$SitesResponseImplCopyWithImpl(
      _$SitesResponseImpl _value, $Res Function(_$SitesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SitesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
  }) {
    return _then(_$SitesResponseImpl(
      sites: null == sites
          ? _value._sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<Site>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SitesResponseImpl implements _SitesResponse {
  const _$SitesResponseImpl({required final List<Site> sites}) : _sites = sites;

  factory _$SitesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SitesResponseImplFromJson(json);

  final List<Site> _sites;
  @override
  List<Site> get sites {
    if (_sites is EqualUnmodifiableListView) return _sites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sites);
  }

  @override
  String toString() {
    return 'SitesResponse(sites: $sites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SitesResponseImpl &&
            const DeepCollectionEquality().equals(other._sites, _sites));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sites));

  /// Create a copy of SitesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SitesResponseImplCopyWith<_$SitesResponseImpl> get copyWith =>
      __$$SitesResponseImplCopyWithImpl<_$SitesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SitesResponseImplToJson(
      this,
    );
  }
}

abstract class _SitesResponse implements SitesResponse {
  const factory _SitesResponse({required final List<Site> sites}) =
      _$SitesResponseImpl;

  factory _SitesResponse.fromJson(Map<String, dynamic> json) =
      _$SitesResponseImpl.fromJson;

  @override
  List<Site> get sites;

  /// Create a copy of SitesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SitesResponseImplCopyWith<_$SitesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Site _$SiteFromJson(Map<String, dynamic> json) {
  return _Site.fromJson(json);
}

/// @nodoc
mixin _$Site {
  String get id => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  String get marketValue => throw _privateConstructorUsedError;
  String get reservePrice => throw _privateConstructorUsedError;
  String get outbid => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;
  String get winning => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get winningBid => throw _privateConstructorUsedError;
  String get activeBid => throw _privateConstructorUsedError;
  String get outbidBid => throw _privateConstructorUsedError;

  /// Serializes this Site to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteCopyWith<Site> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCopyWith<$Res> {
  factory $SiteCopyWith(Site value, $Res Function(Site) then) =
      _$SiteCopyWithImpl<$Res, Site>;
  @useResult
  $Res call(
      {String id,
      Address address,
      String marketValue,
      String reservePrice,
      String outbid,
      String active,
      String winning,
      String image,
      String winningBid,
      String activeBid,
      String outbidBid});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$SiteCopyWithImpl<$Res, $Val extends Site>
    implements $SiteCopyWith<$Res> {
  _$SiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? marketValue = null,
    Object? reservePrice = null,
    Object? outbid = null,
    Object? active = null,
    Object? winning = null,
    Object? image = null,
    Object? winningBid = null,
    Object? activeBid = null,
    Object? outbidBid = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      marketValue: null == marketValue
          ? _value.marketValue
          : marketValue // ignore: cast_nullable_to_non_nullable
              as String,
      reservePrice: null == reservePrice
          ? _value.reservePrice
          : reservePrice // ignore: cast_nullable_to_non_nullable
              as String,
      outbid: null == outbid
          ? _value.outbid
          : outbid // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      winning: null == winning
          ? _value.winning
          : winning // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      winningBid: null == winningBid
          ? _value.winningBid
          : winningBid // ignore: cast_nullable_to_non_nullable
              as String,
      activeBid: null == activeBid
          ? _value.activeBid
          : activeBid // ignore: cast_nullable_to_non_nullable
              as String,
      outbidBid: null == outbidBid
          ? _value.outbidBid
          : outbidBid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiteImplCopyWith<$Res> implements $SiteCopyWith<$Res> {
  factory _$$SiteImplCopyWith(
          _$SiteImpl value, $Res Function(_$SiteImpl) then) =
      __$$SiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Address address,
      String marketValue,
      String reservePrice,
      String outbid,
      String active,
      String winning,
      String image,
      String winningBid,
      String activeBid,
      String outbidBid});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$SiteImplCopyWithImpl<$Res>
    extends _$SiteCopyWithImpl<$Res, _$SiteImpl>
    implements _$$SiteImplCopyWith<$Res> {
  __$$SiteImplCopyWithImpl(_$SiteImpl _value, $Res Function(_$SiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? marketValue = null,
    Object? reservePrice = null,
    Object? outbid = null,
    Object? active = null,
    Object? winning = null,
    Object? image = null,
    Object? winningBid = null,
    Object? activeBid = null,
    Object? outbidBid = null,
  }) {
    return _then(_$SiteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      marketValue: null == marketValue
          ? _value.marketValue
          : marketValue // ignore: cast_nullable_to_non_nullable
              as String,
      reservePrice: null == reservePrice
          ? _value.reservePrice
          : reservePrice // ignore: cast_nullable_to_non_nullable
              as String,
      outbid: null == outbid
          ? _value.outbid
          : outbid // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      winning: null == winning
          ? _value.winning
          : winning // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      winningBid: null == winningBid
          ? _value.winningBid
          : winningBid // ignore: cast_nullable_to_non_nullable
              as String,
      activeBid: null == activeBid
          ? _value.activeBid
          : activeBid // ignore: cast_nullable_to_non_nullable
              as String,
      outbidBid: null == outbidBid
          ? _value.outbidBid
          : outbidBid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteImpl implements _Site {
  const _$SiteImpl(
      {required this.id,
      required this.address,
      required this.marketValue,
      required this.reservePrice,
      required this.outbid,
      required this.active,
      required this.winning,
      required this.image,
      required this.winningBid,
      required this.activeBid,
      required this.outbidBid});

  factory _$SiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteImplFromJson(json);

  @override
  final String id;
  @override
  final Address address;
  @override
  final String marketValue;
  @override
  final String reservePrice;
  @override
  final String outbid;
  @override
  final String active;
  @override
  final String winning;
  @override
  final String image;
  @override
  final String winningBid;
  @override
  final String activeBid;
  @override
  final String outbidBid;

  @override
  String toString() {
    return 'Site(id: $id, address: $address, marketValue: $marketValue, reservePrice: $reservePrice, outbid: $outbid, active: $active, winning: $winning, image: $image, winningBid: $winningBid, activeBid: $activeBid, outbidBid: $outbidBid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.marketValue, marketValue) ||
                other.marketValue == marketValue) &&
            (identical(other.reservePrice, reservePrice) ||
                other.reservePrice == reservePrice) &&
            (identical(other.outbid, outbid) || other.outbid == outbid) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.winning, winning) || other.winning == winning) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.winningBid, winningBid) ||
                other.winningBid == winningBid) &&
            (identical(other.activeBid, activeBid) ||
                other.activeBid == activeBid) &&
            (identical(other.outbidBid, outbidBid) ||
                other.outbidBid == outbidBid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      address,
      marketValue,
      reservePrice,
      outbid,
      active,
      winning,
      image,
      winningBid,
      activeBid,
      outbidBid);

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteImplCopyWith<_$SiteImpl> get copyWith =>
      __$$SiteImplCopyWithImpl<_$SiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteImplToJson(
      this,
    );
  }
}

abstract class _Site implements Site {
  const factory _Site(
      {required final String id,
      required final Address address,
      required final String marketValue,
      required final String reservePrice,
      required final String outbid,
      required final String active,
      required final String winning,
      required final String image,
      required final String winningBid,
      required final String activeBid,
      required final String outbidBid}) = _$SiteImpl;

  factory _Site.fromJson(Map<String, dynamic> json) = _$SiteImpl.fromJson;

  @override
  String get id;
  @override
  Address get address;
  @override
  String get marketValue;
  @override
  String get reservePrice;
  @override
  String get outbid;
  @override
  String get active;
  @override
  String get winning;
  @override
  String get image;
  @override
  String get winningBid;
  @override
  String get activeBid;
  @override
  String get outbidBid;

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteImplCopyWith<_$SiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String street, String city, String zipCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String street, String city, String zipCode});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_$AddressImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.street, required this.city, required this.zipCode});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String street;
  @override
  final String city;
  @override
  final String zipCode;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, zipCode);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String street,
      required final String city,
      required final String zipCode}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get street;
  @override
  String get city;
  @override
  String get zipCode;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
