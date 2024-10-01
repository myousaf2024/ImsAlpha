class LoginResponse {
  String? accessToken;
  String? tokenType;
  Tenant? tenant;
  List<Permission>? permission;
  Role? role;
  dynamic userPermission;

  LoginResponse(
      {this.accessToken,
      this.tokenType,
      this.tenant,
      this.permission,
      this.role,
      this.userPermission});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    tenant =
        json['tenant'] != null ? Tenant.fromJson(json['tenant']) : null;
    if (json['permission'] != null) {
      permission = <Permission>[];
      json['permission'].forEach((v) {
        permission!.add(Permission.fromJson(v));
      });
    }
    role = json['role:'] != null ? Role.fromJson(json['role:']) : null;
    userPermission = json['user_permission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    if (tenant != null) {
      data['tenant'] = tenant!.toJson();
    }
    if (permission != null) {
      data['permission'] = permission!.map((v) => v.toJson()).toList();
    }
    if (role != null) {
      data['role:'] = role!.toJson();
    }
    data['user_permission'] = userPermission;
    return data;
  }
}

class Tenant {
  String? name;
  dynamic companyPassword;
  dynamic businessEmail1;
  String? tenantNumber;
  String? tenant;
  dynamic businessEmail2;
  dynamic tenantId;
  dynamic businessType;
  dynamic businessPerformanceRelated;
  String? description;
  dynamic businessSubSegment;
  int? createdBy;
  String? dateCreated;
  dynamic businessSubSubSegment;
  int? modifiedBy;
  int? templateId;
  dynamic dateUpdated;
  dynamic businessAddress;
  dynamic companyName;
  dynamic businessWebsite;
  int? id;
  dynamic businessPhone;

  Tenant(
      {this.name,
      this.companyPassword,
      this.businessEmail1,
      this.tenantNumber,
      this.tenant,
      this.businessEmail2,
      this.tenantId,
      this.businessType,
      this.businessPerformanceRelated,
      this.description,
      this.businessSubSegment,
      this.createdBy,
      this.dateCreated,
      this.businessSubSubSegment,
      this.modifiedBy,
      this.templateId,
      this.dateUpdated,
      this.businessAddress,
      this.companyName,
      this.businessWebsite,
      this.id,
      this.businessPhone});

  Tenant.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    companyPassword = json['company_password'];
    businessEmail1 = json['business_email_1'];
    tenantNumber = json['tenant_number'];
    tenant = json['tenant'];
    businessEmail2 = json['business_email_2'];
    tenantId = json['tenant_id'];
    businessType = json['business_type'];
    businessPerformanceRelated = json['business_performance_related'];
    description = json['description'];
    businessSubSegment = json['business_sub_segment'];
    createdBy = json['created_by'];
    dateCreated = json['date_created'];
    businessSubSubSegment = json['business_sub_sub_segment'];
    modifiedBy = json['modified_by'];
    templateId = json['template_id'];
    dateUpdated = json['date_updated'];
    businessAddress = json['business_address'];
    companyName = json['company_name'];
    businessWebsite = json['business_website'];
    id = json['id'];
    businessPhone = json['business_phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['company_password'] = companyPassword;
    data['business_email_1'] = businessEmail1;
    data['tenant_number'] = tenantNumber;
    data['tenant'] = tenant;
    data['business_email_2'] = businessEmail2;
    data['tenant_id'] = tenantId;
    data['business_type'] = businessType;
    data['business_performance_related'] = businessPerformanceRelated;
    data['description'] = description;
    data['business_sub_segment'] = businessSubSegment;
    data['created_by'] = createdBy;
    data['date_created'] = dateCreated;
    data['business_sub_sub_segment'] = businessSubSubSegment;
    data['modified_by'] = modifiedBy;
    data['template_id'] = templateId;
    data['date_updated'] = dateUpdated;
    data['business_address'] = businessAddress;
    data['company_name'] = companyName;
    data['business_website'] = businessWebsite;
    data['id'] = id;
    data['business_phone'] = businessPhone;
    return data;
  }
}

class Permission {
  Module? module;
  List<Permissions>? permissions;

  Permission({this.module, this.permissions});

  Permission.fromJson(Map<String, dynamic> json) {
    module =
        json['module'] != null ? Module.fromJson(json['module']) : null;
    if (json['permissions'] != null) {
      permissions = <Permissions>[];
      json['permissions'].forEach((v) {
        permissions!.add(Permissions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (module != null) {
      data['module'] = module!.toJson();
    }
    if (permissions != null) {
      data['permissions'] = permissions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Module {
  String? name;
  int? uniqueId;

  Module({this.name, this.uniqueId});

  Module.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uniqueId = json['unique_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['unique_id'] = uniqueId;
    return data;
  }
}

class Permissions {
  String? title;
  bool? isChecked;

  Permissions({this.title, this.isChecked});

  Permissions.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    isChecked = json['isChecked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = title;
    data['isChecked'] = isChecked;
    return data;
  }
}

class Role {
  int? roleId;
  String? roleDescription;
  String? roleName;
  dynamic departmentId;

  Role({this.roleId, this.roleDescription, this.roleName, this.departmentId});

  Role.fromJson(Map<String, dynamic> json) {
    roleId = json['role_id'];
    roleDescription = json['role_description'];
    roleName = json['role_name'];
    departmentId = json['department_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['role_id'] = roleId;
    data['role_description'] = roleDescription;
    data['role_name'] = roleName;
    data['department_id'] = departmentId;
    return data;
  }
}
