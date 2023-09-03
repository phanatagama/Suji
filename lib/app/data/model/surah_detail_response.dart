import 'package:suji/app/domain/entities/surah_detail.dart';
// To parse this JSON data, do
//
//     final surahDetailResponse = surahDetailResponseFromJson(jsonString);

import 'dart:convert';

SurahDetailResponse surahDetailResponseFromJson(String str) =>
    SurahDetailResponse.fromJson(json.decode(str));

String surahDetailResponseToJson(SurahDetailResponse data) =>
    json.encode(data.toJson());

class SurahDetailResponse {
  int? code;
  String? status;
  String? message;
  Data? data;

  SurahDetailResponse({
    this.code,
    this.status,
    this.message,
    this.data,
  });

  factory SurahDetailResponse.fromJson(Map<String, dynamic> json) =>
      SurahDetailResponse(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
  List<SurahDetail> toEntity() {
    final surahDetail = data?.verses;
    return surahDetail
            ?.map((e) => SurahDetail(
                number: data?.number ?? 0,
                numberOfVerses: data?.numberOfVerses ?? 0,
                nameShort: data?.name?.short ?? "null",
                nameLong: data?.name?.long ?? "",
                nameTransliterationId: data?.name?.transliteration?.id ?? "",
                nameTranslationId: data?.name?.translation?.id ?? "",
                relevationId: data?.revelation?.id ?? "",
                preBismillahTextArab: data?.preBismillah?.text?.arab ??
                    e.text?.arab ??
                    "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                preBismillahAudioPrimary: data?.preBismillah?.audio?.primary ??
                    e.audio?.primary ??
                    "https://cdn.alquran.cloud/media/audio/ayah/ar.alafasy/1",
                versesNumberInQuran: e.number?.inQuran ?? 0,
                versesNumberInSurah: e.number?.inSurah ?? 0,
                versesTextArab: e.text?.arab ?? "",
                versesTranslationId: e.translation?.id ?? "",
                versesAudioPrimary: e.audio?.primary ?? "",
                versesTafsirIdShort: e.tafsir?.id?.short ?? ""))
            .toList() ??
        [];
  }
}

class Data {
  int? number;
  int? sequence;
  int? numberOfVerses;
  Name? name;
  Revelation? revelation;
  DataTafsir? tafsir;
  PreBismillah? preBismillah;
  List<Verse>? verses;

  Data({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
    this.preBismillah,
    this.verses,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        revelation: json["revelation"] == null
            ? null
            : Revelation.fromJson(json["revelation"]),
        tafsir:
            json["tafsir"] == null ? null : DataTafsir.fromJson(json["tafsir"]),
        preBismillah: json["preBismillah"] == null
            ? null
            : PreBismillah.fromJson(json["preBismillah"]),
        verses: json["verses"] == null
            ? []
            : List<Verse>.from(json["verses"]!.map((x) => Verse.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "sequence": sequence,
        "numberOfVerses": numberOfVerses,
        "name": name?.toJson(),
        "revelation": revelation?.toJson(),
        "tafsir": tafsir?.toJson(),
        "preBismillah": preBismillah?.toJson(),
        "verses": verses == null
            ? []
            : List<dynamic>.from(verses!.map((x) => x.toJson())),
      };
}

class Name {
  String? short;
  String? long;
  Translation? transliteration;
  Translation? translation;

  Name({
    this.short,
    this.long,
    this.transliteration,
    this.translation,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        long: json["long"],
        transliteration: json["transliteration"] == null
            ? null
            : Translation.fromJson(json["transliteration"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
        "transliteration": transliteration?.toJson(),
        "translation": translation?.toJson(),
      };
}

class Translation {
  String? en;
  String? id;

  Translation({
    this.en,
    this.id,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "id": id,
      };
}

class PreBismillah {
  Text? text;
  Translation? translation;
  Audio? audio;

  PreBismillah({
    this.text,
    this.translation,
    this.audio,
  });

  factory PreBismillah.fromJson(Map<String, dynamic> json) => PreBismillah(
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
        audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text?.toJson(),
        "translation": translation?.toJson(),
        "audio": audio?.toJson(),
      };
}

class Audio {
  String? primary;
  List<String>? secondary;

  Audio({
    this.primary,
    this.secondary,
  });

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        primary: json["primary"],
        secondary: json["secondary"] == null
            ? []
            : List<String>.from(json["secondary"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "primary": primary,
        "secondary": secondary == null
            ? []
            : List<dynamic>.from(secondary!.map((x) => x)),
      };
}

class Text {
  String? arab;
  Transliteration? transliteration;

  Text({
    this.arab,
    this.transliteration,
  });

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        arab: json["arab"],
        transliteration: json["transliteration"] == null
            ? null
            : Transliteration.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "transliteration": transliteration?.toJson(),
      };
}

class Transliteration {
  String? en;

  Transliteration({
    this.en,
  });

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      Transliteration(
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
      };
}

class Revelation {
  String? arab;
  String? en;
  String? id;

  Revelation({
    this.arab,
    this.en,
    this.id,
  });

  factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: json["arab"],
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "en": en,
        "id": id,
      };
}

class DataTafsir {
  String? id;

  DataTafsir({
    this.id,
  });

  factory DataTafsir.fromJson(Map<String, dynamic> json) => DataTafsir(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class Verse {
  Number? number;
  Meta? meta;
  Text? text;
  Translation? translation;
  Audio? audio;
  VerseTafsir? tafsir;

  Verse({
    this.number,
    this.meta,
    this.text,
    this.translation,
    this.audio,
    this.tafsir,
  });

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        number: json["number"] == null ? null : Number.fromJson(json["number"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
        audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
        tafsir: json["tafsir"] == null
            ? null
            : VerseTafsir.fromJson(json["tafsir"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number?.toJson(),
        "meta": meta?.toJson(),
        "text": text?.toJson(),
        "translation": translation?.toJson(),
        "audio": audio?.toJson(),
        "tafsir": tafsir?.toJson(),
      };
}

class Meta {
  int? juz;
  int? page;
  int? manzil;
  int? ruku;
  int? hizbQuarter;
  Sajda? sajda;

  Meta({
    this.juz,
    this.page,
    this.manzil,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        juz: json["juz"],
        page: json["page"],
        manzil: json["manzil"],
        ruku: json["ruku"],
        hizbQuarter: json["hizbQuarter"],
        sajda: json["sajda"] == null ? null : Sajda.fromJson(json["sajda"]),
      );

  Map<String, dynamic> toJson() => {
        "juz": juz,
        "page": page,
        "manzil": manzil,
        "ruku": ruku,
        "hizbQuarter": hizbQuarter,
        "sajda": sajda?.toJson(),
      };
}

class Sajda {
  bool? recommended;
  bool? obligatory;

  Sajda({
    this.recommended,
    this.obligatory,
  });

  factory Sajda.fromJson(Map<String, dynamic> json) => Sajda(
        recommended: json["recommended"],
        obligatory: json["obligatory"],
      );

  Map<String, dynamic> toJson() => {
        "recommended": recommended,
        "obligatory": obligatory,
      };
}

class Number {
  int? inQuran;
  int? inSurah;

  Number({
    this.inQuran,
    this.inSurah,
  });

  factory Number.fromJson(Map<String, dynamic> json) => Number(
        inQuran: json["inQuran"],
        inSurah: json["inSurah"],
      );

  Map<String, dynamic> toJson() => {
        "inQuran": inQuran,
        "inSurah": inSurah,
      };
}

class VerseTafsir {
  Id? id;

  VerseTafsir({
    this.id,
  });

  factory VerseTafsir.fromJson(Map<String, dynamic> json) => VerseTafsir(
        id: json["id"] == null ? null : Id.fromJson(json["id"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
      };
}

class Id {
  String? short;
  String? long;

  Id({
    this.short,
    this.long,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        short: json["short"],
        long: json["long"],
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
      };
}

// class SurahDetailResponse {
//   int? code;
//   String? status;
//   String? message;
//   Data? data;

//   SurahDetailResponse({
//     this.code,
//     this.status,
//     this.message,
//     this.data,
//   });

//   factory SurahDetailResponse.fromJson(Map<String, dynamic> json) =>
//       SurahDetailResponse(
//         code: json["code"],
//         status: json["status"],
//         message: json["message"],
//         data: json["data"] == null ? null : Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "code": code,
//         "status": status,
//         "message": message,
//         "data": data?.toJson(),
//       };

//   List<SurahDetail> toEntity() {
//     final surahDetail = data?.verses;
//     return surahDetail
//             ?.map((e) => SurahDetail(
//                 number: data?.number ?? 0,
//                 numberOfVerses: data?.numberOfVerses ?? 0,
//                 nameShort: data?.name?.short ?? "null",
//                 nameLong: data?.name?.long ?? "",
//                 nameTransliterationId: data?.name?.transliteration?.id ?? "",
//                 nameTranslationId: data?.name?.translation?.id ?? "",
//                 relevationId: data?.revelation?.id ?? "",
//                 preBismillahTextArab:
//                     e.text?.arab ?? "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
//                 preBismillahAudioPrimary: e.audio?.primary ??
//                     "https://cdn.alquran.cloud/media/audio/ayah/ar.alafasy/1",
//                 versesTextArab: e.text?.arab ?? "",
//                 versesTranslationId: e.translation?.id ?? "",
//                 versesAudioPrimary: e.audio?.primary ?? "",
//                 versesTafsirIdShort: e.tafsir?.id?.short ?? ""))
//             .toList() ??
//         [];
//   }
// }

// class Data {
//   int? number;
//   int? sequence;
//   int? numberOfVerses;
//   Name? name;
//   Revelation? revelation;
//   DataTafsir? tafsir;
//   dynamic preBismillah;
//   List<Verse>? verses;

//   Data({
//     this.number,
//     this.sequence,
//     this.numberOfVerses,
//     this.name,
//     this.revelation,
//     this.tafsir,
//     this.preBismillah,
//     this.verses,
//   });

//   factory Data.fromJson(Map<String, dynamic> json) {
//     return  Data(
//         number: json["number"],
//         sequence: json["sequence"],
//         numberOfVerses: json["numberOfVerses"],
//         name: json["name"] == null ? null : Name.fromJson(json["name"]),
//         revelation: json["revelation"] == null
//             ? null
//             : Revelation.fromJson(json["revelation"]),
//         tafsir:
//             json["tafsir"] == null ? null : DataTafsir.fromJson(json["tafsir"]),
//         preBismillah: json["preBismillah"],
//         verses: json["verses"] == null
//             ? []
//             : List<Verse>.from(json["verses"]!.map((x) => Verse.fromJson(x))),
//       );}

//   Map<String, dynamic> toJson() => {
//         "number": number,
//         "sequence": sequence,
//         "numberOfVerses": numberOfVerses,
//         "name": name?.toJson(),
//         "revelation": revelation?.toJson(),
//         "tafsir": tafsir?.toJson(),
//         "preBismillah": preBismillah,
//         "verses": verses == null
//             ? []
//             : List<dynamic>.from(verses!.map((x) => x.toJson())),
//       };
// }

// class Name {
//   String? short;
//   String? long;
//   Translation? transliteration;
//   Translation? translation;

//   Name({
//     this.short,
//     this.long,
//     this.transliteration,
//     this.translation,
//   });

//   factory Name.fromJson(Map<String, dynamic> json) => Name(
//         short: json["short"],
//         long: json["long"],
//         transliteration: json["transliteration"] == null
//             ? null
//             : Translation.fromJson(json["transliteration"]),
//         translation: json["translation"] == null
//             ? null
//             : Translation.fromJson(json["translation"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "short": short,
//         "long": long,
//         "transliteration": transliteration?.toJson(),
//         "translation": translation?.toJson(),
//       };
// }

// class Translation {
//   String? en;
//   String? id;

//   Translation({
//     this.en,
//     this.id,
//   });

//   factory Translation.fromJson(Map<String, dynamic> json) => Translation(
//         en: json["en"],
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "en": en,
//         "id": id,
//       };
// }

// class Revelation {
//   String? arab;
//   String? en;
//   String? id;

//   Revelation({
//     this.arab,
//     this.en,
//     this.id,
//   });

//   factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
//         arab: json["arab"],
//         en: json["en"],
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "arab": arab,
//         "en": en,
//         "id": id,
//       };
// }

// class DataTafsir {
//   String? id;

//   DataTafsir({
//     this.id,
//   });

//   factory DataTafsir.fromJson(Map<String, dynamic> json) => DataTafsir(
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//       };
// }

// class Verse {
//   Number? number;
//   Meta? meta;
//   TextArab? text;
//   Translation? translation;
//   Audio? audio;
//   VerseTafsir? tafsir;

//   Verse({
//     this.number,
//     this.meta,
//     this.text,
//     this.translation,
//     this.audio,
//     this.tafsir,
//   });

//   factory Verse.fromJson(Map<String, dynamic> json) => Verse(
//         number: json["number"] == null ? null : Number.fromJson(json["number"]),
//         meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
//         text: json["text"] == null ? null : TextArab.fromJson(json["text"]),
//         translation: json["translation"] == null
//             ? null
//             : Translation.fromJson(json["translation"]),
//         audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
//         tafsir: json["tafsir"] == null
//             ? null
//             : VerseTafsir.fromJson(json["tafsir"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "number": number?.toJson(),
//         "meta": meta?.toJson(),
//         "text": text?.toJson(),
//         "translation": translation?.toJson(),
//         "audio": audio?.toJson(),
//         "tafsir": tafsir?.toJson(),
//       };
// }

// class Audio {
//   String? primary;
//   List<String>? secondary;

//   Audio({
//     this.primary,
//     this.secondary,
//   });

//   factory Audio.fromJson(Map<String, dynamic> json) => Audio(
//         primary: json["primary"],
//         secondary: json["secondary"] == null
//             ? []
//             : List<String>.from(json["secondary"]!.map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "primary": primary,
//         "secondary": secondary == null
//             ? []
//             : List<dynamic>.from(secondary!.map((x) => x)),
//       };
// }

// class Meta {
//   int? juz;
//   int? page;
//   int? manzil;
//   int? ruku;
//   int? hizbQuarter;
//   Sajda? sajda;

//   Meta({
//     this.juz,
//     this.page,
//     this.manzil,
//     this.ruku,
//     this.hizbQuarter,
//     this.sajda,
//   });

//   factory Meta.fromJson(Map<String, dynamic> json) => Meta(
//         juz: json["juz"],
//         page: json["page"],
//         manzil: json["manzil"],
//         ruku: json["ruku"],
//         hizbQuarter: json["hizbQuarter"],
//         sajda: json["sajda"] == null ? null : Sajda.fromJson(json["sajda"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "juz": juz,
//         "page": page,
//         "manzil": manzil,
//         "ruku": ruku,
//         "hizbQuarter": hizbQuarter,
//         "sajda": sajda?.toJson(),
//       };
// }

// class Sajda {
//   bool? recommended;
//   bool? obligatory;

//   Sajda({
//     this.recommended,
//     this.obligatory,
//   });

//   factory Sajda.fromJson(Map<String, dynamic> json) => Sajda(
//         recommended: json["recommended"],
//         obligatory: json["obligatory"],
//       );

//   Map<String, dynamic> toJson() => {
//         "recommended": recommended,
//         "obligatory": obligatory,
//       };
// }

// class Number {
//   int? inQuran;
//   int? inSurah;

//   Number({
//     this.inQuran,
//     this.inSurah,
//   });

//   factory Number.fromJson(Map<String, dynamic> json) => Number(
//         inQuran: json["inQuran"],
//         inSurah: json["inSurah"],
//       );

//   Map<String, dynamic> toJson() => {
//         "inQuran": inQuran,
//         "inSurah": inSurah,
//       };
// }

// class VerseTafsir {
//   Id? id;

//   VerseTafsir({
//     this.id,
//   });

//   factory VerseTafsir.fromJson(Map<String, dynamic> json) => VerseTafsir(
//         id: json["id"] == null ? null : Id.fromJson(json["id"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id?.toJson(),
//       };
// }

// class Id {
//   String? short;
//   String? long;

//   Id({
//     this.short,
//     this.long,
//   });

//   factory Id.fromJson(Map<String, dynamic> json) => Id(
//         short: json["short"],
//         long: json["long"],
//       );

//   Map<String, dynamic> toJson() => {
//         "short": short,
//         "long": long,
//       };
// }

// class TextArab {
//   String? arab;
//   Transliteration? transliteration;

//   TextArab({
//     this.arab,
//     this.transliteration,
//   });

//   factory TextArab.fromJson(Map<String, dynamic> json) => TextArab(
//         arab: json["arab"],
//         transliteration: json["transliteration"] == null
//             ? null
//             : Transliteration.fromJson(json["transliteration"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "arab": arab,
//         "transliteration": transliteration?.toJson(),
//       };
// }

// class Transliteration {
//   String? en;

//   Transliteration({
//     this.en,
//   });

//   factory Transliteration.fromJson(Map<String, dynamic> json) =>
//       Transliteration(
//         en: json["en"],
//       );

//   Map<String, dynamic> toJson() => {
//         "en": en,
//       };
// }
