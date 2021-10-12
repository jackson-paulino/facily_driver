class UserDriverModel {
  final String id;
  final String capKey;
  final CapsModel? capsModel;
  final DataModel? dataModel;
  final List<String> rolesModel;

  UserDriverModel(
      {required this.id,
      required this.capKey,
      this.capsModel,
      this.dataModel,
      required this.rolesModel});

  factory UserDriverModel.fromJson(Map<String, dynamic> json) {
    return UserDriverModel(
      id: json['ID'],
      capKey: json['cap_key'],
      capsModel: json['caps'] != null ? CapsModel.fromJson(json['caps']) : null,
      dataModel: json['data'] != null ? DataModel.fromJson(json['data']) : null,
      rolesModel: json['roles'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = id;
    data['cap_key'] = capKey;
    if (capsModel != null) {
      data['caps'] = capsModel!.toJson();
    }
    if (data.isNotEmpty) {
      data['data'] = dataModel!.toJson();
    }
    data['roles'] = rolesModel;
    return data;
  }
}

class CapsModel {
  final bool administrator;
  final bool expedition;
  final bool expeditionAdmin;
  final bool expeditionChecker;
  final bool expeditionDefault;
  final bool expeditionDispatcher;
  final bool expeditionOrganizer;
  final bool expeditionSeparator;
  final bool facilyMerchants;
  final bool logisticAdmin;
  final bool logisticTransport;
  final bool pickupLogistic;
  final bool pickupLogisticDriver;
  final bool production;
  final bool supportAgent;

  CapsModel(
      {required this.administrator,
      required this.expedition,
      required this.expeditionAdmin,
      required this.expeditionChecker,
      required this.expeditionDefault,
      required this.expeditionDispatcher,
      required this.expeditionOrganizer,
      required this.expeditionSeparator,
      required this.facilyMerchants,
      required this.logisticAdmin,
      required this.logisticTransport,
      required this.pickupLogistic,
      required this.pickupLogisticDriver,
      required this.production,
      required this.supportAgent});

  factory CapsModel.fromJson(Map<String, dynamic> json) {
    return CapsModel(
      administrator: json['administrator'],
      expedition: json['expedition'],
      expeditionAdmin: json['expedition_admin'],
      expeditionChecker: json['expedition_checker'],
      expeditionDefault: json['expedition_default'],
      expeditionDispatcher: json['expedition_dispatcher'],
      expeditionOrganizer: json['expedition_organizer'],
      expeditionSeparator: json['expedition_separator'],
      facilyMerchants: json['facily_merchants'],
      logisticAdmin: json['logistic_admin'],
      logisticTransport: json['logistic_transport'],
      pickupLogistic: json['pickup_logistic'],
      pickupLogisticDriver: json['pickup_logistic_driver'],
      production: json['production'],
      supportAgent: json['support_agent'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['administrator'] = administrator;
    data['expedition'] = expedition;
    data['expedition_admin'] = expeditionAdmin;
    data['expedition_checker'] = expeditionChecker;
    data['expedition_default'] = expeditionDefault;
    data['expedition_dispatcher'] = expeditionDispatcher;
    data['expedition_organizer'] = expeditionOrganizer;
    data['expedition_separator'] = expeditionSeparator;
    data['facily_merchants'] = facilyMerchants;
    data['logistic_admin'] = logisticAdmin;
    data['logistic_transport'] = logisticTransport;
    data['pickup_logistic'] = pickupLogistic;
    data['pickup_logistic_driver'] = pickupLogisticDriver;
    data['production'] = production;
    data['support_agent'] = supportAgent;
    return data;
  }
}

class DataModel {
  final String id;
  final AddressModel? addressModel;
  final String avatar;
  final String birthdate;
  final String cpf;
  final String displayName;
  final String firstName;
  final String lastName;
  final PhoneModel? phoneModel;
  final PreferredAddressModel? preferredAddressModel;
  final String rateAsBeautyVendor;
  final String rateAsUser;
  final String refCode;
  final String userActivationKey;
  final String userEmail;
  final String userLogin;
  final String userNicename;
  final String userRegistered;
  final String userStatus;
  final String userUrl;

  DataModel(
      {required this.id,
      this.addressModel,
      required this.avatar,
      required this.birthdate,
      required this.cpf,
      required this.displayName,
      required this.firstName,
      required this.lastName,
      this.phoneModel,
      this.preferredAddressModel,
      required this.rateAsBeautyVendor,
      required this.rateAsUser,
      required this.refCode,
      required this.userActivationKey,
      required this.userEmail,
      required this.userLogin,
      required this.userNicename,
      required this.userRegistered,
      required this.userStatus,
      required this.userUrl});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json['ID'],
      addressModel: json['address'] != null
          ? AddressModel.fromJson(json['address'])
          : null,
      avatar: json['avatar'],
      birthdate: json['birthdate'],
      cpf: json['cpf'],
      displayName: json['display_name'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      phoneModel:
          json['phone'] != null ? PhoneModel.fromJson(json['phone']) : null,
      preferredAddressModel: json['preferred_address'] != null
          ? PreferredAddressModel.fromJson(json['preferred_address'])
          : null,
      rateAsBeautyVendor: json['rate_as_beauty_vendor'],
      rateAsUser: json['rate_as_user'],
      refCode: json['ref_code'],
      userActivationKey: json['user_activation_key'],
      userEmail: json['user_email'],
      userLogin: json['user_login'],
      userNicename: json['user_nicename'],
      userRegistered: json['user_registered'],
      userStatus: json['user_status'],
      userUrl: json['user_url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = id;
    if (addressModel != null) {
      data['address'] = addressModel!.toJson();
    }
    data['avatar'] = avatar;
    data['birthdate'] = birthdate;
    data['cpf'] = cpf;
    data['display_name'] = displayName;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    if (phoneModel != null) {
      data['phone'] = phoneModel!.toJson();
    }
    if (preferredAddressModel != null) {
      data['preferred_address'] = preferredAddressModel!.toJson();
    }
    data['rate_as_beauty_vendor'] = rateAsBeautyVendor;
    data['rate_as_user'] = rateAsUser;
    data['ref_code'] = refCode;
    data['user_activation_key'] = userActivationKey;
    data['user_email'] = userEmail;
    data['user_login'] = userLogin;
    data['user_nicename'] = userNicename;
    data['user_registered'] = userRegistered;
    data['user_status'] = userStatus;
    data['user_url'] = userUrl;
    return data;
  }
}

class AddressModel {
  final String address1;
  final String address2;
  final String city;
  final String country;
  final String neighborhood;
  final String number;
  final String postcode;
  final String state;

  AddressModel(
      {required this.address1,
      required this.address2,
      required this.city,
      required this.country,
      required this.neighborhood,
      required this.number,
      required this.postcode,
      required this.state});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      address1: json['address_1'],
      address2: json['address_2'],
      city: json['city'],
      country: json['country'],
      neighborhood: json['neighborhood'],
      number: json['number'],
      postcode: json['postcode'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address_1'] = address1;
    data['address_2'] = address2;
    data['city'] = city;
    data['country'] = country;
    data['neighborhood'] = neighborhood;
    data['number'] = number;
    data['postcode'] = postcode;
    data['state'] = state;
    return data;
  }
}

class PhoneModel {
  final String areaCode;
  final String countryCode;
  final String number;

  PhoneModel(
      {required this.areaCode,
      required this.countryCode,
      required this.number});

  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      areaCode: json['area_code'],
      countryCode: json['country_code'],
      number: json['number'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['area_code'] = areaCode;
    data['country_code'] = countryCode;
    data['number'] = number;
    return data;
  }
}

class PreferredAddressModel {
  final String address1;
  final String address2;
  final String city;
  final String country;
  final String neighborhood;
  final String number;
  final String state;

  PreferredAddressModel(
      {required this.address1,
      required this.address2,
      required this.city,
      required this.country,
      required this.neighborhood,
      required this.number,
      required this.state});

  factory PreferredAddressModel.fromJson(Map<String, dynamic> json) {
    return PreferredAddressModel(
      address1: json['address_1'],
      address2: json['address_2'],
      city: json['city'],
      country: json['country'],
      neighborhood: json['neighborhood'],
      number: json['number'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address_1'] = address1;
    data['address_2'] = address2;
    data['city'] = city;
    data['country'] = country;
    data['neighborhood'] = neighborhood;
    data['number'] = number;
    data['state'] = state;
    return data;
  }
}
