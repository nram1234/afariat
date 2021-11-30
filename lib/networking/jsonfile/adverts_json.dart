class AdvertsJson {
  AdvertsJson({
    required this.page,
    required this.limit,
    required this.pages,
    required this.total,
    required this. links,
    required this. embedded,
  });
  late final int page;
  late final int limit;
  late final int pages;
  late final int total;
  late final  Links  links;
  late final  Embedded  embedded;

  AdvertsJson.fromJson(Map<String, dynamic> json){
    page = json['page'];
    limit = json['limit'];
    pages = json['pages'];
    total = json['total'];
     links = Links.fromJson(json['_links']);
     embedded = Embedded.fromJson(json['_embedded']);
  }


}

class Links {
  Links({
    required this.self,
    required this.first,
    required this.last,
    required this.next,
  });
  late final Self self;
  late final First first;
  late final Last last;
  late final Next next;

  Links.fromJson(Map<String, dynamic> json){
    self = Self.fromJson(json['self']);
    first = First.fromJson(json['first']);
    last = Last.fromJson(json['last']);
    next = Next.fromJson(json['next']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['self'] = self.toJson();
    _data['first'] = first.toJson();
    _data['last'] = last.toJson();
    _data['next'] = next.toJson();
    return _data;
  }
}

class Self {
  Self({
    required this.href,
  });
  late final String href;

  Self.fromJson(Map<String, dynamic> json){
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['href'] = href;
    return _data;
  }
}

class First {
  First({
    required this.href,
  });
  late final String href;

  First.fromJson(Map<String, dynamic> json){
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final  data = <String, dynamic>{};
    data['href'] = href;
    return  data;
  }
}

class Last {
  Last({
    required this.href,
  });
  late final String href;

  Last.fromJson(Map<String, dynamic> json){
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final  data = <String, dynamic>{};
     data['href'] = href;
    return  data;
  }
}

class Next {
  Next({
    required this.href,
  });
  late final String href;

  Next.fromJson(Map<String, dynamic> json){
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
     data['href'] = href;
    return  data;
  }
}

class Embedded {
  Embedded({
    required this.adverts,
  });
  late final List<Adverts> adverts;

  Embedded.fromJson(Map<String, dynamic> json){
    adverts = List.from(json['adverts']).map((e)=>Adverts.fromJson(e)).toList();
  }


}

class Adverts {
  Adverts({
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
    required this. links,
  });
  late final int id;
  late final CategoryGroup categoryGroup;
  late final String photo;
  late final String description;
  late final String title;
  late final int price;
  late final Region region;
  late final City city;
  late final Town town;
  late final String modifiedAt;
  late final  Links links;

  Adverts.fromJson(Map<String, dynamic> json){
    id = json['id'];
    categoryGroup = CategoryGroup.fromJson(json['categoryGroup']);
    photo = json['photo'];
    description = json['description'];
    title = json['title'];
    price = json['price'];
    region = Region.fromJson(json['region']);
    city = City.fromJson(json['city']);
    town = Town.fromJson(json['town']);
    modifiedAt = json['modified_at'];
     links =  Links.fromJson(json['_links']);
  }


}

class CategoryGroup {
  CategoryGroup({
    required this.id,
    required this.name,
    required this.order,
    required this.links,
  });
  late final int id;
  late final String name;
  late final int order;
  late final Links links;

  CategoryGroup.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    order = json['order'];
     links =  Links.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['order'] = order;
    data['_links'] = links.toJson();
    return data;
  }
}

class Region {
  Region({
    required this.id,
    required this.name,
    required this.isoCode,
    required this.codeInsee,
    required this.order,
    required this.links,
  });
  late final int id;
  late final String name;
  late final String isoCode;
  late final String codeInsee;
  late final int order;
  late final Links  links;

  Region.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    isoCode = json['iso_code'];
    codeInsee = json['code_insee'];
    order = json['order'];
     links =  Links.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['iso_code'] = isoCode;
    data['code_insee'] = codeInsee;
    data['order'] = order;
    data['_links'] =  links.toJson();
    return data;
  }
}

class City {
  City({
    required this.id,
    required this.name,
    required this.order,
    required this.links,
  });
  late final int id;
  late final String name;
  late final int order;
  late final Links  links;

  City.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    order = json['order'];
     links = Links.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['order'] = order;
    data['_links'] =  links.toJson();
    return data;
  }
}

class Town {
  Town({
    required this.id,
    required this.name,
    required this.order,
    required this. links,
  });
  late final int id;
  late final String name;
  late final int order;
  late final Links  links;

  Town.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    order = json['order'];
     links = Links.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['order'] = order;
    _data['_links'] =  links.toJson();
    return _data;
  }
}