// comic_info.dart
import 'package:xml/xml.dart';
import 'package:xml_annotation/xml_annotation.dart' as xml_annotation;

part 'comic_info_parser.g.dart';

@xml_annotation.XmlEnum()
enum XmlYesNo {
  @xml_annotation.XmlValue("Unknown")
  unknown,
  @xml_annotation.XmlValue("No")
  no,
  @xml_annotation.XmlValue("Yes")
  yes,
}

@xml_annotation.XmlEnum()
enum XmlManga {
  @xml_annotation.XmlValue("Unknown")
  unknown,
  @xml_annotation.XmlValue("No")
  no,
  @xml_annotation.XmlValue("Yes")
  yes,
  @xml_annotation.XmlValue("YesAndRightToLeft")
  yesAndRightToLeft,
}

@xml_annotation.XmlEnum()
enum XmlAgeRating {
  @xml_annotation.XmlValue("Unknown")
  unknown,
  @xml_annotation.XmlValue("Adults Only 18+")
  adultsOnly18,
  @xml_annotation.XmlValue("Early Childhood")
  earlyChildhood,
  @xml_annotation.XmlValue("Everyone")
  everyone,
  @xml_annotation.XmlValue("Everyone 10+")
  everyone10,
  @xml_annotation.XmlValue("G")
  g,
  @xml_annotation.XmlValue("Kids to Adults")
  kidsToAdults,
  @xml_annotation.XmlValue("M")
  m,
  @xml_annotation.XmlValue("MA15+")
  ma15,
  @xml_annotation.XmlValue("Mature 17+")
  mature17,
  @xml_annotation.XmlValue("PG")
  pg,
  @xml_annotation.XmlValue("R18+")
  r18,
  @xml_annotation.XmlValue("Rating Pending")
  ratingPending,
  @xml_annotation.XmlValue("Teen")
  teen,
  @xml_annotation.XmlValue("X18+")
  x18,
}

@xml_annotation.XmlEnum()
enum XmlComicPageType {
  @xml_annotation.XmlValue("FrontCover")
  frontCover,
  @xml_annotation.XmlValue("InnerCover")
  innerCover,
  @xml_annotation.XmlValue("Roundup")
  roundup,
  @xml_annotation.XmlValue("Story")
  story,
  @xml_annotation.XmlValue("Advertisement")
  advertisement,
  @xml_annotation.XmlValue("Editorial")
  editorial,
  @xml_annotation.XmlValue("Letters")
  letters,
  @xml_annotation.XmlValue("Preview")
  preview,
  @xml_annotation.XmlValue("BackCover")
  backCover,
  @xml_annotation.XmlValue("Other")
  other,
  @xml_annotation.XmlValue("Deleted")
  deleted,
}

/// ComicPageInfo
@xml_annotation.XmlRootElement(name: 'Page')
@xml_annotation.XmlSerializable()
class XmlComicPageInfo {
  /// page index, start from 1
  /* required */
  @xml_annotation.XmlAttribute(name: 'Image')
  final int image;

  /* optional with default */
  @xml_annotation.XmlAttribute(name: 'Type')
  final XmlComicPageType? type;

  /// Whether the page is a double spread
  @xml_annotation.XmlAttribute(name: 'DoublePage')
  final bool? doublePage;

  /// Size of the image in bytes.
  @xml_annotation.XmlAttribute(name: 'ImageSize')
  final int? imageSize;

  /// ComicRack uses this field when adding a bookmark in a book.
  @xml_annotation.XmlAttribute(name: 'Bookmark')
  final String? bookmark;

  /// Width and height of the image in pixels.
  @xml_annotation.XmlAttribute(name: 'ImageWidth')
  final int? imageWidth;

  @xml_annotation.XmlAttribute(name: 'ImageHeight')
  final int? imageHeight;

  const XmlComicPageInfo({
    required this.image,
    this.type,
    this.doublePage,
    this.imageSize,
    this.bookmark,
    this.imageWidth,
    this.imageHeight,
  });

  XmlComicPageInfo withDefaultValues() => XmlComicPageInfo(
    image: image,
    type: type ?? XmlComicPageType.story,
    doublePage: doublePage ?? false,
    imageSize: imageSize ?? 0,
    bookmark: bookmark ?? '',
    imageWidth: imageWidth ?? -1,
    imageHeight: imageHeight ?? -1,
  );

  factory XmlComicPageInfo.fromXmlElement(XmlElement e) =>
      _$XmlComicPageInfoFromXmlElement(e);

  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$XmlComicPageInfoBuildXmlChildren(this, builder, namespaces: namespaces);

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$XmlComicPageInfoBuildXmlElement(this, builder, namespaces: namespaces);

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) => _$XmlComicPageInfoToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({Map<String, String?> namespaces = const {}}) =>
      _$XmlComicPageInfoToXmlChildren(this, namespaces: namespaces);

  XmlElement toXmlElement({Map<String, String?> namespaces = const {}}) =>
      _$XmlComicPageInfoToXmlElement(this, namespaces: namespaces);
}

/// ArrayOfComicPageInfo
/// Describes each page of the book.
@xml_annotation.XmlRootElement(name: 'Pages')
@xml_annotation.XmlSerializable()
class XmlArrayOfComicPageInfo {
  @xml_annotation.XmlElement(name: 'Page', includeIfNull: false)
  final List<XmlComicPageInfo>? pages;

  const XmlArrayOfComicPageInfo({this.pages});

  XmlArrayOfComicPageInfo withDefaultValues() {
    if (pages == null) {
      return XmlArrayOfComicPageInfo(pages: const []);
    }

    // 为每个页面应用默认值
    final pagesWithDefaults = pages!
        .map((page) => page.withDefaultValues())
        .toList();
    return XmlArrayOfComicPageInfo(pages: pagesWithDefaults);
  }

  factory XmlArrayOfComicPageInfo.fromXmlElement(XmlElement e) =>
      _$XmlArrayOfComicPageInfoFromXmlElement(e);

  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) => _$XmlArrayOfComicPageInfoBuildXmlChildren(
    this,
    builder,
    namespaces: namespaces,
  );

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) => _$XmlArrayOfComicPageInfoBuildXmlElement(
    this,
    builder,
    namespaces: namespaces,
  );

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) => _$XmlArrayOfComicPageInfoToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({Map<String, String?> namespaces = const {}}) =>
      _$XmlArrayOfComicPageInfoToXmlChildren(this, namespaces: namespaces);

  XmlElement toXmlElement({Map<String, String?> namespaces = const {}}) =>
      _$XmlArrayOfComicPageInfoToXmlElement(this, namespaces: namespaces);
}

/* ==========================
 * ComicInfo
 * ========================== */

@xml_annotation.XmlRootElement(name: 'ComicInfo')
@xml_annotation.XmlSerializable()
class XmlComicInfo {
  /// Title of the book.
  @xml_annotation.XmlElement(name: 'Title', includeIfNull: false)
  final String? title;

  /// Title of the series the book is part of.
  @xml_annotation.XmlElement(name: 'Series', includeIfNull: false)
  final String? series;

  /// Number of the book in the series.
  @xml_annotation.XmlElement(name: 'Number', includeIfNull: false)
  final String? number;

  /// The total number of books in the series.
  /// The Count could be different on each book in a series.
  ///  Consuming applications should consider using only the value for the latest book in the series.
  @xml_annotation.XmlElement(name: 'Count', includeIfNull: false)
  final int? count;

  /// Volume containing the book. Volume is a notion that is specific to US Comics,
  /// where the same series can have multiple volumes.
  /// Volumes can be referenced by number (1, 2, 3…) or by year (2018, 2020…).
  @xml_annotation.XmlElement(name: 'Volume', includeIfNull: false)
  final int? volume;

  /// Quite specific to US comics,
  /// some books can be part of cross-over story arcs.
  /// Those fields can be used to specify an alternate series,
  /// its number and count of books.
  @xml_annotation.XmlElement(name: 'AlternateSeries', includeIfNull: false)
  final String? alternateSeries;

  @xml_annotation.XmlElement(name: 'AlternateNumber', includeIfNull: false)
  final String? alternateNumber;

  @xml_annotation.XmlElement(name: 'AlternateCount', includeIfNull: false)
  final int? alternateCount;

  /// A description or summary of the book.
  @xml_annotation.XmlElement(name: 'Summary', includeIfNull: false)
  final String? summary;

  /// A free text field, usually used to store information about the application that created the ComicInfo.xml file.
  @xml_annotation.XmlElement(name: 'Notes', includeIfNull: false)
  final String? notes;

  /// Usually contains the release date of the book.
  @xml_annotation.XmlElement(name: 'Year', includeIfNull: false)
  final int? year;
  @xml_annotation.XmlElement(name: 'Month', includeIfNull: false)
  final int? month;
  @xml_annotation.XmlElement(name: 'Day', includeIfNull: false)
  final int? day;

  /// According to the schema, each creator element can only be present once.
  /// In order to cater for multiple creator with the same role,
  /// it is accepted that values are comma separated.

  /// Person or organization responsible for creating the scenario.
  @xml_annotation.XmlElement(name: 'Writer', includeIfNull: false)
  final String? writer;

  /// Person or organization responsible for drawing the art.
  @xml_annotation.XmlElement(name: 'Penciller', includeIfNull: false)
  final String? penciller;

  /// Person or organization responsible for inking the pencil art.
  @xml_annotation.XmlElement(name: 'Inker', includeIfNull: false)
  final String? inker;

  /// Person or organization responsible for applying color to drawings.
  @xml_annotation.XmlElement(name: 'Colorist', includeIfNull: false)
  final String? colorist;

  /// Person or organization responsible for drawing text and speech bubbles.
  @xml_annotation.XmlElement(name: 'Letterer', includeIfNull: false)
  final String? letterer;

  /// Person or organization responsible for drawing the cover art.
  @xml_annotation.XmlElement(name: 'CoverArtist', includeIfNull: false)
  final String? coverArtist;

  /// A person or organization contributing to a resource by revising or elucidating the content,
  /// e.g., adding an introduction, notes, or other critical matter.
  /// An editor may also prepare a resource for production, publication, or distribution.
  @xml_annotation.XmlElement(name: 'Editor', includeIfNull: false)
  final String? editor;

  /// A person or organization responsible for publishing, releasing, or issuing a resource.
  @xml_annotation.XmlElement(name: 'Publisher', includeIfNull: false)
  final String? publisher;

  /// A person or organization who renders a text from one language into another,
  /// or from an older form of a language into the modern form.
  /// This can also be used for fan translations ("scanlator").
  @xml_annotation.XmlElement(name: 'Translator', includeIfNull: false)
  final String? translator;

  /// An imprint is a group of publications under the umbrella of a larger imprint or a Publisher.
  /// For example, Vertigo is an Imprint of DC Comics.
  @xml_annotation.XmlElement(name: 'Imprint', includeIfNull: false)
  final String? imprint;

  /// Genre of the book or series. For example, Science-Fiction or Shonen.
  /// It is accepted that multiple values are comma separated.
  @xml_annotation.XmlElement(name: 'Genre', includeIfNull: false)
  final String? genre;

  /// Tags of the book or series. For example, ninja or school life.
  /// It is accepted that multiple values are comma separated.
  @xml_annotation.XmlElement(name: 'Tags', includeIfNull: false)
  final String? tags;

  /// A URL pointing to a reference website for the book.
  /// It is accepted that multiple values are space separated. If a space is a part of the url it must be percent encoded.
  @xml_annotation.XmlElement(name: 'Web', includeIfNull: false)
  final String? web;

  /// The number of pages in the book.
  @xml_annotation.XmlElement(name: 'PageCount', includeIfNull: false)
  final int? pageCount;

  /// A language code describing the language of the book.
  /// Without any information on what kind of code this element is supposed to contain,
  /// it is recommended to use the IETF BCP 47 language tag,
  /// which can describe the language but also the script used.
  /// This helps to differentiate languages with multiple scripts,
  /// like Traditional and Simplified Chinese.
  @xml_annotation.XmlElement(name: 'LanguageISO', includeIfNull: false)
  final String? languageISO;

  /// The original publication's binding format for scanned physical books or presentation format for digital sources.
  /// "TBP", "HC", "Web", "Digital" are common designators.
  @xml_annotation.XmlElement(name: 'Format', includeIfNull: false)
  final String? format;

  /// Whether the book is in black and white.
  @xml_annotation.XmlElement(name: 'BlackAndWhite', includeIfNull: false)
  final XmlYesNo? blackAndWhite;

  /// Whether the book is a manga.
  /// This also defines the reading direction as right-to-left when set to YesAndRightToLeft.
  @xml_annotation.XmlElement(name: 'Manga', includeIfNull: false)
  final XmlManga? manga;

  /// Characters present in the book.
  /// It is accepted that multiple values are comma separated.
  @xml_annotation.XmlElement(name: 'Characters', includeIfNull: false)
  final String? characters;

  /// Teams present in the book. Usually refer to super-hero teams (e.g. Avengers).
  /// It is accepted that multiple values are comma separated.
  @xml_annotation.XmlElement(name: 'Teams', includeIfNull: false)
  final String? teams;

  /// Locations mentioned in the book.
  /// It is accepted that multiple values are comma separated.
  @xml_annotation.XmlElement(name: 'Locations', includeIfNull: false)
  final String? locations;

  /// Main character or team mentioned in the book.
  /// It is accepted that a single value should be present.
  @xml_annotation.XmlElement(name: 'MainCharacterOrTeam', includeIfNull: false)
  final String? mainCharacterOrTeam;

  /// A free text field, usually used to store information about who scanned the book.
  @xml_annotation.XmlElement(name: 'ScanInformation', includeIfNull: false)
  final String? scanInformation;

  /// The story arc that books belong to.
  /// For example, for Undiscovered Country, issues 1-6 are part of the Destiny story arc, issues 7-12 are part of the Unity story arc
  @xml_annotation.XmlElement(name: 'StoryArc', includeIfNull: false)
  final String? storyArc;

  /// While StoryArc was originally designed to store the arc within a series,
  /// it was often used to indicate that a book was part of a reading order,
  /// composed of books from multiple series.
  /// Mylar for instance was using the field as such.
  /// Since StoryArc itself wasn't able to carry the information about ordering of books within a reading order,
  /// StoryArcNumber was added.
  /// StoryArc and StoryArcNumber can work in combination,
  /// to indicate in which position the book is located at for a specific reading order.
  /// It is accepted that multiple values can be specified for both StoryArc and StoryArcNumber.
  /// Multiple values are comma separated.
  @xml_annotation.XmlElement(name: 'StoryArcNumber', includeIfNull: false)
  final String? storyArcNumber;

  /// A group or collection the series belongs to.
  /// It is accepted that multiple values are comma separated.
  @xml_annotation.XmlElement(name: 'SeriesGroup', includeIfNull: false)
  final String? seriesGroup;

  /// Age rating of the book.
  @xml_annotation.XmlElement(name: 'AgeRating', includeIfNull: false)
  final XmlAgeRating? ageRating;

  /// Community rating of the book, from 0.0 to 5.0.
  @xml_annotation.XmlElement(name: 'CommunityRating', includeIfNull: false)
  final double? communityRating;

  /// Review of the book.
  @xml_annotation.XmlElement(name: 'Review', includeIfNull: false)
  final String? review;

  /// A Global Trade Item Number identifying the book. GTIN incorporates other standards like ISBN, ISSN, EAN, or JAN.
  @xml_annotation.XmlElement(name: 'GTIN', includeIfNull: false)
  final String? gtin;

  /// Describes each page of the book.
  @xml_annotation.XmlElement(name: 'Pages', includeIfNull: false)
  final XmlArrayOfComicPageInfo? pages;

  const XmlComicInfo({
    this.title,
    this.series,
    this.number,
    this.count,
    this.volume,
    this.alternateSeries,
    this.alternateNumber,
    this.alternateCount,
    this.summary,
    this.notes,
    this.year,
    this.month,
    this.day,
    this.writer,
    this.penciller,
    this.inker,
    this.colorist,
    this.letterer,
    this.coverArtist,
    this.editor,
    this.publisher,
    this.translator,
    this.imprint,
    this.genre,
    this.tags,
    this.web,
    this.pageCount,
    this.languageISO,
    this.format,
    this.blackAndWhite,
    this.manga,
    this.characters,
    this.teams,
    this.locations,
    this.mainCharacterOrTeam,
    this.scanInformation,
    this.storyArc,
    this.storyArcNumber,
    this.seriesGroup,
    this.ageRating,
    this.communityRating,
    this.review,
    this.gtin,
    this.pages,
  });

  XmlComicInfo withDefaultValues() => XmlComicInfo(
    title: title ?? "",
    series: series ?? "",
    number: number ?? "",
    count: count ?? -1,
    volume: volume ?? -1,
    alternateSeries: alternateSeries ?? "",
    alternateNumber: alternateNumber ?? "",
    alternateCount: alternateCount ?? -1,
    summary: summary ?? "",
    notes: notes ?? "",
    year: year ?? -1,
    month: month ?? -1,
    day: day ?? -1,
    writer: writer ?? "",
    penciller: penciller ?? "",
    inker: inker ?? "",
    colorist: colorist ?? "",
    letterer: letterer ?? "",
    coverArtist: coverArtist ?? "",
    editor: editor ?? "",
    publisher: publisher ?? "",
    translator: translator ?? "",
    imprint: imprint ?? "",
    genre: genre ?? "",
    tags: tags ?? "",
    web: web ?? "",
    pageCount: pageCount ?? 0,
    languageISO: languageISO ?? "",
    format: format ?? "",
    blackAndWhite: blackAndWhite ?? XmlYesNo.unknown,
    manga: manga ?? XmlManga.unknown,
    characters: characters ?? "",
    teams: teams ?? "",
    locations: locations ?? "",
    mainCharacterOrTeam: mainCharacterOrTeam ?? "",
    scanInformation: scanInformation ?? "",
    storyArc: storyArc ?? "",
    storyArcNumber: storyArcNumber ?? "",
    seriesGroup: seriesGroup ?? "",
    ageRating: ageRating ?? XmlAgeRating.unknown,
    communityRating: communityRating ?? 0.0,
    review: review ?? "",
    gtin: gtin ?? "",
    pages: pages?.withDefaultValues(),
  );

  /// 从 XmlElement 反序列化
  factory XmlComicInfo.fromXmlElement(XmlElement e) =>
      _$XmlComicInfoFromXmlElement(e);

  /// 解析 XML 字符串 -> ComicInfo
  factory XmlComicInfo.fromXmlString(String xml) {
    final document = XmlDocument.parse(xml);
    final root = document.rootElement;
    if (root.name.local != 'ComicInfo') {
      throw ArgumentError('Root element is not <ComicInfo>');
    }
    return XmlComicInfo.fromXmlElement(root);
  }

  /// 把 ComicInfo 序列化成 XML 字符串
  String toXmlString() {
    final builder = XmlBuilder();
    builder.processing('xml', 'version="1.0" encoding="utf-8"');
    buildXmlElement(builder);
    return builder.buildDocument().toXmlString(pretty: true);
  }

  /// 序列化到 XmlElement
  XmlElement toXmlElement({Map<String, String?> namespaces = const {}}) =>
      _$XmlComicInfoToXmlElement(this, namespaces: namespaces);

  /* 以下方法由 xml_annotation 生成，这里仅声明占位，运行 build_runner 后会自动生成实现 */
  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) => _$XmlComicInfoBuildXmlChildren(this, builder, namespaces: namespaces);

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) => _$XmlComicInfoBuildXmlElement(this, builder, namespaces: namespaces);

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) => _$XmlComicInfoToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({Map<String, String?> namespaces = const {}}) =>
      _$XmlComicInfoToXmlChildren(this, namespaces: namespaces);

  @override
  String toString() {
    return "XmlComicInfo {title: $title, gtin: $gtin}";
  }
}
