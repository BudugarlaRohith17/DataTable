class Data {
  final int? count;
  final List<Inquiries>? inquiries;

  Data({
    this.count,
    this.inquiries,
  });

  Data.fromJson(Map<String, dynamic> json)
      : count = json['count'] as int?,
        inquiries = (json['inquiries'] as List?)?.map((dynamic e) => Inquiries.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'count' : count,
    'inquiries' : inquiries?.map((e) => e.toJson()).toList()
  };
}

class Inquiries {
  final CurrentStatus? currentStatus;
  final dynamic referenceNumber;
  final dynamic erpData;
  final bool? isBooked;
  final dynamic shipmentId;
  final dynamic inquiryFeedback;
  final dynamic salesCoordinator;
  final SalesUser? salesUser;
  final ShipperUser? shipperUser;
  final dynamic pricingUser;
  final dynamic rfqData;
  final String? inquiryTrigger;
  final String? quoteId;
  final String? quoteNumber;
  final dynamic shipmentNumber;
  final bool? isDeleted;
  final dynamic deletedBy;
  final dynamic deletedAt;
  final String? id;
  final String? inquiryNumber;
  final String? searchId;
  final SearchData? searchData;
  final User? user;
  final String? inquirySource;
  final String? inquiryRaisedBy;
  final String? activity;
  final String? status;
  final String? inquiryExpiryDate;
  final String? createdAt;
  final String? updateAt;
  final int? v;
  final AdditionalCharges? additionalCharges;

  Inquiries({
    this.currentStatus,
    this.referenceNumber,
    this.erpData,
    this.isBooked,
    this.shipmentId,
    this.inquiryFeedback,
    this.salesCoordinator,
    this.salesUser,
    this.shipperUser,
    this.pricingUser,
    this.rfqData,
    this.inquiryTrigger,
    this.quoteId,
    this.quoteNumber,
    this.shipmentNumber,
    this.isDeleted,
    this.deletedBy,
    this.deletedAt,
    this.id,
    this.inquiryNumber,
    this.searchId,
    this.searchData,
    this.user,
    this.inquirySource,
    this.inquiryRaisedBy,
    this.activity,
    this.status,
    this.inquiryExpiryDate,
    this.createdAt,
    this.updateAt,
    this.v,
    this.additionalCharges,
  });

  Inquiries.fromJson(Map<String, dynamic> json)
      : currentStatus = (json['current_status'] as Map<String,dynamic>?) != null ? CurrentStatus.fromJson(json['current_status'] as Map<String,dynamic>) : null,
        referenceNumber = json['reference_number'],
        erpData = json['erp_data'],
        isBooked = json['is_booked'] as bool?,
        shipmentId = json['shipment_id'],
        inquiryFeedback = json['inquiry_feedback'],
        salesCoordinator = json['sales_coordinator'],
        salesUser = (json['sales_user'] as Map<String,dynamic>?) != null ? SalesUser.fromJson(json['sales_user'] as Map<String,dynamic>) : null,
        shipperUser = (json['shipper_user'] as Map<String,dynamic>?) != null ? ShipperUser.fromJson(json['shipper_user'] as Map<String,dynamic>) : null,
        pricingUser = json['pricing_user'],
        rfqData = json['rfq_data'],
        inquiryTrigger = json['inquiry_trigger'] as String?,
        quoteId = json['quote_id'] as String?,
        quoteNumber = json['quote_number'] as String?,
        shipmentNumber = json['shipment_number'],
        isDeleted = json['is_deleted'] as bool?,
        deletedBy = json['deleted_by'],
        deletedAt = json['deleted_at'],
        id = json['_id'] as String?,
        inquiryNumber = json['inquiry_number'] as String?,
        searchId = json['search_id'] as String?,
        searchData = (json['search_data'] as Map<String,dynamic>?) != null ? SearchData.fromJson(json['search_data'] as Map<String,dynamic>) : null,
        user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null,
        inquirySource = json['inquiry_source'] as String?,
        inquiryRaisedBy = json['inquiry_raised_by'] as String?,
        activity = json['activity'] as String?,
        status = json['status'] as String?,
        inquiryExpiryDate = json['inquiry_expiry_date'] as String?,
        createdAt = json['created_at'] as String?,
        updateAt = json['update_at'] as String?,
        v = json['__v'] as int?,
        additionalCharges = (json['additional_charges'] as Map<String,dynamic>?) != null ? AdditionalCharges.fromJson(json['additional_charges'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'current_status' : currentStatus?.toJson(),
    'reference_number' : referenceNumber,
    'erp_data' : erpData,
    'is_booked' : isBooked,
    'shipment_id' : shipmentId,
    'inquiry_feedback' : inquiryFeedback,
    'sales_coordinator' : salesCoordinator,
    'sales_user' : salesUser?.toJson(),
    'shipper_user' : shipperUser?.toJson(),
    'pricing_user' : pricingUser,
    'rfq_data' : rfqData,
    'inquiry_trigger' : inquiryTrigger,
    'quote_id' : quoteId,
    'quote_number' : quoteNumber,
    'shipment_number' : shipmentNumber,
    'is_deleted' : isDeleted,
    'deleted_by' : deletedBy,
    'deleted_at' : deletedAt,
    '_id' : id,
    'inquiry_number' : inquiryNumber,
    'search_id' : searchId,
    'search_data' : searchData?.toJson(),
    'user' : user?.toJson(),
    'inquiry_source' : inquirySource,
    'inquiry_raised_by' : inquiryRaisedBy,
    'activity' : activity,
    'status' : status,
    'inquiry_expiry_date' : inquiryExpiryDate,
    'created_at' : createdAt,
    'update_at' : updateAt,
    '__v' : v,
    'additional_charges' : additionalCharges?.toJson()
  };
}

class CurrentStatus {
  final dynamic description;
  final dynamic comment;
  final User? user;
  final String? statusAlias;
  final String? status;
  final String? colorCode;
  final String? createdOn;

  CurrentStatus({
    this.description,
    this.comment,
    this.user,
    this.statusAlias,
    this.status,
    this.colorCode,
    this.createdOn,
  });

  CurrentStatus.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        comment = json['comment'],
        user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null,
        statusAlias = json['status_alias'] as String?,
        status = json['status'] as String?,
        colorCode = json['color_code'] as String?,
        createdOn = json['created_on'] as String?;

  Map<String, dynamic> toJson() => {
    'description' : description,
    'comment' : comment,
    'user' : user?.toJson(),
    'status_alias' : statusAlias,
    'status' : status,
    'color_code' : colorCode,
    'created_on' : createdOn
  };
}

class User {
  final String? id;
  final String? userType;
  final String? email;
  final String? userMobile;
  final String? userMobileCode;
  final String? userMobileCountry;
  final dynamic userAlternateNumber;
  final String? userFirstName;
  final String? userLastName;
  final dynamic userDob;
  final int? activeStatus;
  final String? createdAt;
  final String? userCompanyId;
  final String? userCompanyName;
  final String? createdBy;
  final dynamic userRegionId;
  final String? userBaseCurrency;
  final dynamic userAddress;
  final int? isGodUser;
  final int? isSuperUser;
  final dynamic profile;
  final String? domain;
  final int? advancedSearch;
  final int? allowPersonalEmail;
  final String? personalEmailId;
  final int? sendCc;
  final String? emailSignature;
  final int? emailSignatureRequired;
  final List<String>? ccEmail;
  final String? roleId;
  final dynamic team;
  final dynamic tags;
  final dynamic locations;
  final String? department;
  final String? designation;
  final int? teamManager;
  final int? approvalRequired;
  final dynamic accessKey;
  final dynamic approvalRequiredBy;
  final int? otp;
  final dynamic otpExpiry;
  final int? isSalesCordinator;
  final dynamic erpData;
  final int? isPricingUser;
  final String? customerProfileCode;
  final String? salesCallCode;
  final String? ctcId;
  final dynamic branchId;
  final String? salespersonCode;
  final int? erpAssignedShipperFetched;
  final int? erpAssignedSalesUserFetched;
  final int? allowEdit;
  final int? autoInquiryFcl;
  final int? autoInquiryLcl;
  final int? autoInquiryAir;
  final String? source;
  final Company? company;
  final Role? role;
  final Type? type;

  User({
    this.id,
    this.userType,
    this.email,
    this.userMobile,
    this.userMobileCode,
    this.userMobileCountry,
    this.userAlternateNumber,
    this.userFirstName,
    this.userLastName,
    this.userDob,
    this.activeStatus,
    this.createdAt,
    this.userCompanyId,
    this.userCompanyName,
    this.createdBy,
    this.userRegionId,
    this.userBaseCurrency,
    this.userAddress,
    this.isGodUser,
    this.isSuperUser,
    this.profile,
    this.domain,
    this.advancedSearch,
    this.allowPersonalEmail,
    this.personalEmailId,
    this.sendCc,
    this.emailSignature,
    this.emailSignatureRequired,
    this.ccEmail,
    this.roleId,
    this.team,
    this.tags,
    this.locations,
    this.department,
    this.designation,
    this.teamManager,
    this.approvalRequired,
    this.accessKey,
    this.approvalRequiredBy,
    this.otp,
    this.otpExpiry,
    this.isSalesCordinator,
    this.erpData,
    this.isPricingUser,
    this.customerProfileCode,
    this.salesCallCode,
    this.ctcId,
    this.branchId,
    this.salespersonCode,
    this.erpAssignedShipperFetched,
    this.erpAssignedSalesUserFetched,
    this.allowEdit,
    this.autoInquiryFcl,
    this.autoInquiryLcl,
    this.autoInquiryAir,
    this.source,
    this.company,
    this.role,
    this.type,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        userType = json['user_type'] as String?,
        email = json['email'] as String?,
        userMobile = json['user_mobile'] as String?,
        userMobileCode = json['user_mobile_code'] as String?,
        userMobileCountry = json['user_mobile_country'] as String?,
        userAlternateNumber = json['user_alternate_number'],
        userFirstName = json['user_first_name'] as String?,
        userLastName = json['user_last_name'] as String?,
        userDob = json['user_dob'],
        activeStatus = json['active_status'] as int?,
        createdAt = json['created_at'] as String?,
        userCompanyId = json['user_company_id'] as String?,
        userCompanyName = json['user_company_name'] as String?,
        createdBy = json['created_by'] as String?,
        userRegionId = json['user_region_id'],
        userBaseCurrency = json['user_base_currency'] as String?,
        userAddress = json['user_address'],
        isGodUser = json['is_god_user'] as int?,
        isSuperUser = json['is_super_user'] as int?,
        profile = json['profile'],
        domain = json['domain'] as String?,
        advancedSearch = json['advanced_search'] as int?,
        allowPersonalEmail = json['allow_personal_email'] as int?,
        personalEmailId = json['personal_email_id'] as String?,
        sendCc = json['send_cc'] as int?,
        emailSignature = json['email_signature'] as String?,
        emailSignatureRequired = json['email_signature_required'] as int?,
        ccEmail = (json['cc_email'] as List?)?.map((dynamic e) => e as String).toList(),
        roleId = json['role_id'] as String?,
        team = json['team'],
        tags = json['tags'],
        locations = json['locations'],
        department = json['department'] as String?,
        designation = json['designation'] as String?,
        teamManager = json['team_manager'] as int?,
        approvalRequired = json['approval_required'] as int?,
        accessKey = json['access_key'],
        approvalRequiredBy = json['approval_required_by'],
        otp = json['otp'] as int?,
        otpExpiry = json['otp_expiry'],
        isSalesCordinator = json['is_sales_cordinator'] as int?,
        erpData = json['erp_data'],
        isPricingUser = json['is_pricing_user'] as int?,
        customerProfileCode = json['customer_profile_code'] as String?,
        salesCallCode = json['sales_call_code'] as String?,
        ctcId = json['ctc_id'] as String?,
        branchId = json['branch_id'],
        salespersonCode = json['salesperson_code'] as String?,
        erpAssignedShipperFetched = json['erp_assigned_shipper_fetched'] as int?,
        erpAssignedSalesUserFetched = json['erp_assigned_sales_user_fetched'] as int?,
        allowEdit = json['allow_edit'] as int?,
        autoInquiryFcl = json['auto_inquiry_fcl'] as int?,
        autoInquiryLcl = json['auto_inquiry_lcl'] as int?,
        autoInquiryAir = json['auto_inquiry_air'] as int?,
        source = json['source'] as String?,
        company = (json['company'] as Map<String,dynamic>?) != null ? Company.fromJson(json['company'] as Map<String,dynamic>) : null,
        role = (json['role'] as Map<String,dynamic>?) != null ? Role.fromJson(json['role'] as Map<String,dynamic>) : null,
        type = (json['type'] as Map<String,dynamic>?) != null ? Type.fromJson(json['type'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'user_type' : userType,
    'email' : email,
    'user_mobile' : userMobile,
    'user_mobile_code' : userMobileCode,
    'user_mobile_country' : userMobileCountry,
    'user_alternate_number' : userAlternateNumber,
    'user_first_name' : userFirstName,
    'user_last_name' : userLastName,
    'user_dob' : userDob,
    'active_status' : activeStatus,
    'created_at' : createdAt,
    'user_company_id' : userCompanyId,
    'user_company_name' : userCompanyName,
    'created_by' : createdBy,
    'user_region_id' : userRegionId,
    'user_base_currency' : userBaseCurrency,
    'user_address' : userAddress,
    'is_god_user' : isGodUser,
    'is_super_user' : isSuperUser,
    'profile' : profile,
    'domain' : domain,
    'advanced_search' : advancedSearch,
    'allow_personal_email' : allowPersonalEmail,
    'personal_email_id' : personalEmailId,
    'send_cc' : sendCc,
    'email_signature' : emailSignature,
    'email_signature_required' : emailSignatureRequired,
    'cc_email' : ccEmail,
    'role_id' : roleId,
    'team' : team,
    'tags' : tags,
    'locations' : locations,
    'department' : department,
    'designation' : designation,
    'team_manager' : teamManager,
    'approval_required' : approvalRequired,
    'access_key' : accessKey,
    'approval_required_by' : approvalRequiredBy,
    'otp' : otp,
    'otp_expiry' : otpExpiry,
    'is_sales_cordinator' : isSalesCordinator,
    'erp_data' : erpData,
    'is_pricing_user' : isPricingUser,
    'customer_profile_code' : customerProfileCode,
    'sales_call_code' : salesCallCode,
    'ctc_id' : ctcId,
    'branch_id' : branchId,
    'salesperson_code' : salespersonCode,
    'erp_assigned_shipper_fetched' : erpAssignedShipperFetched,
    'erp_assigned_sales_user_fetched' : erpAssignedSalesUserFetched,
    'allow_edit' : allowEdit,
    'auto_inquiry_fcl' : autoInquiryFcl,
    'auto_inquiry_lcl' : autoInquiryLcl,
    'auto_inquiry_air' : autoInquiryAir,
    'source' : source,
    'company' : company?.toJson(),
    'role' : role?.toJson(),
    'type' : type?.toJson()
  };
}

class Company {
  final String? id;
  final String? companyName;
  final String? companyAddress;
  final String? companyLogo;
  final String? originalLogo;
  final String? createdBy;
  final String? createdAt;
  final String? companyConstitution;
  final String? companyEmail;
  final String? companyPhoneNumber;
  final String? state;
  final String? country;
  final String? postalCode;
  final String? dateOfEstablishment;
  final String? numberOfEmployees;
  final dynamic companyTurnover;
  final String? type;
  final String? vendorId;
  final String? domain;
  final String? initialShipQuoteNumbers;
  final int? iataCommission;
  final dynamic incentive;
  final String? masterRateText;
  final String? masterRibbonUrl;
  final dynamic iecNumber;
  final int? iecVerificationStatus;
  final String? source;
  final String? companyPhoneCode;
  final String? companyPhoneCountry;
  final dynamic customerProfileCode;
  final dynamic createdByCompany;
  final String? entityType;
  final dynamic checkFeatureQuota;
  final dynamic compnayTurnover;
  final dynamic iataCommision;
  final int? userCount;

  Company({
    this.id,
    this.companyName,
    this.companyAddress,
    this.companyLogo,
    this.originalLogo,
    this.createdBy,
    this.createdAt,
    this.companyConstitution,
    this.companyEmail,
    this.companyPhoneNumber,
    this.state,
    this.country,
    this.postalCode,
    this.dateOfEstablishment,
    this.numberOfEmployees,
    this.companyTurnover,
    this.type,
    this.vendorId,
    this.domain,
    this.initialShipQuoteNumbers,
    this.iataCommission,
    this.incentive,
    this.masterRateText,
    this.masterRibbonUrl,
    this.iecNumber,
    this.iecVerificationStatus,
    this.source,
    this.companyPhoneCode,
    this.companyPhoneCountry,
    this.customerProfileCode,
    this.createdByCompany,
    this.entityType,
    this.checkFeatureQuota,
    this.compnayTurnover,
    this.iataCommision,
    this.userCount,
  });

  Company.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        companyName = json['company_name'] as String?,
        companyAddress = json['company_address'] as String?,
        companyLogo = json['company_logo'] as String?,
        originalLogo = json['original_logo'] as String?,
        createdBy = json['created_by'] as String?,
        createdAt = json['created_at'] as String?,
        companyConstitution = json['company_constitution'] as String?,
        companyEmail = json['company_email'] as String?,
        companyPhoneNumber = json['company_phone_number'] as String?,
        state = json['state'] as String?,
        country = json['country'] as String?,
        postalCode = json['postal_code'] as String?,
        dateOfEstablishment = json['date_of_establishment'] as String?,
        numberOfEmployees = json['number_of_employees'] as String?,
        companyTurnover = json['company_turnover'],
        type = json['type'] as String?,
        vendorId = json['vendor_id'] as String?,
        domain = json['domain'] as String?,
        initialShipQuoteNumbers = json['initial_ship_quote_numbers'] as String?,
        iataCommission = json['iata_commission'] as int?,
        incentive = json['incentive'],
        masterRateText = json['master_rate_text'] as String?,
        masterRibbonUrl = json['master_ribbon_url'] as String?,
        iecNumber = json['iec_number'],
        iecVerificationStatus = json['iec_verification_status'] as int?,
        source = json['source'] as String?,
        companyPhoneCode = json['company_phone_code'] as String?,
        companyPhoneCountry = json['company_phone_country'] as String?,
        customerProfileCode = json['customer_profile_code'],
        createdByCompany = json['created_by_company'],
        entityType = json['entity_type'] as String?,
        checkFeatureQuota = json['check_feature_quota'],
        compnayTurnover = json['compnay_turnover'],
        iataCommision = json['iata_commision'],
        userCount = json['user_count'] as int?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'company_name' : companyName,
    'company_address' : companyAddress,
    'company_logo' : companyLogo,
    'original_logo' : originalLogo,
    'created_by' : createdBy,
    'created_at' : createdAt,
    'company_constitution' : companyConstitution,
    'company_email' : companyEmail,
    'company_phone_number' : companyPhoneNumber,
    'state' : state,
    'country' : country,
    'postal_code' : postalCode,
    'date_of_establishment' : dateOfEstablishment,
    'number_of_employees' : numberOfEmployees,
    'company_turnover' : companyTurnover,
    'type' : type,
    'vendor_id' : vendorId,
    'domain' : domain,
    'initial_ship_quote_numbers' : initialShipQuoteNumbers,
    'iata_commission' : iataCommission,
    'incentive' : incentive,
    'master_rate_text' : masterRateText,
    'master_ribbon_url' : masterRibbonUrl,
    'iec_number' : iecNumber,
    'iec_verification_status' : iecVerificationStatus,
    'source' : source,
    'company_phone_code' : companyPhoneCode,
    'company_phone_country' : companyPhoneCountry,
    'customer_profile_code' : customerProfileCode,
    'created_by_company' : createdByCompany,
    'entity_type' : entityType,
    'check_feature_quota' : checkFeatureQuota,
    'compnay_turnover' : compnayTurnover,
    'iata_commision' : iataCommision,
    'user_count' : userCount
  };
}

class Role {
  final String? id;
  final String? name;
  final dynamic description;
  final String? domain;
  final String? type;
  final String? createdFor;
  final int? isSuperRole;

  Role({
    this.id,
    this.name,
    this.description,
    this.domain,
    this.type,
    this.createdFor,
    this.isSuperRole,
  });

  Role.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        description = json['description'],
        domain = json['domain'] as String?,
        type = json['type'] as String?,
        createdFor = json['created_for'] as String?,
        isSuperRole = json['is_super_role'] as int?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'description' : description,
    'domain' : domain,
    'type' : type,
    'created_for' : createdFor,
    'is_super_role' : isSuperRole
  };
}

class Type {
  final String? id;
  final String? userTypeCode;
  final String? userTypeName;
  final String? userCategory;

  Type({
    this.id,
    this.userTypeCode,
    this.userTypeName,
    this.userCategory,
  });

  Type.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        userTypeCode = json['user_type_code'] as String?,
        userTypeName = json['user_type_name'] as String?,
        userCategory = json['user_category'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'user_type_code' : userTypeCode,
    'user_type_name' : userTypeName,
    'user_category' : userCategory
  };
}

class SalesUser {
  final String? id;
  final String? userType;
  final String? email;
  final String? userMobile;
  final String? userMobileCode;
  final String? userMobileCountry;
  final dynamic userAlternateNumber;
  final String? userFirstName;
  final String? userLastName;
  final dynamic userDob;
  final int? activeStatus;
  final String? createdAt;
  final String? userCompanyId;
  final String? userCompanyName;
  final String? createdBy;
  final dynamic userRegionId;
  final String? userBaseCurrency;
  final dynamic userAddress;
  final int? isGodUser;
  final int? isSuperUser;
  final dynamic profile;
  final String? domain;
  final int? advancedSearch;
  final int? allowPersonalEmail;
  final String? personalEmailId;
  final int? sendCc;
  final String? emailSignature;
  final int? emailSignatureRequired;
  final List<String>? ccEmail;
  final String? roleId;
  final dynamic team;
  final dynamic tags;
  final dynamic locations;
  final String? department;
  final String? designation;
  final int? teamManager;
  final int? approvalRequired;
  final dynamic accessKey;
  final dynamic approvalRequiredBy;
  final int? otp;
  final dynamic otpExpiry;
  final int? isSalesCordinator;
  final dynamic erpData;
  final int? isPricingUser;
  final String? customerProfileCode;
  final String? salesCallCode;
  final String? ctcId;
  final dynamic branchId;
  final String? salespersonCode;
  final int? erpAssignedShipperFetched;
  final int? erpAssignedSalesUserFetched;
  final int? allowEdit;
  final int? autoInquiryFcl;
  final int? autoInquiryLcl;
  final int? autoInquiryAir;
  final String? source;
  final Company? company;
  final Role? role;
  final Type? type;

  SalesUser({
    this.id,
    this.userType,
    this.email,
    this.userMobile,
    this.userMobileCode,
    this.userMobileCountry,
    this.userAlternateNumber,
    this.userFirstName,
    this.userLastName,
    this.userDob,
    this.activeStatus,
    this.createdAt,
    this.userCompanyId,
    this.userCompanyName,
    this.createdBy,
    this.userRegionId,
    this.userBaseCurrency,
    this.userAddress,
    this.isGodUser,
    this.isSuperUser,
    this.profile,
    this.domain,
    this.advancedSearch,
    this.allowPersonalEmail,
    this.personalEmailId,
    this.sendCc,
    this.emailSignature,
    this.emailSignatureRequired,
    this.ccEmail,
    this.roleId,
    this.team,
    this.tags,
    this.locations,
    this.department,
    this.designation,
    this.teamManager,
    this.approvalRequired,
    this.accessKey,
    this.approvalRequiredBy,
    this.otp,
    this.otpExpiry,
    this.isSalesCordinator,
    this.erpData,
    this.isPricingUser,
    this.customerProfileCode,
    this.salesCallCode,
    this.ctcId,
    this.branchId,
    this.salespersonCode,
    this.erpAssignedShipperFetched,
    this.erpAssignedSalesUserFetched,
    this.allowEdit,
    this.autoInquiryFcl,
    this.autoInquiryLcl,
    this.autoInquiryAir,
    this.source,
    this.company,
    this.role,
    this.type,
  });

  SalesUser.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        userType = json['user_type'] as String?,
        email = json['email'] as String?,
        userMobile = json['user_mobile'] as String?,
        userMobileCode = json['user_mobile_code'] as String?,
        userMobileCountry = json['user_mobile_country'] as String?,
        userAlternateNumber = json['user_alternate_number'],
        userFirstName = json['user_first_name'] as String?,
        userLastName = json['user_last_name'] as String?,
        userDob = json['user_dob'],
        activeStatus = json['active_status'] as int?,
        createdAt = json['created_at'] as String?,
        userCompanyId = json['user_company_id'] as String?,
        userCompanyName = json['user_company_name'] as String?,
        createdBy = json['created_by'] as String?,
        userRegionId = json['user_region_id'],
        userBaseCurrency = json['user_base_currency'] as String?,
        userAddress = json['user_address'],
        isGodUser = json['is_god_user'] as int?,
        isSuperUser = json['is_super_user'] as int?,
        profile = json['profile'],
        domain = json['domain'] as String?,
        advancedSearch = json['advanced_search'] as int?,
        allowPersonalEmail = json['allow_personal_email'] as int?,
        personalEmailId = json['personal_email_id'] as String?,
        sendCc = json['send_cc'] as int?,
        emailSignature = json['email_signature'] as String?,
        emailSignatureRequired = json['email_signature_required'] as int?,
        ccEmail = (json['cc_email'] as List?)?.map((dynamic e) => e as String).toList(),
        roleId = json['role_id'] as String?,
        team = json['team'],
        tags = json['tags'],
        locations = json['locations'],
        department = json['department'] as String?,
        designation = json['designation'] as String?,
        teamManager = json['team_manager'] as int?,
        approvalRequired = json['approval_required'] as int?,
        accessKey = json['access_key'],
        approvalRequiredBy = json['approval_required_by'],
        otp = json['otp'] as int?,
        otpExpiry = json['otp_expiry'],
        isSalesCordinator = json['is_sales_cordinator'] as int?,
        erpData = json['erp_data'],
        isPricingUser = json['is_pricing_user'] as int?,
        customerProfileCode = json['customer_profile_code'] as String?,
        salesCallCode = json['sales_call_code'] as String?,
        ctcId = json['ctc_id'] as String?,
        branchId = json['branch_id'],
        salespersonCode = json['salesperson_code'] as String?,
        erpAssignedShipperFetched = json['erp_assigned_shipper_fetched'] as int?,
        erpAssignedSalesUserFetched = json['erp_assigned_sales_user_fetched'] as int?,
        allowEdit = json['allow_edit'] as int?,
        autoInquiryFcl = json['auto_inquiry_fcl'] as int?,
        autoInquiryLcl = json['auto_inquiry_lcl'] as int?,
        autoInquiryAir = json['auto_inquiry_air'] as int?,
        source = json['source'] as String?,
        company = (json['company'] as Map<String,dynamic>?) != null ? Company.fromJson(json['company'] as Map<String,dynamic>) : null,
        role = (json['role'] as Map<String,dynamic>?) != null ? Role.fromJson(json['role'] as Map<String,dynamic>) : null,
        type = (json['type'] as Map<String,dynamic>?) != null ? Type.fromJson(json['type'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'user_type' : userType,
    'email' : email,
    'user_mobile' : userMobile,
    'user_mobile_code' : userMobileCode,
    'user_mobile_country' : userMobileCountry,
    'user_alternate_number' : userAlternateNumber,
    'user_first_name' : userFirstName,
    'user_last_name' : userLastName,
    'user_dob' : userDob,
    'active_status' : activeStatus,
    'created_at' : createdAt,
    'user_company_id' : userCompanyId,
    'user_company_name' : userCompanyName,
    'created_by' : createdBy,
    'user_region_id' : userRegionId,
    'user_base_currency' : userBaseCurrency,
    'user_address' : userAddress,
    'is_god_user' : isGodUser,
    'is_super_user' : isSuperUser,
    'profile' : profile,
    'domain' : domain,
    'advanced_search' : advancedSearch,
    'allow_personal_email' : allowPersonalEmail,
    'personal_email_id' : personalEmailId,
    'send_cc' : sendCc,
    'email_signature' : emailSignature,
    'email_signature_required' : emailSignatureRequired,
    'cc_email' : ccEmail,
    'role_id' : roleId,
    'team' : team,
    'tags' : tags,
    'locations' : locations,
    'department' : department,
    'designation' : designation,
    'team_manager' : teamManager,
    'approval_required' : approvalRequired,
    'access_key' : accessKey,
    'approval_required_by' : approvalRequiredBy,
    'otp' : otp,
    'otp_expiry' : otpExpiry,
    'is_sales_cordinator' : isSalesCordinator,
    'erp_data' : erpData,
    'is_pricing_user' : isPricingUser,
    'customer_profile_code' : customerProfileCode,
    'sales_call_code' : salesCallCode,
    'ctc_id' : ctcId,
    'branch_id' : branchId,
    'salesperson_code' : salespersonCode,
    'erp_assigned_shipper_fetched' : erpAssignedShipperFetched,
    'erp_assigned_sales_user_fetched' : erpAssignedSalesUserFetched,
    'allow_edit' : allowEdit,
    'auto_inquiry_fcl' : autoInquiryFcl,
    'auto_inquiry_lcl' : autoInquiryLcl,
    'auto_inquiry_air' : autoInquiryAir,
    'source' : source,
    'company' : company?.toJson(),
    'role' : role?.toJson(),
    'type' : type?.toJson()
  };
}

class ShipperUser {
  final String? id;
  final String? userType;
  final String? email;
  final dynamic userMobile;
  final dynamic userMobileCode;
  final dynamic userMobileCountry;
  final dynamic userAlternateNumber;
  final String? userFirstName;
  final String? userLastName;
  final dynamic userDob;
  final int? activeStatus;
  final String? createdAt;
  final String? userCompanyId;
  final String? userCompanyName;
  final String? createdBy;
  final dynamic userRegionId;
  final String? userBaseCurrency;
  final dynamic userAddress;
  final int? isGodUser;
  final int? isSuperUser;
  final dynamic profile;
  final String? domain;
  final int? advancedSearch;
  final int? allowPersonalEmail;
  final dynamic personalEmailId;
  final int? sendCc;
  final dynamic emailSignature;
  final int? emailSignatureRequired;
  final dynamic ccEmail;
  final String? roleId;
  final dynamic team;
  final dynamic tags;
  final dynamic locations;
  final dynamic department;
  final dynamic designation;
  final int? teamManager;
  final int? approvalRequired;
  final dynamic accessKey;
  final dynamic approvalRequiredBy;
  final dynamic otp;
  final dynamic otpExpiry;
  final int? isSalesCordinator;
  final dynamic erpData;
  final int? isPricingUser;
  final dynamic customerProfileCode;
  final dynamic salesCallCode;
  final dynamic ctcId;
  final dynamic branchId;
  final dynamic salespersonCode;
  final int? erpAssignedShipperFetched;
  final int? erpAssignedSalesUserFetched;
  final int? allowEdit;
  final int? autoInquiryFcl;
  final int? autoInquiryLcl;
  final int? autoInquiryAir;
  final String? source;
  final String? solutionType;
  final Company? company;

  ShipperUser({
    this.id,
    this.userType,
    this.email,
    this.userMobile,
    this.userMobileCode,
    this.userMobileCountry,
    this.userAlternateNumber,
    this.userFirstName,
    this.userLastName,
    this.userDob,
    this.activeStatus,
    this.createdAt,
    this.userCompanyId,
    this.userCompanyName,
    this.createdBy,
    this.userRegionId,
    this.userBaseCurrency,
    this.userAddress,
    this.isGodUser,
    this.isSuperUser,
    this.profile,
    this.domain,
    this.advancedSearch,
    this.allowPersonalEmail,
    this.personalEmailId,
    this.sendCc,
    this.emailSignature,
    this.emailSignatureRequired,
    this.ccEmail,
    this.roleId,
    this.team,
    this.tags,
    this.locations,
    this.department,
    this.designation,
    this.teamManager,
    this.approvalRequired,
    this.accessKey,
    this.approvalRequiredBy,
    this.otp,
    this.otpExpiry,
    this.isSalesCordinator,
    this.erpData,
    this.isPricingUser,
    this.customerProfileCode,
    this.salesCallCode,
    this.ctcId,
    this.branchId,
    this.salespersonCode,
    this.erpAssignedShipperFetched,
    this.erpAssignedSalesUserFetched,
    this.allowEdit,
    this.autoInquiryFcl,
    this.autoInquiryLcl,
    this.autoInquiryAir,
    this.source,
    this.solutionType,
    this.company,
  });

  ShipperUser.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        userType = json['user_type'] as String?,
        email = json['email'] as String?,
        userMobile = json['user_mobile'],
        userMobileCode = json['user_mobile_code'],
        userMobileCountry = json['user_mobile_country'],
        userAlternateNumber = json['user_alternate_number'],
        userFirstName = json['user_first_name'] as String?,
        userLastName = json['user_last_name'] as String?,
        userDob = json['user_dob'],
        activeStatus = json['active_status'] as int?,
        createdAt = json['created_at'] as String?,
        userCompanyId = json['user_company_id'] as String?,
        userCompanyName = json['user_company_name'] as String?,
        createdBy = json['created_by'] as String?,
        userRegionId = json['user_region_id'],
        userBaseCurrency = json['user_base_currency'] as String?,
        userAddress = json['user_address'],
        isGodUser = json['is_god_user'] as int?,
        isSuperUser = json['is_super_user'] as int?,
        profile = json['profile'],
        domain = json['domain'] as String?,
        advancedSearch = json['advanced_search'] as int?,
        allowPersonalEmail = json['allow_personal_email'] as int?,
        personalEmailId = json['personal_email_id'],
        sendCc = json['send_cc'] as int?,
        emailSignature = json['email_signature'],
        emailSignatureRequired = json['email_signature_required'] as int?,
        ccEmail = json['cc_email'],
        roleId = json['role_id'] as String?,
        team = json['team'],
        tags = json['tags'],
        locations = json['locations'],
        department = json['department'],
        designation = json['designation'],
        teamManager = json['team_manager'] as int?,
        approvalRequired = json['approval_required'] as int?,
        accessKey = json['access_key'],
        approvalRequiredBy = json['approval_required_by'],
        otp = json['otp'],
        otpExpiry = json['otp_expiry'],
        isSalesCordinator = json['is_sales_cordinator'] as int?,
        erpData = json['erp_data'],
        isPricingUser = json['is_pricing_user'] as int?,
        customerProfileCode = json['customer_profile_code'],
        salesCallCode = json['sales_call_code'],
        ctcId = json['ctc_id'],
        branchId = json['branch_id'],
        salespersonCode = json['salesperson_code'],
        erpAssignedShipperFetched = json['erp_assigned_shipper_fetched'] as int?,
        erpAssignedSalesUserFetched = json['erp_assigned_sales_user_fetched'] as int?,
        allowEdit = json['allow_edit'] as int?,
        autoInquiryFcl = json['auto_inquiry_fcl'] as int?,
        autoInquiryLcl = json['auto_inquiry_lcl'] as int?,
        autoInquiryAir = json['auto_inquiry_air'] as int?,
        source = json['source'] as String?,
        solutionType = json['solution_type'] as String?,
        company = (json['company'] as Map<String,dynamic>?) != null ? Company.fromJson(json['company'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'user_type' : userType,
    'email' : email,
    'user_mobile' : userMobile,
    'user_mobile_code' : userMobileCode,
    'user_mobile_country' : userMobileCountry,
    'user_alternate_number' : userAlternateNumber,
    'user_first_name' : userFirstName,
    'user_last_name' : userLastName,
    'user_dob' : userDob,
    'active_status' : activeStatus,
    'created_at' : createdAt,
    'user_company_id' : userCompanyId,
    'user_company_name' : userCompanyName,
    'created_by' : createdBy,
    'user_region_id' : userRegionId,
    'user_base_currency' : userBaseCurrency,
    'user_address' : userAddress,
    'is_god_user' : isGodUser,
    'is_super_user' : isSuperUser,
    'profile' : profile,
    'domain' : domain,
    'advanced_search' : advancedSearch,
    'allow_personal_email' : allowPersonalEmail,
    'personal_email_id' : personalEmailId,
    'send_cc' : sendCc,
    'email_signature' : emailSignature,
    'email_signature_required' : emailSignatureRequired,
    'cc_email' : ccEmail,
    'role_id' : roleId,
    'team' : team,
    'tags' : tags,
    'locations' : locations,
    'department' : department,
    'designation' : designation,
    'team_manager' : teamManager,
    'approval_required' : approvalRequired,
    'access_key' : accessKey,
    'approval_required_by' : approvalRequiredBy,
    'otp' : otp,
    'otp_expiry' : otpExpiry,
    'is_sales_cordinator' : isSalesCordinator,
    'erp_data' : erpData,
    'is_pricing_user' : isPricingUser,
    'customer_profile_code' : customerProfileCode,
    'sales_call_code' : salesCallCode,
    'ctc_id' : ctcId,
    'branch_id' : branchId,
    'salesperson_code' : salespersonCode,
    'erp_assigned_shipper_fetched' : erpAssignedShipperFetched,
    'erp_assigned_sales_user_fetched' : erpAssignedSalesUserFetched,
    'allow_edit' : allowEdit,
    'auto_inquiry_fcl' : autoInquiryFcl,
    'auto_inquiry_lcl' : autoInquiryLcl,
    'auto_inquiry_air' : autoInquiryAir,
    'source' : source,
    'solution_type' : solutionType,
    'company' : company?.toJson()
  };
}

class SearchData {
  final String? mode;
  final dynamic pickup;
  final dynamic delivery;
  final OriginPort? originPort;
  final DestinationPort? destinationPort;
  final OriginLocation? originLocation;
  final DestinationLocation? destinationLocation;
  final bool? originCharges;
  final bool? originCustoms;
  final bool? destinationCharges;
  final bool? destinationCustoms;
  final dynamic incoTerm;
  final LoadData? loadData;
  final PickupPortDistence? pickupPortDistence;
  final DeliveryPortDistence? deliveryPortDistence;
  final bool? hazardousMaterial;
  final bool? shipmentInsurance;
  final dynamic commodity;
  final String? searchName;
  final String? cargoReadyDate;
  final bool? fetchNetworkRates;
  final bool? fetchNearbyPortData;
  final dynamic destinationDelivery;
  final dynamic insuranceLegCost;
  final String? insuranceCurrency;
  final String? stuffing;
  final dynamic shipperUser;
  final SalesUser? salesUser;
  final String? searchType;
  final bool? pickupSelected;
  final bool? deliverySelected;
  final int? nearbyLimit;
  final List<dynamic>? nearbyPorts;
  final List<dynamic>? nearbyPortsDestination;
  final String? shipperUserId;
  final User? user;
  final bool? customs;

  SearchData({
    this.mode,
    this.pickup,
    this.delivery,
    this.originPort,
    this.destinationPort,
    this.originLocation,
    this.destinationLocation,
    this.originCharges,
    this.originCustoms,
    this.destinationCharges,
    this.destinationCustoms,
    this.incoTerm,
    this.loadData,
    this.pickupPortDistence,
    this.deliveryPortDistence,
    this.hazardousMaterial,
    this.shipmentInsurance,
    this.commodity,
    this.searchName,
    this.cargoReadyDate,
    this.fetchNetworkRates,
    this.fetchNearbyPortData,
    this.destinationDelivery,
    this.insuranceLegCost,
    this.insuranceCurrency,
    this.stuffing,
    this.shipperUser,
    this.salesUser,
    this.searchType,
    this.pickupSelected,
    this.deliverySelected,
    this.nearbyLimit,
    this.nearbyPorts,
    this.nearbyPortsDestination,
    this.shipperUserId,
    this.user,
    this.customs,
  });

  SearchData.fromJson(Map<String, dynamic> json)
      : mode = json['mode'] as String?,
        pickup = json['pickup'],
        delivery = json['delivery'],
        originPort = (json['origin_port'] as Map<String,dynamic>?) != null ? OriginPort.fromJson(json['origin_port'] as Map<String,dynamic>) : null,
        destinationPort = (json['destination_port'] as Map<String,dynamic>?) != null ? DestinationPort.fromJson(json['destination_port'] as Map<String,dynamic>) : null,
        originLocation = (json['origin_location'] as Map<String,dynamic>?) != null ? OriginLocation.fromJson(json['origin_location'] as Map<String,dynamic>) : null,
        destinationLocation = (json['destination_location'] as Map<String,dynamic>?) != null ? DestinationLocation.fromJson(json['destination_location'] as Map<String,dynamic>) : null,
        originCharges = json['origin_charges'] as bool?,
        originCustoms = json['origin_customs'] as bool?,
        destinationCharges = json['destination_charges'] as bool?,
        destinationCustoms = json['destination_customs'] as bool?,
        incoTerm = json['inco_term'],
        loadData = (json['load_data'] as Map<String,dynamic>?) != null ? LoadData.fromJson(json['load_data'] as Map<String,dynamic>) : null,
        pickupPortDistence = (json['pickup_port_distence'] as Map<String,dynamic>?) != null ? PickupPortDistence.fromJson(json['pickup_port_distence'] as Map<String,dynamic>) : null,
        deliveryPortDistence = (json['delivery_port_distence'] as Map<String,dynamic>?) != null ? DeliveryPortDistence.fromJson(json['delivery_port_distence'] as Map<String,dynamic>) : null,
        hazardousMaterial = json['hazardous_material'] as bool?,
        shipmentInsurance = json['shipment_insurance'] as bool?,
        commodity = json['commodity'],
        searchName = json['search_name'] as String?,
        cargoReadyDate = json['cargo_ready_date'] as String?,
        fetchNetworkRates = json['fetch_network_rates'] as bool?,
        fetchNearbyPortData = json['fetch_nearby_port_data'] as bool?,
        destinationDelivery = json['destination_delivery'],
        insuranceLegCost = json['insurance_leg_cost'],
        insuranceCurrency = json['insurance_currency'] as String?,
        stuffing = json['stuffing'] as String?,
        shipperUser = json['shipper_user'],
        salesUser = (json['sales_user'] as Map<String,dynamic>?) != null ? SalesUser.fromJson(json['sales_user'] as Map<String,dynamic>) : null,
        searchType = json['search_type'] as String?,
        pickupSelected = json['pickup_selected'] as bool?,
        deliverySelected = json['delivery_selected'] as bool?,
        nearbyLimit = json['nearby_limit'] as int?,
        nearbyPorts = json['nearby_ports'] as List?,
        nearbyPortsDestination = json['nearby_ports_destination'] as List?,
        shipperUserId = json['shipper_user_id'] as String?,
        user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null,
        customs = json['customs'] as bool?;

  Map<String, dynamic> toJson() => {
    'mode' : mode,
    'pickup' : pickup,
    'delivery' : delivery,
    'origin_port' : originPort?.toJson(),
    'destination_port' : destinationPort?.toJson(),
    'origin_location' : originLocation?.toJson(),
    'destination_location' : destinationLocation?.toJson(),
    'origin_charges' : originCharges,
    'origin_customs' : originCustoms,
    'destination_charges' : destinationCharges,
    'destination_customs' : destinationCustoms,
    'inco_term' : incoTerm,
    'load_data' : loadData?.toJson(),
    'pickup_port_distence' : pickupPortDistence?.toJson(),
    'delivery_port_distence' : deliveryPortDistence?.toJson(),
    'hazardous_material' : hazardousMaterial,
    'shipment_insurance' : shipmentInsurance,
    'commodity' : commodity,
    'search_name' : searchName,
    'cargo_ready_date' : cargoReadyDate,
    'fetch_network_rates' : fetchNetworkRates,
    'fetch_nearby_port_data' : fetchNearbyPortData,
    'destination_delivery' : destinationDelivery,
    'insurance_leg_cost' : insuranceLegCost,
    'insurance_currency' : insuranceCurrency,
    'stuffing' : stuffing,
    'shipper_user' : shipperUser,
    'sales_user' : salesUser?.toJson(),
    'search_type' : searchType,
    'pickup_selected' : pickupSelected,
    'delivery_selected' : deliverySelected,
    'nearby_limit' : nearbyLimit,
    'nearby_ports' : nearbyPorts,
    'nearby_ports_destination' : nearbyPortsDestination,
    'shipper_user_id' : shipperUserId,
    'user' : user?.toJson(),
    'customs' : customs
  };
}

class OriginPort {
  final String? id;
  final String? globalPortCode;
  final String? portCode;
  final String? portname;
  final String? city;
  final double? lat;
  final double? long;
  final dynamic region;
  final String? location;
  final dynamic pinCode;
  final int? isIcdPort;
  final int? isMajorPort;
  final dynamic portId;
  final dynamic state;
  final dynamic vendorId;
  final dynamic legCode;
  final GeoLocation? geoLocation;
  final bool? priceAvailable;
  final dynamic priceCurrency;
  final dynamic price;
  final List<dynamic>? batchcode;
  final String? portcodePortname;
  final String? mode;
  final dynamic countryCode;
  final String? locationString;
  final dynamic locationType;
  final dynamic countrySortCode;
  final String? placeType;
  final String? createdAt;
  final String? modifiedAt;
  final int? v;
  final String? locationLowercase;

  OriginPort({
    this.id,
    this.globalPortCode,
    this.portCode,
    this.portname,
    this.city,
    this.lat,
    this.long,
    this.region,
    this.location,
    this.pinCode,
    this.isIcdPort,
    this.isMajorPort,
    this.portId,
    this.state,
    this.vendorId,
    this.legCode,
    this.geoLocation,
    this.priceAvailable,
    this.priceCurrency,
    this.price,
    this.batchcode,
    this.portcodePortname,
    this.mode,
    this.countryCode,
    this.locationString,
    this.locationType,
    this.countrySortCode,
    this.placeType,
    this.createdAt,
    this.modifiedAt,
    this.v,
    this.locationLowercase,
  });

  OriginPort.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        globalPortCode = json['global_port_code'] as String?,
        portCode = json['port_code'] as String?,
        portname = json['portname'] as String?,
        city = json['city'] as String?,
        lat = json['lat'] as double?,
        long = json['long'] as double?,
        region = json['region'],
        location = json['location'] as String?,
        pinCode = json['pin_code'],
        isIcdPort = json['is_icd_port'] as int?,
        isMajorPort = json['is_major_port'] as int?,
        portId = json['port_id'],
        state = json['state'],
        vendorId = json['vendor_id'],
        legCode = json['leg_code'],
        geoLocation = (json['geo_location'] as Map<String,dynamic>?) != null ? GeoLocation.fromJson(json['geo_location'] as Map<String,dynamic>) : null,
        priceAvailable = json['price_available'] as bool?,
        priceCurrency = json['price_currency'],
        price = json['price'],
        batchcode = json['batchcode'] as List?,
        portcodePortname = json['portcode_portname'] as String?,
        mode = json['mode'] as String?,
        countryCode = json['country_code'],
        locationString = json['location_string'] as String?,
        locationType = json['location_type'],
        countrySortCode = json['country_sort_code'],
        placeType = json['place_type'] as String?,
        createdAt = json['created_at'] as String?,
        modifiedAt = json['modified_at'] as String?,
        v = json['__v'] as int?,
        locationLowercase = json['location_lowercase'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'global_port_code' : globalPortCode,
    'port_code' : portCode,
    'portname' : portname,
    'city' : city,
    'lat' : lat,
    'long' : long,
    'region' : region,
    'location' : location,
    'pin_code' : pinCode,
    'is_icd_port' : isIcdPort,
    'is_major_port' : isMajorPort,
    'port_id' : portId,
    'state' : state,
    'vendor_id' : vendorId,
    'leg_code' : legCode,
    'geo_location' : geoLocation?.toJson(),
    'price_available' : priceAvailable,
    'price_currency' : priceCurrency,
    'price' : price,
    'batchcode' : batchcode,
    'portcode_portname' : portcodePortname,
    'mode' : mode,
    'country_code' : countryCode,
    'location_string' : locationString,
    'location_type' : locationType,
    'country_sort_code' : countrySortCode,
    'place_type' : placeType,
    'created_at' : createdAt,
    'modified_at' : modifiedAt,
    '__v' : v,
    'location_lowercase' : locationLowercase
  };
}

class GeoLocation {
  final String? type;
  final List<double>? coordinates;

  GeoLocation({
    this.type,
    this.coordinates,
  });

  GeoLocation.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        coordinates = (json['coordinates'] as List?)?.map((dynamic e) => e as double).toList();

  Map<String, dynamic> toJson() => {
    'type' : type,
    'coordinates' : coordinates
  };
}

class DestinationPort {
  final String? id;
  final String? globalPortCode;
  final String? portCode;
  final String? portname;
  final String? city;
  final double? lat;
  final double? long;
  final dynamic region;
  final String? location;
  final dynamic pinCode;
  final int? isIcdPort;
  final int? isMajorPort;
  final dynamic portId;
  final dynamic state;
  final dynamic vendorId;
  final dynamic legCode;
  final GeoLocation? geoLocation;
  final bool? priceAvailable;
  final dynamic priceCurrency;
  final dynamic price;
  final List<dynamic>? batchcode;
  final String? portcodePortname;
  final String? mode;
  final dynamic countryCode;
  final String? locationString;
  final dynamic locationType;
  final dynamic countrySortCode;
  final String? placeType;
  final String? createdAt;
  final String? modifiedAt;
  final int? v;
  final String? locationLowercase;

  DestinationPort({
    this.id,
    this.globalPortCode,
    this.portCode,
    this.portname,
    this.city,
    this.lat,
    this.long,
    this.region,
    this.location,
    this.pinCode,
    this.isIcdPort,
    this.isMajorPort,
    this.portId,
    this.state,
    this.vendorId,
    this.legCode,
    this.geoLocation,
    this.priceAvailable,
    this.priceCurrency,
    this.price,
    this.batchcode,
    this.portcodePortname,
    this.mode,
    this.countryCode,
    this.locationString,
    this.locationType,
    this.countrySortCode,
    this.placeType,
    this.createdAt,
    this.modifiedAt,
    this.v,
    this.locationLowercase,
  });

  DestinationPort.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        globalPortCode = json['global_port_code'] as String?,
        portCode = json['port_code'] as String?,
        portname = json['portname'] as String?,
        city = json['city'] as String?,
        lat = json['lat'] as double?,
        long = json['long'] as double?,
        region = json['region'],
        location = json['location'] as String?,
        pinCode = json['pin_code'],
        isIcdPort = json['is_icd_port'] as int?,
        isMajorPort = json['is_major_port'] as int?,
        portId = json['port_id'],
        state = json['state'],
        vendorId = json['vendor_id'],
        legCode = json['leg_code'],
        geoLocation = (json['geo_location'] as Map<String,dynamic>?) != null ? GeoLocation.fromJson(json['geo_location'] as Map<String,dynamic>) : null,
        priceAvailable = json['price_available'] as bool?,
        priceCurrency = json['price_currency'],
        price = json['price'],
        batchcode = json['batchcode'] as List?,
        portcodePortname = json['portcode_portname'] as String?,
        mode = json['mode'] as String?,
        countryCode = json['country_code'],
        locationString = json['location_string'] as String?,
        locationType = json['location_type'],
        countrySortCode = json['country_sort_code'],
        placeType = json['place_type'] as String?,
        createdAt = json['created_at'] as String?,
        modifiedAt = json['modified_at'] as String?,
        v = json['__v'] as int?,
        locationLowercase = json['location_lowercase'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'global_port_code' : globalPortCode,
    'port_code' : portCode,
    'portname' : portname,
    'city' : city,
    'lat' : lat,
    'long' : long,
    'region' : region,
    'location' : location,
    'pin_code' : pinCode,
    'is_icd_port' : isIcdPort,
    'is_major_port' : isMajorPort,
    'port_id' : portId,
    'state' : state,
    'vendor_id' : vendorId,
    'leg_code' : legCode,
    'geo_location' : geoLocation?.toJson(),
    'price_available' : priceAvailable,
    'price_currency' : priceCurrency,
    'price' : price,
    'batchcode' : batchcode,
    'portcode_portname' : portcodePortname,
    'mode' : mode,
    'country_code' : countryCode,
    'location_string' : locationString,
    'location_type' : locationType,
    'country_sort_code' : countrySortCode,
    'place_type' : placeType,
    'created_at' : createdAt,
    'modified_at' : modifiedAt,
    '__v' : v,
    'location_lowercase' : locationLowercase
  };
}

class OriginLocation {
  final String? id;
  final String? globalPortCode;
  final String? portCode;
  final String? portname;
  final String? city;
  final double? lat;
  final double? long;
  final dynamic region;
  final String? location;
  final dynamic pinCode;
  final int? isIcdPort;
  final int? isMajorPort;
  final dynamic portId;
  final dynamic state;
  final dynamic vendorId;
  final dynamic legCode;
  final GeoLocation? geoLocation;
  final bool? priceAvailable;
  final dynamic priceCurrency;
  final dynamic price;
  final List<dynamic>? batchcode;
  final String? portcodePortname;
  final String? mode;
  final dynamic countryCode;
  final String? locationString;
  final dynamic locationType;
  final dynamic countrySortCode;
  final String? placeType;
  final String? createdAt;
  final String? modifiedAt;
  final int? v;
  final String? locationLowercase;

  OriginLocation({
    this.id,
    this.globalPortCode,
    this.portCode,
    this.portname,
    this.city,
    this.lat,
    this.long,
    this.region,
    this.location,
    this.pinCode,
    this.isIcdPort,
    this.isMajorPort,
    this.portId,
    this.state,
    this.vendorId,
    this.legCode,
    this.geoLocation,
    this.priceAvailable,
    this.priceCurrency,
    this.price,
    this.batchcode,
    this.portcodePortname,
    this.mode,
    this.countryCode,
    this.locationString,
    this.locationType,
    this.countrySortCode,
    this.placeType,
    this.createdAt,
    this.modifiedAt,
    this.v,
    this.locationLowercase,
  });

  OriginLocation.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        globalPortCode = json['global_port_code'] as String?,
        portCode = json['port_code'] as String?,
        portname = json['portname'] as String?,
        city = json['city'] as String?,
        lat = json['lat'] as double?,
        long = json['long'] as double?,
        region = json['region'],
        location = json['location'] as String?,
        pinCode = json['pin_code'],
        isIcdPort = json['is_icd_port'] as int?,
        isMajorPort = json['is_major_port'] as int?,
        portId = json['port_id'],
        state = json['state'],
        vendorId = json['vendor_id'],
        legCode = json['leg_code'],
        geoLocation = (json['geo_location'] as Map<String,dynamic>?) != null ? GeoLocation.fromJson(json['geo_location'] as Map<String,dynamic>) : null,
        priceAvailable = json['price_available'] as bool?,
        priceCurrency = json['price_currency'],
        price = json['price'],
        batchcode = json['batchcode'] as List?,
        portcodePortname = json['portcode_portname'] as String?,
        mode = json['mode'] as String?,
        countryCode = json['country_code'],
        locationString = json['location_string'] as String?,
        locationType = json['location_type'],
        countrySortCode = json['country_sort_code'],
        placeType = json['place_type'] as String?,
        createdAt = json['created_at'] as String?,
        modifiedAt = json['modified_at'] as String?,
        v = json['__v'] as int?,
        locationLowercase = json['location_lowercase'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'global_port_code' : globalPortCode,
    'port_code' : portCode,
    'portname' : portname,
    'city' : city,
    'lat' : lat,
    'long' : long,
    'region' : region,
    'location' : location,
    'pin_code' : pinCode,
    'is_icd_port' : isIcdPort,
    'is_major_port' : isMajorPort,
    'port_id' : portId,
    'state' : state,
    'vendor_id' : vendorId,
    'leg_code' : legCode,
    'geo_location' : geoLocation?.toJson(),
    'price_available' : priceAvailable,
    'price_currency' : priceCurrency,
    'price' : price,
    'batchcode' : batchcode,
    'portcode_portname' : portcodePortname,
    'mode' : mode,
    'country_code' : countryCode,
    'location_string' : locationString,
    'location_type' : locationType,
    'country_sort_code' : countrySortCode,
    'place_type' : placeType,
    'created_at' : createdAt,
    'modified_at' : modifiedAt,
    '__v' : v,
    'location_lowercase' : locationLowercase
  };
}

class DestinationLocation {
  final String? id;
  final String? globalPortCode;
  final String? portCode;
  final String? portname;
  final String? city;
  final double? lat;
  final double? long;
  final dynamic region;
  final String? location;
  final dynamic pinCode;
  final int? isIcdPort;
  final int? isMajorPort;
  final dynamic portId;
  final dynamic state;
  final dynamic vendorId;
  final dynamic legCode;
  final GeoLocation? geoLocation;
  final bool? priceAvailable;
  final dynamic priceCurrency;
  final dynamic price;
  final List<dynamic>? batchcode;
  final String? portcodePortname;
  final String? mode;
  final dynamic countryCode;
  final String? locationString;
  final dynamic locationType;
  final dynamic countrySortCode;
  final String? placeType;
  final String? createdAt;
  final String? modifiedAt;
  final int? v;
  final String? locationLowercase;

  DestinationLocation({
    this.id,
    this.globalPortCode,
    this.portCode,
    this.portname,
    this.city,
    this.lat,
    this.long,
    this.region,
    this.location,
    this.pinCode,
    this.isIcdPort,
    this.isMajorPort,
    this.portId,
    this.state,
    this.vendorId,
    this.legCode,
    this.geoLocation,
    this.priceAvailable,
    this.priceCurrency,
    this.price,
    this.batchcode,
    this.portcodePortname,
    this.mode,
    this.countryCode,
    this.locationString,
    this.locationType,
    this.countrySortCode,
    this.placeType,
    this.createdAt,
    this.modifiedAt,
    this.v,
    this.locationLowercase,
  });

  DestinationLocation.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        globalPortCode = json['global_port_code'] as String?,
        portCode = json['port_code'] as String?,
        portname = json['portname'] as String?,
        city = json['city'] as String?,
        lat = json['lat'] as double?,
        long = json['long'] as double?,
        region = json['region'],
        location = json['location'] as String?,
        pinCode = json['pin_code'],
        isIcdPort = json['is_icd_port'] as int?,
        isMajorPort = json['is_major_port'] as int?,
        portId = json['port_id'],
        state = json['state'],
        vendorId = json['vendor_id'],
        legCode = json['leg_code'],
        geoLocation = (json['geo_location'] as Map<String,dynamic>?) != null ? GeoLocation.fromJson(json['geo_location'] as Map<String,dynamic>) : null,
        priceAvailable = json['price_available'] as bool?,
        priceCurrency = json['price_currency'],
        price = json['price'],
        batchcode = json['batchcode'] as List?,
        portcodePortname = json['portcode_portname'] as String?,
        mode = json['mode'] as String?,
        countryCode = json['country_code'],
        locationString = json['location_string'] as String?,
        locationType = json['location_type'],
        countrySortCode = json['country_sort_code'],
        placeType = json['place_type'] as String?,
        createdAt = json['created_at'] as String?,
        modifiedAt = json['modified_at'] as String?,
        v = json['__v'] as int?,
        locationLowercase = json['location_lowercase'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'global_port_code' : globalPortCode,
    'port_code' : portCode,
    'portname' : portname,
    'city' : city,
    'lat' : lat,
    'long' : long,
    'region' : region,
    'location' : location,
    'pin_code' : pinCode,
    'is_icd_port' : isIcdPort,
    'is_major_port' : isMajorPort,
    'port_id' : portId,
    'state' : state,
    'vendor_id' : vendorId,
    'leg_code' : legCode,
    'geo_location' : geoLocation?.toJson(),
    'price_available' : priceAvailable,
    'price_currency' : priceCurrency,
    'price' : price,
    'batchcode' : batchcode,
    'portcode_portname' : portcodePortname,
    'mode' : mode,
    'country_code' : countryCode,
    'location_string' : locationString,
    'location_type' : locationType,
    'country_sort_code' : countrySortCode,
    'place_type' : placeType,
    'created_at' : createdAt,
    'modified_at' : modifiedAt,
    '__v' : v,
    'location_lowercase' : locationLowercase
  };
}


class LoadData {
  final List<LoadDetailsValue>? loadDetailsValue;
  final String? loadType;
  final LoadMeta? loadMeta;

  LoadData({
    this.loadDetailsValue,
    this.loadType,
    this.loadMeta,
  });

  LoadData.fromJson(Map<String, dynamic> json)
      : loadDetailsValue = (json['load_details_value'] as List?)?.map((dynamic e) => LoadDetailsValue.fromJson(e as Map<String,dynamic>)).toList(),
        loadType = json['load_type'] as String?,
        loadMeta = (json['load_meta'] as Map<String,dynamic>?) != null ? LoadMeta.fromJson(json['load_meta'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'load_details_value' : loadDetailsValue?.map((e) => e.toJson()).toList(),
    'load_type' : loadType,
    'load_meta' : loadMeta?.toJson()
  };
}

class LoadDetailsValue {
  final int? qty;
  final dynamic length;
  final dynamic breadth;
  final dynamic height;
  final dynamic weight;
  final dynamic volume;
  final List<dynamic>? loadMetrics;

  LoadDetailsValue({
    this.qty,
    this.length,
    this.breadth,
    this.height,
    this.weight,
    this.volume,
    this.loadMetrics,
  });

  LoadDetailsValue.fromJson(Map<String, dynamic> json)
      : qty = json['qty'] as int?,
        length = json['length'],
        breadth = json['breadth'],
        height = json['height'],
        weight = json['weight'],
        volume = json['volume'],
        loadMetrics = json['load_metrics'] as List?;

  Map<String, dynamic> toJson() => {
    'qty' : qty,
    'length' : length,
    'breadth' : breadth,
    'height' : height,
    'weight' : weight,
    'volume' : volume,
    'load_metrics' : loadMetrics
  };
}

class LoadMeta {
  final int? grossWeight;
  final double? volumetricWeight;
  final double? chargeableWeight;
  final int? totalQty;
  final int? totalBl;
  final int? totalSbl;
  final String? volumeUnit;
  final String? inputWeightUnit;
  final String? calculatedWeightUnit;
  final String? dimensionUnit;
  final int? totalWeight;
  final int? totalVolume;

  LoadMeta({
    this.grossWeight,
    this.volumetricWeight,
    this.chargeableWeight,
    this.totalQty,
    this.totalBl,
    this.totalSbl,
    this.volumeUnit,
    this.inputWeightUnit,
    this.calculatedWeightUnit,
    this.dimensionUnit,
    this.totalWeight,
    this.totalVolume,
  });

  LoadMeta.fromJson(Map<String, dynamic> json)
      : grossWeight = json['gross_weight'] as int?,
        volumetricWeight = json['volumetric_weight'] as double?,
        chargeableWeight = json['chargeable_weight'] as double?,
        totalQty = json['total_qty'] as int?,
        totalBl = json['total_bl'] as int?,
        totalSbl = json['total_sbl'] as int?,
        volumeUnit = json['volume_unit'] as String?,
        inputWeightUnit = json['input_weight_unit'] as String?,
        calculatedWeightUnit = json['calculated_weight_unit'] as String?,
        dimensionUnit = json['dimension_unit'] as String?,
        totalWeight = json['total_weight'] as int?,
        totalVolume = json['total_volume'] as int?;

  Map<String, dynamic> toJson() => {
    'gross_weight' : grossWeight,
    'volumetric_weight' : volumetricWeight,
    'chargeable_weight' : chargeableWeight,
    'total_qty' : totalQty,
    'total_bl' : totalBl,
    'total_sbl' : totalSbl,
    'volume_unit' : volumeUnit,
    'input_weight_unit' : inputWeightUnit,
    'calculated_weight_unit' : calculatedWeightUnit,
    'dimension_unit' : dimensionUnit,
    'total_weight' : totalWeight,
    'total_volume' : totalVolume
  };
}

class PickupPortDistence {
  final int? distence;
  final String? unit;

  PickupPortDistence({
    this.distence,
    this.unit,
  });

  PickupPortDistence.fromJson(Map<String, dynamic> json)
      : distence = json['distence'] as int?,
        unit = json['unit'] as String?;

  Map<String, dynamic> toJson() => {
    'distence' : distence,
    'unit' : unit
  };
}

class DeliveryPortDistence {
  final int? distence;
  final String? unit;

  DeliveryPortDistence({
    this.distence,
    this.unit,
  });

  DeliveryPortDistence.fromJson(Map<String, dynamic> json)
      : distence = json['distence'] as int?,
        unit = json['unit'] as String?;

  Map<String, dynamic> toJson() => {
    'distence' : distence,
    'unit' : unit
  };
}


class AdditionalCharges {
  final List<dynamic>? selected;
  final List<dynamic>? available;

  AdditionalCharges({
    this.selected,
    this.available,
  });

  AdditionalCharges.fromJson(Map<String, dynamic> json)
      : selected = json['selected'] as List?,
        available = json['available'] as List?;

  Map<String, dynamic> toJson() => {
    'selected' : selected,
    'available' : available
  };
}