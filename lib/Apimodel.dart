// To parse this JSON data, do
//
//     final restApiModel = restApiModelFromJson(jsonString);

import 'dart:convert';

List<RestApiModel> restApiModelFromJson(String str) => List<RestApiModel>.from(json.decode(str).map((x) => RestApiModel.fromJson(x)));

String restApiModelToJson(List<RestApiModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RestApiModel {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  RestApiModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  factory RestApiModel.fromJson(Map<String, dynamic> json) => RestApiModel(
    name: json["name"] == null ? null : Name.fromJson(json["name"]),
    tld: json["tld"] == null ? [] : List<String>.from(json["tld"]!.map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    independent: json["independent"],
    status: json["status"],
    unMember: json["unMember"],
    currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
    idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
    capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
    altSpellings: json["altSpellings"] == null ? [] : List<String>.from(json["altSpellings"]!.map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
    translations: json["translations"] == null ? null : Translations.fromJson(json["translations"]),
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
    landlocked: json["landlocked"],
    borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
    area: json["area"]?.toDouble(),
    demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"],
    maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
    population: json["population"],
    gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
    fifa: json["fifa"],
    car: json["car"] == null ? null : Car.fromJson(json["car"]),
    timezones: json["timezones"] == null ? [] : List<String>.from(json["timezones"]!.map((x) => x)),
    continents: json["continents"] == null ? [] : List<String>.from(json["continents"]!.map((x) => x)),
    flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
    coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: json["startOfWeek"],
    capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
    postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name?.toJson(),
    "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
    "cca2": cca2,
    "ccn3": ccn3,
    "cca3": cca3,
    "cioc": cioc,
    "independent": independent,
    "status": status,
    "unMember": unMember,
    "currencies": currencies?.toJson(),
    "idd": idd?.toJson(),
    "capital": capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
    "altSpellings": altSpellings == null ? [] : List<dynamic>.from(altSpellings!.map((x) => x)),
    "region": region,
    "subregion": subregion,
    "languages": languages?.toJson(),
    "translations": translations?.toJson(),
    "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
    "landlocked": landlocked,
    "borders": borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
    "area": area,
    "demonyms": demonyms?.toJson(),
    "flag": flag,
    "maps": maps?.toJson(),
    "population": population,
    "gini": gini?.toJson(),
    "fifa": fifa,
    "car": car?.toJson(),
    "timezones": timezones == null ? [] : List<dynamic>.from(timezones!.map((x) => x)),
    "continents": continents == null ? [] : List<dynamic>.from(continents!.map((x) => x)),
    "flags": flags?.toJson(),
    "coatOfArms": coatOfArms?.toJson(),
    "startOfWeek": startOfWeek,
    "capitalInfo": capitalInfo?.toJson(),
    "postalCode": postalCode?.toJson(),
  };
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
  };
}

class Car {
  List<String>? signs;
  String? side;

  Car({
    this.signs,
    this.side,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: json["signs"] == null ? [] : List<String>.from(json["signs"]!.map((x) => x)),
    side: json["side"],
  );

  Map<String, dynamic> toJson() => {
    "signs": signs == null ? [] : List<dynamic>.from(signs!.map((x) => x)),
    "side": side,
  };
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"],
    svg: json["svg"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
  };
}

class Currencies {
  Aed? mdl;
  Aed? usd;
  Aed? eur;
  Aed? aud;
  Aed? mzn;
  Aed? brl;
  Aed? cve;
  Aed? xaf;
  Aed? all;
  Aed? nzd;
  Aed? ngn;
  Aed? gmd;
  Aed? sos;
  Aed? yer;
  Aed? myr;
  Aed? xcd;
  Aed? gbp;
  Aed? mga;
  Aed? dzd;
  Aed? mad;
  Aed? mru;
  Aed? pyg;
  Aed? lkr;
  Aed? zar;
  Aed? kwd;
  Aed? sll;
  Aed? rwf;
  Aed? syp;
  Aed? hnl;
  Aed? jod;
  Aed? tvd;
  Aed? npr;
  Aed? lrd;
  Aed? ggp;
  Aed? djf;
  Aed? fjd;
  Aed? nok;
  Aed? fkp;
  Aed? kzt;
  Aed? tmt;
  Aed? bgn;
  Aed? xpf;
  Aed? bbd;
  Aed? stn;
  Aed? bnd;
  Aed? sgd;
  Aed? btn;
  Aed? inr;
  Aed? ars;
  Aed? azn;
  Aed? mxn;
  Aed? gtq;
  Aed? kes;
  Aed? czk;
  Aed? gip;
  Aed? awg;
  Aed? aed;
  Aed? ssp;
  Aed? xof;
  Aed? shp;
  Aed? bwp;
  Aed? uzs;
  Aed? tnd;
  Aed? hkd;
  Aed? mkd;
  Aed? srd;
  Aed? sbd;
  Aed? uah;
  Bam? bam;
  Aed? irr;
  Aed? cuc;
  Aed? cup;
  Aed? ern;
  Aed? currenciesTry;
  Aed? php;
  Aed? vuv;
  Aed? bob;
  Aed? ron;
  Aed? khr;
  Aed? zwl;
  Aed? jep;
  Aed? kgs;
  Aed? gyd;
  Aed? amd;
  Aed? lbp;
  Aed? dkk;
  Aed? pgk;
  Aed? zmw;
  Aed? ttd;
  Aed? pen;
  Aed? sek;
  Bam? sdg;
  Aed? omr;
  Aed? twd;
  Aed? mnt;
  Aed? tzs;
  Aed? cad;
  Aed? crc;
  Aed? cny;
  Aed? cop;
  Aed? mmk;
  Aed? rub;
  Aed? kpw;
  Aed? kyd;
  Aed? byn;
  Aed? szl;
  Aed? pln;
  Aed? chf;
  Aed? ves;
  Aed? pab;
  Aed? wst;
  Aed? fok;
  Aed? thb;
  Aed? bsd;
  Aed? top;
  Aed? bif;
  Aed? bhd;
  Aed? imp;
  Aed? htg;
  Aed? afn;
  Aed? ils;
  Aed? lyd;
  Aed? uyu;
  Aed? nio;
  Aed? ckd;
  Aed? lak;
  Aed? kid;
  Aed? ang;
  Aed? jmd;
  Aed? egp;
  Aed? clp;
  Aed? lsl;
  Aed? ghs;
  Aed? scr;
  Aed? aoa;
  Aed? bmd;
  Aed? pkr;
  Aed? sar;
  Aed? krw;
  Aed? etb;
  Aed? bdt;
  Aed? kmf;
  Aed? bzd;
  Aed? ugx;
  Aed? huf;
  Aed? isk;
  Aed? tjs;
  Aed? nad;
  Aed? rsd;
  Aed? mur;
  Aed? mop;
  Aed? mvr;
  Aed? idr;
  Aed? cdf;
  Aed? vnd;
  Aed? gnf;
  Aed? gel;
  Aed? mwk;
  Aed? iqd;
  Aed? jpy;
  Aed? dop;
  Aed? qar;

  Currencies({
    this.mdl,
    this.usd,
    this.eur,
    this.aud,
    this.mzn,
    this.brl,
    this.cve,
    this.xaf,
    this.all,
    this.nzd,
    this.ngn,
    this.gmd,
    this.sos,
    this.yer,
    this.myr,
    this.xcd,
    this.gbp,
    this.mga,
    this.dzd,
    this.mad,
    this.mru,
    this.pyg,
    this.lkr,
    this.zar,
    this.kwd,
    this.sll,
    this.rwf,
    this.syp,
    this.hnl,
    this.jod,
    this.tvd,
    this.npr,
    this.lrd,
    this.ggp,
    this.djf,
    this.fjd,
    this.nok,
    this.fkp,
    this.kzt,
    this.tmt,
    this.bgn,
    this.xpf,
    this.bbd,
    this.stn,
    this.bnd,
    this.sgd,
    this.btn,
    this.inr,
    this.ars,
    this.azn,
    this.mxn,
    this.gtq,
    this.kes,
    this.czk,
    this.gip,
    this.awg,
    this.aed,
    this.ssp,
    this.xof,
    this.shp,
    this.bwp,
    this.uzs,
    this.tnd,
    this.hkd,
    this.mkd,
    this.srd,
    this.sbd,
    this.uah,
    this.bam,
    this.irr,
    this.cuc,
    this.cup,
    this.ern,
    this.currenciesTry,
    this.php,
    this.vuv,
    this.bob,
    this.ron,
    this.khr,
    this.zwl,
    this.jep,
    this.kgs,
    this.gyd,
    this.amd,
    this.lbp,
    this.dkk,
    this.pgk,
    this.zmw,
    this.ttd,
    this.pen,
    this.sek,
    this.sdg,
    this.omr,
    this.twd,
    this.mnt,
    this.tzs,
    this.cad,
    this.crc,
    this.cny,
    this.cop,
    this.mmk,
    this.rub,
    this.kpw,
    this.kyd,
    this.byn,
    this.szl,
    this.pln,
    this.chf,
    this.ves,
    this.pab,
    this.wst,
    this.fok,
    this.thb,
    this.bsd,
    this.top,
    this.bif,
    this.bhd,
    this.imp,
    this.htg,
    this.afn,
    this.ils,
    this.lyd,
    this.uyu,
    this.nio,
    this.ckd,
    this.lak,
    this.kid,
    this.ang,
    this.jmd,
    this.egp,
    this.clp,
    this.lsl,
    this.ghs,
    this.scr,
    this.aoa,
    this.bmd,
    this.pkr,
    this.sar,
    this.krw,
    this.etb,
    this.bdt,
    this.kmf,
    this.bzd,
    this.ugx,
    this.huf,
    this.isk,
    this.tjs,
    this.nad,
    this.rsd,
    this.mur,
    this.mop,
    this.mvr,
    this.idr,
    this.cdf,
    this.vnd,
    this.gnf,
    this.gel,
    this.mwk,
    this.iqd,
    this.jpy,
    this.dop,
    this.qar,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
    mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
    usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
    eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
    aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
    mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
    brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
    cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
    xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
    all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
    nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
    ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
    gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
    sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
    yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
    myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
    xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
    gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
    mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
    dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
    mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
    mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
    pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
    lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
    zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
    kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
    sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
    rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
    syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
    hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
    jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
    tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
    npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
    lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
    ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
    djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
    fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
    nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
    fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
    kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
    tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
    bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
    xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
    bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
    stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
    bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
    sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
    btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
    inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
    ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
    azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
    mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
    gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
    kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
    czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
    gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
    awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
    aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
    ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
    xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
    shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
    bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
    uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
    tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
    hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
    mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
    srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
    sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
    uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
    bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
    irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
    cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
    cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
    ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
    currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
    php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
    vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
    bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
    ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
    khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
    zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
    jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
    kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
    gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
    amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
    lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
    dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
    pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
    zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
    ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
    pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
    sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
    sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
    omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
    twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
    mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
    tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
    cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
    crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
    cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
    cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
    mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
    rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
    kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
    kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
    byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
    szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
    pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
    chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
    ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
    pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
    wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
    fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
    thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
    bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
    top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
    bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
    bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
    imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
    htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
    afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
    ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
    lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
    uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
    nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
    ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
    lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
    kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
    ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
    jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
    egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
    clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
    lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
    ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
    scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
    aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
    bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
    pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
    sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
    krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
    etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
    bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
    kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
    bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
    ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
    huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
    isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
    tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
    nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
    rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
    mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
    mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
    mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
    idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
    cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
    vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
    gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
    gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
    mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
    iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
    jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
    dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
    qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
  );

  Map<String, dynamic> toJson() => {
    "MDL": mdl?.toJson(),
    "USD": usd?.toJson(),
    "EUR": eur?.toJson(),
    "AUD": aud?.toJson(),
    "MZN": mzn?.toJson(),
    "BRL": brl?.toJson(),
    "CVE": cve?.toJson(),
    "XAF": xaf?.toJson(),
    "ALL": all?.toJson(),
    "NZD": nzd?.toJson(),
    "NGN": ngn?.toJson(),
    "GMD": gmd?.toJson(),
    "SOS": sos?.toJson(),
    "YER": yer?.toJson(),
    "MYR": myr?.toJson(),
    "XCD": xcd?.toJson(),
    "GBP": gbp?.toJson(),
    "MGA": mga?.toJson(),
    "DZD": dzd?.toJson(),
    "MAD": mad?.toJson(),
    "MRU": mru?.toJson(),
    "PYG": pyg?.toJson(),
    "LKR": lkr?.toJson(),
    "ZAR": zar?.toJson(),
    "KWD": kwd?.toJson(),
    "SLL": sll?.toJson(),
    "RWF": rwf?.toJson(),
    "SYP": syp?.toJson(),
    "HNL": hnl?.toJson(),
    "JOD": jod?.toJson(),
    "TVD": tvd?.toJson(),
    "NPR": npr?.toJson(),
    "LRD": lrd?.toJson(),
    "GGP": ggp?.toJson(),
    "DJF": djf?.toJson(),
    "FJD": fjd?.toJson(),
    "NOK": nok?.toJson(),
    "FKP": fkp?.toJson(),
    "KZT": kzt?.toJson(),
    "TMT": tmt?.toJson(),
    "BGN": bgn?.toJson(),
    "XPF": xpf?.toJson(),
    "BBD": bbd?.toJson(),
    "STN": stn?.toJson(),
    "BND": bnd?.toJson(),
    "SGD": sgd?.toJson(),
    "BTN": btn?.toJson(),
    "INR": inr?.toJson(),
    "ARS": ars?.toJson(),
    "AZN": azn?.toJson(),
    "MXN": mxn?.toJson(),
    "GTQ": gtq?.toJson(),
    "KES": kes?.toJson(),
    "CZK": czk?.toJson(),
    "GIP": gip?.toJson(),
    "AWG": awg?.toJson(),
    "AED": aed?.toJson(),
    "SSP": ssp?.toJson(),
    "XOF": xof?.toJson(),
    "SHP": shp?.toJson(),
    "BWP": bwp?.toJson(),
    "UZS": uzs?.toJson(),
    "TND": tnd?.toJson(),
    "HKD": hkd?.toJson(),
    "MKD": mkd?.toJson(),
    "SRD": srd?.toJson(),
    "SBD": sbd?.toJson(),
    "UAH": uah?.toJson(),
    "BAM": bam?.toJson(),
    "IRR": irr?.toJson(),
    "CUC": cuc?.toJson(),
    "CUP": cup?.toJson(),
    "ERN": ern?.toJson(),
    "TRY": currenciesTry?.toJson(),
    "PHP": php?.toJson(),
    "VUV": vuv?.toJson(),
    "BOB": bob?.toJson(),
    "RON": ron?.toJson(),
    "KHR": khr?.toJson(),
    "ZWL": zwl?.toJson(),
    "JEP": jep?.toJson(),
    "KGS": kgs?.toJson(),
    "GYD": gyd?.toJson(),
    "AMD": amd?.toJson(),
    "LBP": lbp?.toJson(),
    "DKK": dkk?.toJson(),
    "PGK": pgk?.toJson(),
    "ZMW": zmw?.toJson(),
    "TTD": ttd?.toJson(),
    "PEN": pen?.toJson(),
    "SEK": sek?.toJson(),
    "SDG": sdg?.toJson(),
    "OMR": omr?.toJson(),
    "TWD": twd?.toJson(),
    "MNT": mnt?.toJson(),
    "TZS": tzs?.toJson(),
    "CAD": cad?.toJson(),
    "CRC": crc?.toJson(),
    "CNY": cny?.toJson(),
    "COP": cop?.toJson(),
    "MMK": mmk?.toJson(),
    "RUB": rub?.toJson(),
    "KPW": kpw?.toJson(),
    "KYD": kyd?.toJson(),
    "BYN": byn?.toJson(),
    "SZL": szl?.toJson(),
    "PLN": pln?.toJson(),
    "CHF": chf?.toJson(),
    "VES": ves?.toJson(),
    "PAB": pab?.toJson(),
    "WST": wst?.toJson(),
    "FOK": fok?.toJson(),
    "THB": thb?.toJson(),
    "BSD": bsd?.toJson(),
    "TOP": top?.toJson(),
    "BIF": bif?.toJson(),
    "BHD": bhd?.toJson(),
    "IMP": imp?.toJson(),
    "HTG": htg?.toJson(),
    "AFN": afn?.toJson(),
    "ILS": ils?.toJson(),
    "LYD": lyd?.toJson(),
    "UYU": uyu?.toJson(),
    "NIO": nio?.toJson(),
    "CKD": ckd?.toJson(),
    "LAK": lak?.toJson(),
    "KID": kid?.toJson(),
    "ANG": ang?.toJson(),
    "JMD": jmd?.toJson(),
    "EGP": egp?.toJson(),
    "CLP": clp?.toJson(),
    "LSL": lsl?.toJson(),
    "GHS": ghs?.toJson(),
    "SCR": scr?.toJson(),
    "AOA": aoa?.toJson(),
    "BMD": bmd?.toJson(),
    "PKR": pkr?.toJson(),
    "SAR": sar?.toJson(),
    "KRW": krw?.toJson(),
    "ETB": etb?.toJson(),
    "BDT": bdt?.toJson(),
    "KMF": kmf?.toJson(),
    "BZD": bzd?.toJson(),
    "UGX": ugx?.toJson(),
    "HUF": huf?.toJson(),
    "ISK": isk?.toJson(),
    "TJS": tjs?.toJson(),
    "NAD": nad?.toJson(),
    "RSD": rsd?.toJson(),
    "MUR": mur?.toJson(),
    "MOP": mop?.toJson(),
    "MVR": mvr?.toJson(),
    "IDR": idr?.toJson(),
    "CDF": cdf?.toJson(),
    "VND": vnd?.toJson(),
    "GNF": gnf?.toJson(),
    "GEL": gel?.toJson(),
    "MWK": mwk?.toJson(),
    "IQD": iqd?.toJson(),
    "JPY": jpy?.toJson(),
    "DOP": dop?.toJson(),
    "QAR": qar?.toJson(),
  };
}

class Aed {
  String? name;
  String? symbol;

  Aed({
    this.name,
    this.symbol,
  });

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
    name: json["name"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "symbol": symbol,
  };
}

class Bam {
  String? name;

  Bam({
    this.name,
  });

  factory Bam.fromJson(Map<String, dynamic> json) => Bam(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({
    this.eng,
    this.fra,
  });

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng?.toJson(),
    "fra": fra?.toJson(),
  };
}

class Eng {
  String? f;
  String? m;

  Eng({
    this.f,
    this.m,
  });

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"],
    m: json["m"],
  );

  Map<String, dynamic> toJson() => {
    "f": f,
    "m": m,
  };
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
    png: json["png"],
    svg: json["svg"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
    "alt": alt,
  };
}

class Gini {
  double? the2018;
  double? the2012;
  double? the2014;
  double? the2019;
  double? the2015;
  double? the2017;
  double? the2016;
  double? the2011;
  double? the2003;
  double? the2010;
  double? the2008;
  double? the2013;
  double? the1998;
  double? the2005;
  double? the1999;
  double? the2009;
  double? the1992;
  double? the2006;
  double? the2004;

  Gini({
    this.the2018,
    this.the2012,
    this.the2014,
    this.the2019,
    this.the2015,
    this.the2017,
    this.the2016,
    this.the2011,
    this.the2003,
    this.the2010,
    this.the2008,
    this.the2013,
    this.the1998,
    this.the2005,
    this.the1999,
    this.the2009,
    this.the1992,
    this.the2006,
    this.the2004,
  });

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
    the2018: json["2018"]?.toDouble(),
    the2012: json["2012"]?.toDouble(),
    the2014: json["2014"]?.toDouble(),
    the2019: json["2019"]?.toDouble(),
    the2015: json["2015"]?.toDouble(),
    the2017: json["2017"]?.toDouble(),
    the2016: json["2016"]?.toDouble(),
    the2011: json["2011"]?.toDouble(),
    the2003: json["2003"]?.toDouble(),
    the2010: json["2010"]?.toDouble(),
    the2008: json["2008"]?.toDouble(),
    the2013: json["2013"]?.toDouble(),
    the1998: json["1998"]?.toDouble(),
    the2005: json["2005"]?.toDouble(),
    the1999: json["1999"]?.toDouble(),
    the2009: json["2009"]?.toDouble(),
    the1992: json["1992"]?.toDouble(),
    the2006: json["2006"]?.toDouble(),
    the2004: json["2004"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "2018": the2018,
    "2012": the2012,
    "2014": the2014,
    "2019": the2019,
    "2015": the2015,
    "2017": the2017,
    "2016": the2016,
    "2011": the2011,
    "2003": the2003,
    "2010": the2010,
    "2008": the2008,
    "2013": the2013,
    "1998": the1998,
    "2005": the2005,
    "1999": the1999,
    "2009": the2009,
    "1992": the1992,
    "2006": the2006,
    "2004": the2004,
  };
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"],
    suffixes: json["suffixes"] == null ? [] : List<String>.from(json["suffixes"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "root": root,
    "suffixes": suffixes == null ? [] : List<dynamic>.from(suffixes!.map((x) => x)),
  };
}

class Languages {
  String? ron;
  String? eng;
  String? fra;
  String? nau;
  String? por;
  String? spa;
  String? sqi;
  String? niu;
  String? pau;
  String? ara;
  String? som;
  String? msa;
  String? mlg;
  String? ber;
  String? mey;
  String? ell;
  String? tur;
  String? gle;
  String? grn;
  String? sin;
  String? tam;
  String? afr;
  String? nbl;
  String? nso;
  String? sot;
  String? ssw;
  String? tsn;
  String? tso;
  String? ven;
  String? xho;
  String? zul;
  String? hrv;
  String? cal;
  String? cha;
  String? kin;
  String? srp;
  String? tvl;
  String? nep;
  String? de;
  String? nfr;
  String? sag;
  String? fij;
  String? hif;
  String? nno;
  String? nob;
  String? smi;
  String? lav;
  String? kaz;
  String? rus;
  String? swe;
  String? tuk;
  String? bul;
  String? smo;
  String? tkl;
  String? dzo;
  String? aze;
  String? swa;
  String? mlt;
  String? ces;
  String? slk;
  String? nld;
  String? pap;
  String? uzb;
  String? zho;
  String? mkd;
  String? deu;
  String? ukr;
  String? fin;
  String? bos;
  String? fas;
  String? tir;
  String? lit;
  String? pov;
  String? fil;
  String? bis;
  String? aym;
  String? que;
  String? khm;
  String? bwg;
  String? kck;
  String? khi;
  String? ndc;
  String? nde;
  String? nya;
  String? sna;
  String? toi;
  String? zib;
  String? nrf;
  String? kir;
  String? hye;
  String? cnr;
  String? kal;
  String? hmo;
  String? tpi;
  String? hin;
  String? mon;
  String? mya;
  String? kor;
  String? nor;
  String? bel;
  String? pol;
  String? gsw;
  String? ita;
  String? roh;
  String? kon;
  String? lin;
  String? dan;
  String? ltz;
  String? fao;
  String? slv;
  String? tha;
  String? ton;
  String? lat;
  String? run;
  String? mah;
  String? glv;
  String? hat;
  String? prs;
  String? pus;
  String? heb;
  String? pih;
  String? rar;
  String? lao;
  String? gil;
  String? cat;
  String? eus;
  String? glc;
  String? jam;
  String? crs;
  String? urd;
  String? amh;
  String? ben;
  String? mri;
  String? nzs;
  String? zdj;
  String? bjz;
  String? hun;
  String? isl;
  String? tgk;
  String? her;
  String? hgm;
  String? kwn;
  String? loz;
  String? ndo;
  String? tet;
  String? mfe;
  String? div;
  String? ind;
  String? lua;
  String? est;
  String? vie;
  String? kat;
  String? arc;
  String? ckb;
  String? jpn;

  Languages({
    this.ron,
    this.eng,
    this.fra,
    this.nau,
    this.por,
    this.spa,
    this.sqi,
    this.niu,
    this.pau,
    this.ara,
    this.som,
    this.msa,
    this.mlg,
    this.ber,
    this.mey,
    this.ell,
    this.tur,
    this.gle,
    this.grn,
    this.sin,
    this.tam,
    this.afr,
    this.nbl,
    this.nso,
    this.sot,
    this.ssw,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zul,
    this.hrv,
    this.cal,
    this.cha,
    this.kin,
    this.srp,
    this.tvl,
    this.nep,
    this.de,
    this.nfr,
    this.sag,
    this.fij,
    this.hif,
    this.nno,
    this.nob,
    this.smi,
    this.lav,
    this.kaz,
    this.rus,
    this.swe,
    this.tuk,
    this.bul,
    this.smo,
    this.tkl,
    this.dzo,
    this.aze,
    this.swa,
    this.mlt,
    this.ces,
    this.slk,
    this.nld,
    this.pap,
    this.uzb,
    this.zho,
    this.mkd,
    this.deu,
    this.ukr,
    this.fin,
    this.bos,
    this.fas,
    this.tir,
    this.lit,
    this.pov,
    this.fil,
    this.bis,
    this.aym,
    this.que,
    this.khm,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.nya,
    this.sna,
    this.toi,
    this.zib,
    this.nrf,
    this.kir,
    this.hye,
    this.cnr,
    this.kal,
    this.hmo,
    this.tpi,
    this.hin,
    this.mon,
    this.mya,
    this.kor,
    this.nor,
    this.bel,
    this.pol,
    this.gsw,
    this.ita,
    this.roh,
    this.kon,
    this.lin,
    this.dan,
    this.ltz,
    this.fao,
    this.slv,
    this.tha,
    this.ton,
    this.lat,
    this.run,
    this.mah,
    this.glv,
    this.hat,
    this.prs,
    this.pus,
    this.heb,
    this.pih,
    this.rar,
    this.lao,
    this.gil,
    this.cat,
    this.eus,
    this.glc,
    this.jam,
    this.crs,
    this.urd,
    this.amh,
    this.ben,
    this.mri,
    this.nzs,
    this.zdj,
    this.bjz,
    this.hun,
    this.isl,
    this.tgk,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.tet,
    this.mfe,
    this.div,
    this.ind,
    this.lua,
    this.est,
    this.vie,
    this.kat,
    this.arc,
    this.ckb,
    this.jpn,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
    ron: json["ron"],
    eng: json["eng"],
    fra: json["fra"],
    nau: json["nau"],
    por: json["por"],
    spa: json["spa"],
    sqi: json["sqi"],
    niu: json["niu"],
    pau: json["pau"],
    ara: json["ara"],
    som: json["som"],
    msa: json["msa"],
    mlg: json["mlg"],
    ber: json["ber"],
    mey: json["mey"],
    ell: json["ell"],
    tur: json["tur"],
    gle: json["gle"],
    grn: json["grn"],
    sin: json["sin"],
    tam: json["tam"],
    afr: json["afr"],
    nbl: json["nbl"],
    nso: json["nso"],
    sot: json["sot"],
    ssw: json["ssw"],
    tsn: json["tsn"],
    tso: json["tso"],
    ven: json["ven"],
    xho: json["xho"],
    zul: json["zul"],
    hrv: json["hrv"],
    cal: json["cal"],
    cha: json["cha"],
    kin: json["kin"],
    srp: json["srp"],
    tvl: json["tvl"],
    nep: json["nep"],
    de: json["de"],
    nfr: json["nfr"],
    sag: json["sag"],
    fij: json["fij"],
    hif: json["hif"],
    nno: json["nno"],
    nob: json["nob"],
    smi: json["smi"],
    lav: json["lav"],
    kaz: json["kaz"],
    rus: json["rus"],
    swe: json["swe"],
    tuk: json["tuk"],
    bul: json["bul"],
    smo: json["smo"],
    tkl: json["tkl"],
    dzo: json["dzo"],
    aze: json["aze"],
    swa: json["swa"],
    mlt: json["mlt"],
    ces: json["ces"],
    slk: json["slk"],
    nld: json["nld"],
    pap: json["pap"],
    uzb: json["uzb"],
    zho: json["zho"],
    mkd: json["mkd"],
    deu: json["deu"],
    ukr: json["ukr"],
    fin: json["fin"],
    bos: json["bos"],
    fas: json["fas"],
    tir: json["tir"],
    lit: json["lit"],
    pov: json["pov"],
    fil: json["fil"],
    bis: json["bis"],
    aym: json["aym"],
    que: json["que"],
    khm: json["khm"],
    bwg: json["bwg"],
    kck: json["kck"],
    khi: json["khi"],
    ndc: json["ndc"],
    nde: json["nde"],
    nya: json["nya"],
    sna: json["sna"],
    toi: json["toi"],
    zib: json["zib"],
    nrf: json["nrf"],
    kir: json["kir"],
    hye: json["hye"],
    cnr: json["cnr"],
    kal: json["kal"],
    hmo: json["hmo"],
    tpi: json["tpi"],
    hin: json["hin"],
    mon: json["mon"],
    mya: json["mya"],
    kor: json["kor"],
    nor: json["nor"],
    bel: json["bel"],
    pol: json["pol"],
    gsw: json["gsw"],
    ita: json["ita"],
    roh: json["roh"],
    kon: json["kon"],
    lin: json["lin"],
    dan: json["dan"],
    ltz: json["ltz"],
    fao: json["fao"],
    slv: json["slv"],
    tha: json["tha"],
    ton: json["ton"],
    lat: json["lat"],
    run: json["run"],
    mah: json["mah"],
    glv: json["glv"],
    hat: json["hat"],
    prs: json["prs"],
    pus: json["pus"],
    heb: json["heb"],
    pih: json["pih"],
    rar: json["rar"],
    lao: json["lao"],
    gil: json["gil"],
    cat: json["cat"],
    eus: json["eus"],
    glc: json["glc"],
    jam: json["jam"],
    crs: json["crs"],
    urd: json["urd"],
    amh: json["amh"],
    ben: json["ben"],
    mri: json["mri"],
    nzs: json["nzs"],
    zdj: json["zdj"],
    bjz: json["bjz"],
    hun: json["hun"],
    isl: json["isl"],
    tgk: json["tgk"],
    her: json["her"],
    hgm: json["hgm"],
    kwn: json["kwn"],
    loz: json["loz"],
    ndo: json["ndo"],
    tet: json["tet"],
    mfe: json["mfe"],
    div: json["div"],
    ind: json["ind"],
    lua: json["lua"],
    est: json["est"],
    vie: json["vie"],
    kat: json["kat"],
    arc: json["arc"],
    ckb: json["ckb"],
    jpn: json["jpn"],
  );

  Map<String, dynamic> toJson() => {
    "ron": ron,
    "eng": eng,
    "fra": fra,
    "nau": nau,
    "por": por,
    "spa": spa,
    "sqi": sqi,
    "niu": niu,
    "pau": pau,
    "ara": ara,
    "som": som,
    "msa": msa,
    "mlg": mlg,
    "ber": ber,
    "mey": mey,
    "ell": ell,
    "tur": tur,
    "gle": gle,
    "grn": grn,
    "sin": sin,
    "tam": tam,
    "afr": afr,
    "nbl": nbl,
    "nso": nso,
    "sot": sot,
    "ssw": ssw,
    "tsn": tsn,
    "tso": tso,
    "ven": ven,
    "xho": xho,
    "zul": zul,
    "hrv": hrv,
    "cal": cal,
    "cha": cha,
    "kin": kin,
    "srp": srp,
    "tvl": tvl,
    "nep": nep,
    "de": de,
    "nfr": nfr,
    "sag": sag,
    "fij": fij,
    "hif": hif,
    "nno": nno,
    "nob": nob,
    "smi": smi,
    "lav": lav,
    "kaz": kaz,
    "rus": rus,
    "swe": swe,
    "tuk": tuk,
    "bul": bul,
    "smo": smo,
    "tkl": tkl,
    "dzo": dzo,
    "aze": aze,
    "swa": swa,
    "mlt": mlt,
    "ces": ces,
    "slk": slk,
    "nld": nld,
    "pap": pap,
    "uzb": uzb,
    "zho": zho,
    "mkd": mkd,
    "deu": deu,
    "ukr": ukr,
    "fin": fin,
    "bos": bos,
    "fas": fas,
    "tir": tir,
    "lit": lit,
    "pov": pov,
    "fil": fil,
    "bis": bis,
    "aym": aym,
    "que": que,
    "khm": khm,
    "bwg": bwg,
    "kck": kck,
    "khi": khi,
    "ndc": ndc,
    "nde": nde,
    "nya": nya,
    "sna": sna,
    "toi": toi,
    "zib": zib,
    "nrf": nrf,
    "kir": kir,
    "hye": hye,
    "cnr": cnr,
    "kal": kal,
    "hmo": hmo,
    "tpi": tpi,
    "hin": hin,
    "mon": mon,
    "mya": mya,
    "kor": kor,
    "nor": nor,
    "bel": bel,
    "pol": pol,
    "gsw": gsw,
    "ita": ita,
    "roh": roh,
    "kon": kon,
    "lin": lin,
    "dan": dan,
    "ltz": ltz,
    "fao": fao,
    "slv": slv,
    "tha": tha,
    "ton": ton,
    "lat": lat,
    "run": run,
    "mah": mah,
    "glv": glv,
    "hat": hat,
    "prs": prs,
    "pus": pus,
    "heb": heb,
    "pih": pih,
    "rar": rar,
    "lao": lao,
    "gil": gil,
    "cat": cat,
    "eus": eus,
    "glc": glc,
    "jam": jam,
    "crs": crs,
    "urd": urd,
    "amh": amh,
    "ben": ben,
    "mri": mri,
    "nzs": nzs,
    "zdj": zdj,
    "bjz": bjz,
    "hun": hun,
    "isl": isl,
    "tgk": tgk,
    "her": her,
    "hgm": hgm,
    "kwn": kwn,
    "loz": loz,
    "ndo": ndo,
    "tet": tet,
    "mfe": mfe,
    "div": div,
    "ind": ind,
    "lua": lua,
    "est": est,
    "vie": vie,
    "kat": kat,
    "arc": arc,
    "ckb": ckb,
    "jpn": jpn,
  };
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps,
    "openStreetMaps": openStreetMaps,
  };
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: json["nativeName"] == null ? null : NativeName.fromJson(json["nativeName"]),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": nativeName?.toJson(),
  };
}

class NativeName {
  Ara? ron;
  Ara? eng;
  Ara? fra;
  Ara? nau;
  Ara? por;
  Ara? spa;
  Ara? sqi;
  Ara? niu;
  Ara? pau;
  Ara? ara;
  Ara? som;
  Ara? msa;
  Ara? mlg;
  Ara? ber;
  Ara? mey;
  Ara? ell;
  Ara? tur;
  Ara? gle;
  Ara? grn;
  Ara? sin;
  Ara? tam;
  Ara? afr;
  Ara? nbl;
  Ara? nso;
  Ara? sot;
  Ara? ssw;
  Ara? tsn;
  Ara? tso;
  Ara? ven;
  Ara? xho;
  Ara? zul;
  Ara? hrv;
  Ara? cal;
  Ara? cha;
  Ara? kin;
  Ara? srp;
  Ara? tvl;
  Ara? nep;
  Ara? bar;
  Ara? nfr;
  Ara? sag;
  Ara? fij;
  Ara? hif;
  Ara? nno;
  Ara? nob;
  Ara? smi;
  Ara? lav;
  Ara? kaz;
  Ara? rus;
  Ara? swe;
  Ara? tuk;
  Ara? bul;
  Ara? smo;
  Ara? tkl;
  Ara? dzo;
  Ara? aze;
  Ara? swa;
  Ara? mlt;
  Ara? ces;
  Ara? slk;
  Ara? nld;
  Ara? pap;
  Ara? uzb;
  Ara? zho;
  Ara? mkd;
  Ara? deu;
  Ara? ukr;
  Ara? fin;
  Ara? bos;
  Ara? fas;
  Ara? tir;
  Ara? lit;
  Ara? pov;
  Ara? fil;
  Ara? bis;
  Ara? aym;
  Ara? que;
  Ara? khm;
  Ara? bwg;
  Ara? kck;
  Ara? khi;
  Ara? ndc;
  Ara? nde;
  Ara? nya;
  Ara? sna;
  Ara? toi;
  Ara? zib;
  Ara? nrf;
  Ara? kir;
  Ara? hye;
  Ara? cnr;
  Ara? kal;
  Ara? hmo;
  Ara? tpi;
  Ara? hin;
  Ara? mon;
  Ara? mya;
  Ara? kor;
  Ara? nor;
  Ara? bel;
  Ara? pol;
  Ara? gsw;
  Ara? ita;
  Ara? roh;
  Ara? kon;
  Ara? lin;
  Ara? dan;
  Ara? ltz;
  Ara? fao;
  Ara? slv;
  Ara? tha;
  Ara? ton;
  Ara? lat;
  Ara? run;
  Ara? mah;
  Ara? glv;
  Ara? hat;
  Ara? prs;
  Ara? pus;
  Ara? heb;
  Ara? pih;
  Ara? rar;
  Ara? lao;
  Ara? gil;
  Ara? jam;
  Ara? cat;
  Ara? crs;
  Ara? urd;
  Ara? amh;
  Ara? ben;
  Ara? mri;
  Ara? nzs;
  Ara? zdj;
  Ara? bjz;
  Ara? hun;
  Ara? isl;
  Ara? tgk;
  Ara? her;
  Ara? hgm;
  Ara? kwn;
  Ara? loz;
  Ara? ndo;
  Ara? tet;
  Ara? mfe;
  Ara? div;
  Ara? ind;
  Ara? lua;
  Ara? est;
  Ara? vie;
  Ara? kat;
  Ara? arc;
  Ara? ckb;
  Ara? jpn;

  NativeName({
    this.ron,
    this.eng,
    this.fra,
    this.nau,
    this.por,
    this.spa,
    this.sqi,
    this.niu,
    this.pau,
    this.ara,
    this.som,
    this.msa,
    this.mlg,
    this.ber,
    this.mey,
    this.ell,
    this.tur,
    this.gle,
    this.grn,
    this.sin,
    this.tam,
    this.afr,
    this.nbl,
    this.nso,
    this.sot,
    this.ssw,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zul,
    this.hrv,
    this.cal,
    this.cha,
    this.kin,
    this.srp,
    this.tvl,
    this.nep,
    this.bar,
    this.nfr,
    this.sag,
    this.fij,
    this.hif,
    this.nno,
    this.nob,
    this.smi,
    this.lav,
    this.kaz,
    this.rus,
    this.swe,
    this.tuk,
    this.bul,
    this.smo,
    this.tkl,
    this.dzo,
    this.aze,
    this.swa,
    this.mlt,
    this.ces,
    this.slk,
    this.nld,
    this.pap,
    this.uzb,
    this.zho,
    this.mkd,
    this.deu,
    this.ukr,
    this.fin,
    this.bos,
    this.fas,
    this.tir,
    this.lit,
    this.pov,
    this.fil,
    this.bis,
    this.aym,
    this.que,
    this.khm,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.nya,
    this.sna,
    this.toi,
    this.zib,
    this.nrf,
    this.kir,
    this.hye,
    this.cnr,
    this.kal,
    this.hmo,
    this.tpi,
    this.hin,
    this.mon,
    this.mya,
    this.kor,
    this.nor,
    this.bel,
    this.pol,
    this.gsw,
    this.ita,
    this.roh,
    this.kon,
    this.lin,
    this.dan,
    this.ltz,
    this.fao,
    this.slv,
    this.tha,
    this.ton,
    this.lat,
    this.run,
    this.mah,
    this.glv,
    this.hat,
    this.prs,
    this.pus,
    this.heb,
    this.pih,
    this.rar,
    this.lao,
    this.gil,
    this.jam,
    this.cat,
    this.crs,
    this.urd,
    this.amh,
    this.ben,
    this.mri,
    this.nzs,
    this.zdj,
    this.bjz,
    this.hun,
    this.isl,
    this.tgk,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.tet,
    this.mfe,
    this.div,
    this.ind,
    this.lua,
    this.est,
    this.vie,
    this.kat,
    this.arc,
    this.ckb,
    this.jpn,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
    ron: json["ron"] == null ? null : Ara.fromJson(json["ron"]),
    eng: json["eng"] == null ? null : Ara.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
    nau: json["nau"] == null ? null : Ara.fromJson(json["nau"]),
    por: json["por"] == null ? null : Ara.fromJson(json["por"]),
    spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
    sqi: json["sqi"] == null ? null : Ara.fromJson(json["sqi"]),
    niu: json["niu"] == null ? null : Ara.fromJson(json["niu"]),
    pau: json["pau"] == null ? null : Ara.fromJson(json["pau"]),
    ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
    som: json["som"] == null ? null : Ara.fromJson(json["som"]),
    msa: json["msa"] == null ? null : Ara.fromJson(json["msa"]),
    mlg: json["mlg"] == null ? null : Ara.fromJson(json["mlg"]),
    ber: json["ber"] == null ? null : Ara.fromJson(json["ber"]),
    mey: json["mey"] == null ? null : Ara.fromJson(json["mey"]),
    ell: json["ell"] == null ? null : Ara.fromJson(json["ell"]),
    tur: json["tur"] == null ? null : Ara.fromJson(json["tur"]),
    gle: json["gle"] == null ? null : Ara.fromJson(json["gle"]),
    grn: json["grn"] == null ? null : Ara.fromJson(json["grn"]),
    sin: json["sin"] == null ? null : Ara.fromJson(json["sin"]),
    tam: json["tam"] == null ? null : Ara.fromJson(json["tam"]),
    afr: json["afr"] == null ? null : Ara.fromJson(json["afr"]),
    nbl: json["nbl"] == null ? null : Ara.fromJson(json["nbl"]),
    nso: json["nso"] == null ? null : Ara.fromJson(json["nso"]),
    sot: json["sot"] == null ? null : Ara.fromJson(json["sot"]),
    ssw: json["ssw"] == null ? null : Ara.fromJson(json["ssw"]),
    tsn: json["tsn"] == null ? null : Ara.fromJson(json["tsn"]),
    tso: json["tso"] == null ? null : Ara.fromJson(json["tso"]),
    ven: json["ven"] == null ? null : Ara.fromJson(json["ven"]),
    xho: json["xho"] == null ? null : Ara.fromJson(json["xho"]),
    zul: json["zul"] == null ? null : Ara.fromJson(json["zul"]),
    hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
    cal: json["cal"] == null ? null : Ara.fromJson(json["cal"]),
    cha: json["cha"] == null ? null : Ara.fromJson(json["cha"]),
    kin: json["kin"] == null ? null : Ara.fromJson(json["kin"]),
    srp: json["srp"] == null ? null : Ara.fromJson(json["srp"]),
    tvl: json["tvl"] == null ? null : Ara.fromJson(json["tvl"]),
    nep: json["nep"] == null ? null : Ara.fromJson(json["nep"]),
    bar: json["bar"] == null ? null : Ara.fromJson(json["bar"]),
    nfr: json["nfr"] == null ? null : Ara.fromJson(json["nfr"]),
    sag: json["sag"] == null ? null : Ara.fromJson(json["sag"]),
    fij: json["fij"] == null ? null : Ara.fromJson(json["fij"]),
    hif: json["hif"] == null ? null : Ara.fromJson(json["hif"]),
    nno: json["nno"] == null ? null : Ara.fromJson(json["nno"]),
    nob: json["nob"] == null ? null : Ara.fromJson(json["nob"]),
    smi: json["smi"] == null ? null : Ara.fromJson(json["smi"]),
    lav: json["lav"] == null ? null : Ara.fromJson(json["lav"]),
    kaz: json["kaz"] == null ? null : Ara.fromJson(json["kaz"]),
    rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
    swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
    tuk: json["tuk"] == null ? null : Ara.fromJson(json["tuk"]),
    bul: json["bul"] == null ? null : Ara.fromJson(json["bul"]),
    smo: json["smo"] == null ? null : Ara.fromJson(json["smo"]),
    tkl: json["tkl"] == null ? null : Ara.fromJson(json["tkl"]),
    dzo: json["dzo"] == null ? null : Ara.fromJson(json["dzo"]),
    aze: json["aze"] == null ? null : Ara.fromJson(json["aze"]),
    swa: json["swa"] == null ? null : Ara.fromJson(json["swa"]),
    mlt: json["mlt"] == null ? null : Ara.fromJson(json["mlt"]),
    ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
    slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
    nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
    pap: json["pap"] == null ? null : Ara.fromJson(json["pap"]),
    uzb: json["uzb"] == null ? null : Ara.fromJson(json["uzb"]),
    zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
    mkd: json["mkd"] == null ? null : Ara.fromJson(json["mkd"]),
    deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
    ukr: json["ukr"] == null ? null : Ara.fromJson(json["ukr"]),
    fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
    bos: json["bos"] == null ? null : Ara.fromJson(json["bos"]),
    fas: json["fas"] == null ? null : Ara.fromJson(json["fas"]),
    tir: json["tir"] == null ? null : Ara.fromJson(json["tir"]),
    lit: json["lit"] == null ? null : Ara.fromJson(json["lit"]),
    pov: json["pov"] == null ? null : Ara.fromJson(json["pov"]),
    fil: json["fil"] == null ? null : Ara.fromJson(json["fil"]),
    bis: json["bis"] == null ? null : Ara.fromJson(json["bis"]),
    aym: json["aym"] == null ? null : Ara.fromJson(json["aym"]),
    que: json["que"] == null ? null : Ara.fromJson(json["que"]),
    khm: json["khm"] == null ? null : Ara.fromJson(json["khm"]),
    bwg: json["bwg"] == null ? null : Ara.fromJson(json["bwg"]),
    kck: json["kck"] == null ? null : Ara.fromJson(json["kck"]),
    khi: json["khi"] == null ? null : Ara.fromJson(json["khi"]),
    ndc: json["ndc"] == null ? null : Ara.fromJson(json["ndc"]),
    nde: json["nde"] == null ? null : Ara.fromJson(json["nde"]),
    nya: json["nya"] == null ? null : Ara.fromJson(json["nya"]),
    sna: json["sna"] == null ? null : Ara.fromJson(json["sna"]),
    toi: json["toi"] == null ? null : Ara.fromJson(json["toi"]),
    zib: json["zib"] == null ? null : Ara.fromJson(json["zib"]),
    nrf: json["nrf"] == null ? null : Ara.fromJson(json["nrf"]),
    kir: json["kir"] == null ? null : Ara.fromJson(json["kir"]),
    hye: json["hye"] == null ? null : Ara.fromJson(json["hye"]),
    cnr: json["cnr"] == null ? null : Ara.fromJson(json["cnr"]),
    kal: json["kal"] == null ? null : Ara.fromJson(json["kal"]),
    hmo: json["hmo"] == null ? null : Ara.fromJson(json["hmo"]),
    tpi: json["tpi"] == null ? null : Ara.fromJson(json["tpi"]),
    hin: json["hin"] == null ? null : Ara.fromJson(json["hin"]),
    mon: json["mon"] == null ? null : Ara.fromJson(json["mon"]),
    mya: json["mya"] == null ? null : Ara.fromJson(json["mya"]),
    kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
    nor: json["nor"] == null ? null : Ara.fromJson(json["nor"]),
    bel: json["bel"] == null ? null : Ara.fromJson(json["bel"]),
    pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
    gsw: json["gsw"] == null ? null : Ara.fromJson(json["gsw"]),
    ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
    roh: json["roh"] == null ? null : Ara.fromJson(json["roh"]),
    kon: json["kon"] == null ? null : Ara.fromJson(json["kon"]),
    lin: json["lin"] == null ? null : Ara.fromJson(json["lin"]),
    dan: json["dan"] == null ? null : Ara.fromJson(json["dan"]),
    ltz: json["ltz"] == null ? null : Ara.fromJson(json["ltz"]),
    fao: json["fao"] == null ? null : Ara.fromJson(json["fao"]),
    slv: json["slv"] == null ? null : Ara.fromJson(json["slv"]),
    tha: json["tha"] == null ? null : Ara.fromJson(json["tha"]),
    ton: json["ton"] == null ? null : Ara.fromJson(json["ton"]),
    lat: json["lat"] == null ? null : Ara.fromJson(json["lat"]),
    run: json["run"] == null ? null : Ara.fromJson(json["run"]),
    mah: json["mah"] == null ? null : Ara.fromJson(json["mah"]),
    glv: json["glv"] == null ? null : Ara.fromJson(json["glv"]),
    hat: json["hat"] == null ? null : Ara.fromJson(json["hat"]),
    prs: json["prs"] == null ? null : Ara.fromJson(json["prs"]),
    pus: json["pus"] == null ? null : Ara.fromJson(json["pus"]),
    heb: json["heb"] == null ? null : Ara.fromJson(json["heb"]),
    pih: json["pih"] == null ? null : Ara.fromJson(json["pih"]),
    rar: json["rar"] == null ? null : Ara.fromJson(json["rar"]),
    lao: json["lao"] == null ? null : Ara.fromJson(json["lao"]),
    gil: json["gil"] == null ? null : Ara.fromJson(json["gil"]),
    jam: json["jam"] == null ? null : Ara.fromJson(json["jam"]),
    cat: json["cat"] == null ? null : Ara.fromJson(json["cat"]),
    crs: json["crs"] == null ? null : Ara.fromJson(json["crs"]),
    urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
    amh: json["amh"] == null ? null : Ara.fromJson(json["amh"]),
    ben: json["ben"] == null ? null : Ara.fromJson(json["ben"]),
    mri: json["mri"] == null ? null : Ara.fromJson(json["mri"]),
    nzs: json["nzs"] == null ? null : Ara.fromJson(json["nzs"]),
    zdj: json["zdj"] == null ? null : Ara.fromJson(json["zdj"]),
    bjz: json["bjz"] == null ? null : Ara.fromJson(json["bjz"]),
    hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
    isl: json["isl"] == null ? null : Ara.fromJson(json["isl"]),
    tgk: json["tgk"] == null ? null : Ara.fromJson(json["tgk"]),
    her: json["her"] == null ? null : Ara.fromJson(json["her"]),
    hgm: json["hgm"] == null ? null : Ara.fromJson(json["hgm"]),
    kwn: json["kwn"] == null ? null : Ara.fromJson(json["kwn"]),
    loz: json["loz"] == null ? null : Ara.fromJson(json["loz"]),
    ndo: json["ndo"] == null ? null : Ara.fromJson(json["ndo"]),
    tet: json["tet"] == null ? null : Ara.fromJson(json["tet"]),
    mfe: json["mfe"] == null ? null : Ara.fromJson(json["mfe"]),
    div: json["div"] == null ? null : Ara.fromJson(json["div"]),
    ind: json["ind"] == null ? null : Ara.fromJson(json["ind"]),
    lua: json["lua"] == null ? null : Ara.fromJson(json["lua"]),
    est: json["est"] == null ? null : Ara.fromJson(json["est"]),
    vie: json["vie"] == null ? null : Ara.fromJson(json["vie"]),
    kat: json["kat"] == null ? null : Ara.fromJson(json["kat"]),
    arc: json["arc"] == null ? null : Ara.fromJson(json["arc"]),
    ckb: json["ckb"] == null ? null : Ara.fromJson(json["ckb"]),
    jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
  );

  Map<String, dynamic> toJson() => {
    "ron": ron?.toJson(),
    "eng": eng?.toJson(),
    "fra": fra?.toJson(),
    "nau": nau?.toJson(),
    "por": por?.toJson(),
    "spa": spa?.toJson(),
    "sqi": sqi?.toJson(),
    "niu": niu?.toJson(),
    "pau": pau?.toJson(),
    "ara": ara?.toJson(),
    "som": som?.toJson(),
    "msa": msa?.toJson(),
    "mlg": mlg?.toJson(),
    "ber": ber?.toJson(),
    "mey": mey?.toJson(),
    "ell": ell?.toJson(),
    "tur": tur?.toJson(),
    "gle": gle?.toJson(),
    "grn": grn?.toJson(),
    "sin": sin?.toJson(),
    "tam": tam?.toJson(),
    "afr": afr?.toJson(),
    "nbl": nbl?.toJson(),
    "nso": nso?.toJson(),
    "sot": sot?.toJson(),
    "ssw": ssw?.toJson(),
    "tsn": tsn?.toJson(),
    "tso": tso?.toJson(),
    "ven": ven?.toJson(),
    "xho": xho?.toJson(),
    "zul": zul?.toJson(),
    "hrv": hrv?.toJson(),
    "cal": cal?.toJson(),
    "cha": cha?.toJson(),
    "kin": kin?.toJson(),
    "srp": srp?.toJson(),
    "tvl": tvl?.toJson(),
    "nep": nep?.toJson(),
    "bar": bar?.toJson(),
    "nfr": nfr?.toJson(),
    "sag": sag?.toJson(),
    "fij": fij?.toJson(),
    "hif": hif?.toJson(),
    "nno": nno?.toJson(),
    "nob": nob?.toJson(),
    "smi": smi?.toJson(),
    "lav": lav?.toJson(),
    "kaz": kaz?.toJson(),
    "rus": rus?.toJson(),
    "swe": swe?.toJson(),
    "tuk": tuk?.toJson(),
    "bul": bul?.toJson(),
    "smo": smo?.toJson(),
    "tkl": tkl?.toJson(),
    "dzo": dzo?.toJson(),
    "aze": aze?.toJson(),
    "swa": swa?.toJson(),
    "mlt": mlt?.toJson(),
    "ces": ces?.toJson(),
    "slk": slk?.toJson(),
    "nld": nld?.toJson(),
    "pap": pap?.toJson(),
    "uzb": uzb?.toJson(),
    "zho": zho?.toJson(),
    "mkd": mkd?.toJson(),
    "deu": deu?.toJson(),
    "ukr": ukr?.toJson(),
    "fin": fin?.toJson(),
    "bos": bos?.toJson(),
    "fas": fas?.toJson(),
    "tir": tir?.toJson(),
    "lit": lit?.toJson(),
    "pov": pov?.toJson(),
    "fil": fil?.toJson(),
    "bis": bis?.toJson(),
    "aym": aym?.toJson(),
    "que": que?.toJson(),
    "khm": khm?.toJson(),
    "bwg": bwg?.toJson(),
    "kck": kck?.toJson(),
    "khi": khi?.toJson(),
    "ndc": ndc?.toJson(),
    "nde": nde?.toJson(),
    "nya": nya?.toJson(),
    "sna": sna?.toJson(),
    "toi": toi?.toJson(),
    "zib": zib?.toJson(),
    "nrf": nrf?.toJson(),
    "kir": kir?.toJson(),
    "hye": hye?.toJson(),
    "cnr": cnr?.toJson(),
    "kal": kal?.toJson(),
    "hmo": hmo?.toJson(),
    "tpi": tpi?.toJson(),
    "hin": hin?.toJson(),
    "mon": mon?.toJson(),
    "mya": mya?.toJson(),
    "kor": kor?.toJson(),
    "nor": nor?.toJson(),
    "bel": bel?.toJson(),
    "pol": pol?.toJson(),
    "gsw": gsw?.toJson(),
    "ita": ita?.toJson(),
    "roh": roh?.toJson(),
    "kon": kon?.toJson(),
    "lin": lin?.toJson(),
    "dan": dan?.toJson(),
    "ltz": ltz?.toJson(),
    "fao": fao?.toJson(),
    "slv": slv?.toJson(),
    "tha": tha?.toJson(),
    "ton": ton?.toJson(),
    "lat": lat?.toJson(),
    "run": run?.toJson(),
    "mah": mah?.toJson(),
    "glv": glv?.toJson(),
    "hat": hat?.toJson(),
    "prs": prs?.toJson(),
    "pus": pus?.toJson(),
    "heb": heb?.toJson(),
    "pih": pih?.toJson(),
    "rar": rar?.toJson(),
    "lao": lao?.toJson(),
    "gil": gil?.toJson(),
    "jam": jam?.toJson(),
    "cat": cat?.toJson(),
    "crs": crs?.toJson(),
    "urd": urd?.toJson(),
    "amh": amh?.toJson(),
    "ben": ben?.toJson(),
    "mri": mri?.toJson(),
    "nzs": nzs?.toJson(),
    "zdj": zdj?.toJson(),
    "bjz": bjz?.toJson(),
    "hun": hun?.toJson(),
    "isl": isl?.toJson(),
    "tgk": tgk?.toJson(),
    "her": her?.toJson(),
    "hgm": hgm?.toJson(),
    "kwn": kwn?.toJson(),
    "loz": loz?.toJson(),
    "ndo": ndo?.toJson(),
    "tet": tet?.toJson(),
    "mfe": mfe?.toJson(),
    "div": div?.toJson(),
    "ind": ind?.toJson(),
    "lua": lua?.toJson(),
    "est": est?.toJson(),
    "vie": vie?.toJson(),
    "kat": kat?.toJson(),
    "arc": arc?.toJson(),
    "ckb": ckb?.toJson(),
    "jpn": jpn?.toJson(),
  };
}

class Ara {
  String? official;
  String? common;

  Ara({
    this.official,
    this.common,
  });

  factory Ara.fromJson(Map<String, dynamic> json) => Ara(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
    format: json["format"],
    regex: json["regex"],
  );

  Map<String, dynamic> toJson() => {
    "format": format,
    "regex": regex,
  };
}

class Translations {
  Ara? ara;
  Ara? bre;
  Ara? ces;
  Ara? cym;
  Ara? deu;
  Ara? est;
  Ara? fin;
  Ara? fra;
  Ara? hrv;
  Ara? hun;
  Ara? ita;
  Ara? jpn;
  Ara? kor;
  Ara? nld;
  Ara? per;
  Ara? pol;
  Ara? por;
  Ara? rus;
  Ara? slk;
  Ara? spa;
  Ara? srp;
  Ara? swe;
  Ara? tur;
  Ara? urd;
  Ara? zho;

  Translations({
    this.ara,
    this.bre,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.srp,
    this.swe,
    this.tur,
    this.urd,
    this.zho,
  });

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
    ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
    bre: json["bre"] == null ? null : Ara.fromJson(json["bre"]),
    ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
    cym: json["cym"] == null ? null : Ara.fromJson(json["cym"]),
    deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
    est: json["est"] == null ? null : Ara.fromJson(json["est"]),
    fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
    fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
    hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
    hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
    ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
    jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
    kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
    nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
    per: json["per"] == null ? null : Ara.fromJson(json["per"]),
    pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
    por: json["por"] == null ? null : Ara.fromJson(json["por"]),
    rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
    slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
    spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
    srp: json["srp"] == null ? null : Ara.fromJson(json["srp"]),
    swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
    tur: json["tur"] == null ? null : Ara.fromJson(json["tur"]),
    urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
    zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
  );

  Map<String, dynamic> toJson() => {
    "ara": ara?.toJson(),
    "bre": bre?.toJson(),
    "ces": ces?.toJson(),
    "cym": cym?.toJson(),
    "deu": deu?.toJson(),
    "est": est?.toJson(),
    "fin": fin?.toJson(),
    "fra": fra?.toJson(),
    "hrv": hrv?.toJson(),
    "hun": hun?.toJson(),
    "ita": ita?.toJson(),
    "jpn": jpn?.toJson(),
    "kor": kor?.toJson(),
    "nld": nld?.toJson(),
    "per": per?.toJson(),
    "pol": pol?.toJson(),
    "por": por?.toJson(),
    "rus": rus?.toJson(),
    "slk": slk?.toJson(),
    "spa": spa?.toJson(),
    "srp": srp?.toJson(),
    "swe": swe?.toJson(),
    "tur": tur?.toJson(),
    "urd": urd?.toJson(),
    "zho": zho?.toJson(),
  };
}
