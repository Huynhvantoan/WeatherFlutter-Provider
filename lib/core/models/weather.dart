class Weather {
  String base;
  String name;
  int visibility;
  int dt;
  int timezone;
  int id;
  int cod;
  CloudsBean clouds;
  CoordBean coord;
  MainBean main;
  SysBean sys;
  WindBean wind;
  List<WeatherListBean> weather;

  Weather({this.base, this.name, this.visibility, this.dt, this.timezone, this.id, this.cod, this.clouds, this.coord, this.main, this.sys, this.wind, this.weather});

  Weather.fromJson(Map<String, dynamic> json) {    
    this.base = json['base'];
    this.name = json['name'];
    this.visibility = json['visibility'];
    this.dt = json['dt'];
    this.timezone = json['timezone'];
    this.id = json['id'];
    this.cod = json['cod'];
    this.clouds = json['clouds'] != null ? CloudsBean.fromJson(json['clouds']) : null;
    this.coord = json['coord'] != null ? CoordBean.fromJson(json['coord']) : null;
    this.main = json['main'] != null ? MainBean.fromJson(json['main']) : null;
    this.sys = json['sys'] != null ? SysBean.fromJson(json['sys']) : null;
    this.wind = json['wind'] != null ? WindBean.fromJson(json['wind']) : null;
    this.weather = (json['weather'] as List)!=null?(json['weather'] as List).map((i) => WeatherListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base'] = this.base;
    data['name'] = this.name;
    data['visibility'] = this.visibility;
    data['dt'] = this.dt;
    data['timezone'] = this.timezone;
    data['id'] = this.id;
    data['cod'] = this.cod;
    if (this.clouds != null) {
      data['clouds'] = this.clouds.toJson();
    }
    if (this.coord != null) {
      data['coord'] = this.coord.toJson();
    }
    if (this.main != null) {
      data['main'] = this.main.toJson();
    }
    if (this.sys != null) {
      data['sys'] = this.sys.toJson();
    }
    if (this.wind != null) {
      data['wind'] = this.wind.toJson();
    }
    data['weather'] = this.weather != null?this.weather.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class CloudsBean {
  int all;

  CloudsBean({this.all});

  CloudsBean.fromJson(Map<String, dynamic> json) {    
    this.all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    return data;
  }
}

class CoordBean {
  double lon;
  double lat;

  CoordBean({this.lon, this.lat});

  CoordBean.fromJson(Map<String, dynamic> json) {    
    this.lon = json['lon'];
    this.lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    return data;
  }
}

class MainBean {
  double temp;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;

  MainBean({this.temp, this.tempMin, this.tempMax, this.pressure, this.humidity});

  MainBean.fromJson(Map<String, dynamic> json) {    
    this.temp = json['temp'];
    this.tempMin = json['temp_min'];
    this.tempMax = json['temp_max'];
    this.pressure = json['pressure'];
    this.humidity = json['humidity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['temp_min'] = this.tempMin;
    data['temp_max'] = this.tempMax;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    return data;
  }
}

class SysBean {
  String country;
  double message;
  int type;
  int id;
  int sunrise;
  int sunset;

  SysBean({this.country, this.message, this.type, this.id, this.sunrise, this.sunset});

  SysBean.fromJson(Map<String, dynamic> json) {    
    this.country = json['country'];
    this.message = json['message'];
    this.type = json['type'];
    this.id = json['id'];
    this.sunrise = json['sunrise'];
    this.sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['message'] = this.message;
    data['type'] = this.type;
    data['id'] = this.id;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    return data;
  }
}

class WindBean {
  double speed;

  WindBean({this.speed});

  WindBean.fromJson(Map<String, dynamic> json) {    
    this.speed = json['speed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this.speed;
    return data;
  }
}

class WeatherListBean {
  String main;
  String description;
  String icon;
  int id;

  WeatherListBean({this.main, this.description, this.icon, this.id});

  WeatherListBean.fromJson(Map<String, dynamic> json) {    
    this.main = json['main'];
    this.description = json['description'];
    this.icon = json['icon'];
    this.id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['id'] = this.id;
    return data;
  }
}
