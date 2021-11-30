class AdvertsJson {
  int page;
  int limit;
  int pages;
  int total;
  Links lLinks;
  Embedded eEmbedded;

  AdvertsJson(
      {required this.page,
      required  this.limit,
      required  this.pages,
      required  this.total,
      required  this.lLinks,
       required this.eEmbedded});

  AdvertsJson.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    limit = json['limit'];
    pages = json['pages'];
    total = json['total'];
    lLinks = (json['_links'] != null ? Links.fromJson(json['_links']) : null)!;
    eEmbedded = (json['_embedded'] != null
        ? new Embedded.fromJson(json['_embedded'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['limit'] = this.limit;
    data['pages'] = this.pages;
    data['total'] = this.total;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    if (this.eEmbedded != null) {
      data['_embedded'] = this.eEmbedded.toJson();
    }
    return data;
  }
}

class Links {
  Self self;
  Self first;
  Self last;
  Self next;

  Links({required this.self, required this.first, required this.last, required this.next});

  Links.fromJson(Map<String, dynamic> json) {
    self = (json['self'] != null ? Self.fromJson(json['self']) : null)!;
    first = (json['first'] != null ? Self.fromJson(json['first']) : null)!;
    last = (json['last'] != null ? Self.fromJson(json['last']) : null)!;
    next = (json['next'] != null ? Self.fromJson(json['next']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self.toJson();
    }
    if (this.first != null) {
      data['first'] = this.first.toJson();
    }
    if (this.last != null) {
      data['last'] = this.last.toJson();
    }
    if (this.next != null) {
      data['next'] = this.next.toJson();
    }
    return data;
  }
}

class Self {
  String href;

  Self({required this.href});

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}

class Embedded {
  List<Adverts> adverts;

  Embedded({required this.adverts});

  Embedded.fromJson(Map<String, dynamic> json) {
    if (json['adverts'] != null) {
      adverts = <Adverts>[];
      json['adverts'].forEach((v) {
        adverts.add(new Adverts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.adverts != null) {
      data['adverts'] = this.adverts.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Adverts {
  int id;
  CategoryGroup categoryGroup;
  String photo;
  String description;
  String title;
  int price;
  Region region;
  CategoryGroup city;
  CategoryGroup town;
  String modifiedAt;
  Links lLinks;

  Adverts(
      {
        required this.id,
      required this.categoryGroup,
      required this.photo,
      required this.description,
      required this.title,
      required this.price,
      required this.region,
      required this.city,
      required this.town,
      required this.modifiedAt,
      required this.lLinks});

  Adverts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryGroup = (json['categoryGroup'] != null
        ? CategoryGroup.fromJson(json['categoryGroup'])
        : null)!;
    photo = json['photo'];
    description = json['description'];
    title = json['title'];
    price = json['price'];
    region =
    (json['region'] != null ? Region.fromJson(json['region']) : null)!;
    city =
    (json['city'] != null ? CategoryGroup.fromJson(json['city']) : null)!;
    town =
    (json['town'] != null ?   CategoryGroup.fromJson(json['town']) : null)!;
    modifiedAt = json['modified_at'];
    lLinks = (json['_links'] != null ? Links.fromJson(json['_links']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.categoryGroup != null) {
      data['categoryGroup'] = this.categoryGroup.toJson();
    }
    data['photo'] = this.photo;
    data['description'] = this.description;
    data['title'] = this.title;
    data['price'] = this.price;
    data['region'] = this.region.toJson();
    data['city'] = this.city.toJson();
    if (this.town != null) {
      data['town'] = this.town.toJson();
    }
    data['modified_at'] = this.modifiedAt;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    return data;
  }
}

class CategoryGroup {
  int id;
  String name;
  int order;
  Links lLinks;

  CategoryGroup({required this.id, required this.name, required this.order,required this.lLinks});

  CategoryGroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
    lLinks = (json['_links'] != null ? Links.fromJson(json['_links']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    return data;
  }
}

class Links {
  Self self;
  Self search;

  Links({required this.self, required this.search});

  Links.fromJson(Map<String, dynamic> json) {
    self = (json['self'] != null ? Self.fromJson(json['self']) : null)!;
    search = (json['search'] != null ? Self.fromJson(json['search']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self.toJson();
    }
    if (this.search != null) {
      data['search'] = this.search.toJson();
    }
    return data;
  }
}

class Region {
  int id;
  String name;
  String isoCode;
  String codeInsee;
  int order;
  Links lLinks;

  Region(
      {this.id,
        this.name,
        this.isoCode,
        this.codeInsee,
        this.order,
        this.lLinks});

  Region.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isoCode = json['iso_code'];
    codeInsee = json['code_insee'];
    order = json['order'];
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['iso_code'] = this.isoCode;
    data['code_insee'] = this.codeInsee;
    data['order'] = this.order;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    return data;
  }
}

class Links {
  Self self;

  Links({this.self});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'] != null ? new Self.fromJson(json['self']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self.toJson();
    }
    return data;
  }
}
