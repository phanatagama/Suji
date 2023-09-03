import '../../domain/entities/surah.dart';

class ListSurah {
  int? code;
  String? status;
  String? message;
  List<Data>? data;

  ListSurah({this.code, this.status, this.message, this.data});

  ListSurah.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  List<Surah> toEntity() {
    return data
            ?.where((e) =>
                e.number != null &&
                e.numberOfVerses != null &&
                e.name != null &&
                e.name?.long != null &&
                e.name?.short != null &&
                e.name?.translation != null &&
                e.name?.translation?.id != null &&
                e.revelation?.id != null)
            .map((e) => Surah(
                number: e.number!,
                numberOfVerses: e.numberOfVerses!,
                nameShort: e.name!.short!,
                nameLong: e.name!.long!,
                nameTransliterationId: e.name!.transliteration!.id!,
                revelationId: e.revelation!.id!))
            .toList() ??
        [];
  }

  Map<String, dynamic> toJson() {
    final dataJson = <String, dynamic>{};
    dataJson['code'] = code;
    dataJson['status'] = status;
    dataJson['message'] = message;
    if (data != null) {
      dataJson['data'] = data?.map((v) => v.toJson()).toList();
    }
    return dataJson;
  }
}

class Data {
  int? number;
  int? sequence;
  int? numberOfVerses;
  Name? name;
  Revelation? revelation;
  Tafsir? tafsir;

  Data(
      {this.number,
      this.sequence,
      this.numberOfVerses,
      this.name,
      this.revelation,
      this.tafsir});

  Data.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    sequence = json['sequence'];
    numberOfVerses = json['numberOfVerses'];
    name = json['name'] != null ? Name?.fromJson(json['name']) : null;
    revelation = json['revelation'] != null
        ? Revelation?.fromJson(json['revelation'])
        : null;
    tafsir = json['tafsir'] != null ? Tafsir?.fromJson(json['tafsir']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['number'] = number;
    data['sequence'] = sequence;
    data['numberOfVerses'] = numberOfVerses;
    if (name != null) {
      data['name'] = name?.toJson();
    }
    if (revelation != null) {
      data['revelation'] = revelation?.toJson();
    }
    if (tafsir != null) {
      data['tafsir'] = tafsir?.toJson();
    }
    return data;
  }
}

class Name {
  String? short;
  String? long;
  Transliteration? transliteration;
  Transliteration? translation;

  Name({this.short, this.long, this.transliteration, this.translation});

  Name.fromJson(Map<String, dynamic> json) {
    short = json['short'];
    long = json['long'];
    transliteration = json['transliteration'] != null
        ? Transliteration?.fromJson(json['transliteration'])
        : null;
    translation = json['translation'] != null
        ? Transliteration?.fromJson(json['translation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['short'] = short;
    data['long'] = long;
    if (transliteration != null) {
      data['transliteration'] = transliteration?.toJson();
    }
    if (translation != null) {
      data['translation'] = translation?.toJson();
    }
    return data;
  }
}

class Transliteration {
  String? en;
  String? id;

  Transliteration({this.en, this.id});

  Transliteration.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['en'] = en;
    data['id'] = id;
    return data;
  }
}

class Revelation {
  String? arab;
  String? en;
  String? id;

  Revelation({this.arab, this.en, this.id});

  Revelation.fromJson(Map<String, dynamic> json) {
    arab = json['arab'];
    en = json['en'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['arab'] = arab;
    data['en'] = en;
    data['id'] = id;
    return data;
  }
}

class Tafsir {
  String? id;

  Tafsir({this.id});

  Tafsir.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    return data;
  }
}
