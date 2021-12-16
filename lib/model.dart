class Nasa {
    String apod_site;
    String copyright;
    String date;
    String description;
    String hdurl;
    String image_thumbnail;
    String media_type;
    String title;
    String url;

    Nasa({this.apod_site, this.copyright, this.date, this.description, this.hdurl, this.image_thumbnail, this.media_type, this.title, this.url});

    factory Nasa.fromJson(Map<String, dynamic> json) {
        return Nasa(
            apod_site: json['apod_site'],
            copyright: json['copyright'],
            date: json['date'],
            description: json['description'],
            hdurl: json['hdurl'],
            image_thumbnail: json['image_thumbnail'],
            media_type: json['media_type'],
            title: json['title'],
            url: json['url'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['apod_site'] = this.apod_site;
        data['copyright'] = this.copyright;
        data['date'] = this.date;
        data['description'] = this.description;
        data['hdurl'] = this.hdurl;
        data['image_thumbnail'] = this.image_thumbnail;
        data['media_type'] = this.media_type;
        data['title'] = this.title;
        data['url'] = this.url;
        return data;
    }
}