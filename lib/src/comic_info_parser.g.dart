// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_info_parser.dart';

// **************************************************************************
// XmlEnumGenerator
// **************************************************************************

const $XmlYesNoEnumMap = {
  XmlYesNo.unknown: 'Unknown',
  XmlYesNo.no: 'No',
  XmlYesNo.yes: 'Yes',
};

const $XmlMangaEnumMap = {
  XmlManga.unknown: 'Unknown',
  XmlManga.no: 'No',
  XmlManga.yes: 'Yes',
  XmlManga.yesAndRightToLeft: 'YesAndRightToLeft',
};

const $XmlAgeRatingEnumMap = {
  XmlAgeRating.unknown: 'Unknown',
  XmlAgeRating.adultsOnly18: 'Adults Only 18+',
  XmlAgeRating.earlyChildhood: 'Early Childhood',
  XmlAgeRating.everyone: 'Everyone',
  XmlAgeRating.everyone10: 'Everyone 10+',
  XmlAgeRating.g: 'G',
  XmlAgeRating.kidsToAdults: 'Kids to Adults',
  XmlAgeRating.m: 'M',
  XmlAgeRating.ma15: 'MA15+',
  XmlAgeRating.mature17: 'Mature 17+',
  XmlAgeRating.pg: 'PG',
  XmlAgeRating.r18: 'R18+',
  XmlAgeRating.ratingPending: 'Rating Pending',
  XmlAgeRating.teen: 'Teen',
  XmlAgeRating.x18: 'X18+',
};

const $XmlComicPageTypeEnumMap = {
  XmlComicPageType.frontCover: 'FrontCover',
  XmlComicPageType.innerCover: 'InnerCover',
  XmlComicPageType.roundup: 'Roundup',
  XmlComicPageType.story: 'Story',
  XmlComicPageType.advertisement: 'Advertisement',
  XmlComicPageType.editorial: 'Editorial',
  XmlComicPageType.letters: 'Letters',
  XmlComicPageType.preview: 'Preview',
  XmlComicPageType.backCover: 'BackCover',
  XmlComicPageType.other: 'Other',
  XmlComicPageType.deleted: 'Deleted',
};

// **************************************************************************
// XmlSerializableGenerator
// **************************************************************************

void _$XmlComicPageInfoBuildXmlChildren(
  XmlComicPageInfo instance,
  XmlBuilder builder, {
  Map<String, String> namespaces = const {},
}) {
  final image = instance.image;
  final imageSerialized = image.toString();
  builder.attribute('Image', imageSerialized);
  final type = instance.type;
  final typeSerialized = type != null ? $XmlComicPageTypeEnumMap[type]! : null;
  if (typeSerialized != null) {
    builder.attribute('Type', typeSerialized);
  }
  final doublePage = instance.doublePage;
  final doublePageSerialized = doublePage != null
      ? doublePage == true
            ? 'true'
            : 'false'
      : null;
  if (doublePageSerialized != null) {
    builder.attribute('DoublePage', doublePageSerialized);
  }
  final imageSize = instance.imageSize;
  final imageSizeSerialized = imageSize?.toString();
  if (imageSizeSerialized != null) {
    builder.attribute('ImageSize', imageSizeSerialized);
  }
  final bookmark = instance.bookmark;
  final bookmarkSerialized = bookmark;
  if (bookmarkSerialized != null) {
    builder.attribute('Bookmark', bookmarkSerialized);
  }
  final imageWidth = instance.imageWidth;
  final imageWidthSerialized = imageWidth?.toString();
  if (imageWidthSerialized != null) {
    builder.attribute('ImageWidth', imageWidthSerialized);
  }
  final imageHeight = instance.imageHeight;
  final imageHeightSerialized = imageHeight?.toString();
  if (imageHeightSerialized != null) {
    builder.attribute('ImageHeight', imageHeightSerialized);
  }
}

void _$XmlComicPageInfoBuildXmlElement(
  XmlComicPageInfo instance,
  XmlBuilder builder, {
  Map<String, String> namespaces = const {},
}) {
  builder.element(
    'Page',
    namespaces: namespaces,
    nest: () {
      instance.buildXmlChildren(builder, namespaces: namespaces);
    },
  );
}

XmlComicPageInfo _$XmlComicPageInfoFromXmlElement(XmlElement element) {
  final image = element.getAttribute('Image')!;
  final type = element.getAttribute('Type');
  final doublePage = element.getAttribute('DoublePage');
  final imageSize = element.getAttribute('ImageSize');
  final bookmark = element.getAttribute('Bookmark');
  final imageWidth = element.getAttribute('ImageWidth');
  final imageHeight = element.getAttribute('ImageHeight');
  return XmlComicPageInfo(
    image: int.parse(image),
    type: type != null
        ? $XmlComicPageTypeEnumMap.entries
              .singleWhere(
                (xmlComicPageTypeEnumMapEntry) =>
                    xmlComicPageTypeEnumMapEntry.value == type,
                orElse: () => throw ArgumentError(
                  '`$type` is not one of the supported values: ${$XmlComicPageTypeEnumMap.values.join(', ')}',
                ),
              )
              .key
        : null,
    doublePage: doublePage != null
        ? doublePage == 'true' || doublePage == '1'
              ? true
              : doublePage == 'false' || doublePage == '0'
              ? false
              : throw FormatException('Invalid bool format', doublePage)
        : null,
    imageSize: imageSize != null ? int.parse(imageSize) : null,
    bookmark: bookmark,
    imageWidth: imageWidth != null ? int.parse(imageWidth) : null,
    imageHeight: imageHeight != null ? int.parse(imageHeight) : null,
  );
}

List<XmlAttribute> _$XmlComicPageInfoToXmlAttributes(
  XmlComicPageInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  final attributes = <XmlAttribute>[];
  final image = instance.image;
  final imageSerialized = image.toString();
  final imageConstructed = XmlAttribute(XmlName('Image'), imageSerialized);
  attributes.add(imageConstructed);
  final type = instance.type;
  final typeSerialized = type != null ? $XmlComicPageTypeEnumMap[type]! : null;
  final typeConstructed = typeSerialized != null
      ? XmlAttribute(XmlName('Type'), typeSerialized)
      : null;
  if (typeConstructed != null) {
    attributes.add(typeConstructed);
  }
  final doublePage = instance.doublePage;
  final doublePageSerialized = doublePage != null
      ? doublePage == true
            ? 'true'
            : 'false'
      : null;
  final doublePageConstructed = doublePageSerialized != null
      ? XmlAttribute(XmlName('DoublePage'), doublePageSerialized)
      : null;
  if (doublePageConstructed != null) {
    attributes.add(doublePageConstructed);
  }
  final imageSize = instance.imageSize;
  final imageSizeSerialized = imageSize?.toString();
  final imageSizeConstructed = imageSizeSerialized != null
      ? XmlAttribute(XmlName('ImageSize'), imageSizeSerialized)
      : null;
  if (imageSizeConstructed != null) {
    attributes.add(imageSizeConstructed);
  }
  final bookmark = instance.bookmark;
  final bookmarkSerialized = bookmark;
  final bookmarkConstructed = bookmarkSerialized != null
      ? XmlAttribute(XmlName('Bookmark'), bookmarkSerialized)
      : null;
  if (bookmarkConstructed != null) {
    attributes.add(bookmarkConstructed);
  }
  final imageWidth = instance.imageWidth;
  final imageWidthSerialized = imageWidth?.toString();
  final imageWidthConstructed = imageWidthSerialized != null
      ? XmlAttribute(XmlName('ImageWidth'), imageWidthSerialized)
      : null;
  if (imageWidthConstructed != null) {
    attributes.add(imageWidthConstructed);
  }
  final imageHeight = instance.imageHeight;
  final imageHeightSerialized = imageHeight?.toString();
  final imageHeightConstructed = imageHeightSerialized != null
      ? XmlAttribute(XmlName('ImageHeight'), imageHeightSerialized)
      : null;
  if (imageHeightConstructed != null) {
    attributes.add(imageHeightConstructed);
  }
  return attributes;
}

List<XmlNode> _$XmlComicPageInfoToXmlChildren(
  XmlComicPageInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  final children = <XmlNode>[];
  return children;
}

XmlElement _$XmlComicPageInfoToXmlElement(
  XmlComicPageInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  return XmlElement(XmlName('Page'), [
    ...namespaces.toXmlAttributes(),
    ...instance.toXmlAttributes(namespaces: namespaces),
  ], instance.toXmlChildren(namespaces: namespaces));
}

void _$XmlArrayOfComicPageInfoBuildXmlChildren(
  XmlArrayOfComicPageInfo instance,
  XmlBuilder builder, {
  Map<String, String> namespaces = const {},
}) {
  final pages = instance.pages;
  final pagesSerialized = pages;
  if (pagesSerialized != null) {
    for (final value in pagesSerialized) {
      builder.element(
        'Page',
        nest: () {
          value.buildXmlChildren(builder, namespaces: namespaces);
        },
      );
    }
  }
}

void _$XmlArrayOfComicPageInfoBuildXmlElement(
  XmlArrayOfComicPageInfo instance,
  XmlBuilder builder, {
  Map<String, String> namespaces = const {},
}) {
  builder.element(
    'Pages',
    namespaces: namespaces,
    nest: () {
      instance.buildXmlChildren(builder, namespaces: namespaces);
    },
  );
}

XmlArrayOfComicPageInfo _$XmlArrayOfComicPageInfoFromXmlElement(
  XmlElement element,
) {
  final pages = element.getElements('Page');
  return XmlArrayOfComicPageInfo(
    pages: pages?.map((e) => XmlComicPageInfo.fromXmlElement(e)).toList(),
  );
}

List<XmlAttribute> _$XmlArrayOfComicPageInfoToXmlAttributes(
  XmlArrayOfComicPageInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  final attributes = <XmlAttribute>[];
  return attributes;
}

List<XmlNode> _$XmlArrayOfComicPageInfoToXmlChildren(
  XmlArrayOfComicPageInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  final children = <XmlNode>[];
  final pages = instance.pages;
  final pagesSerialized = pages;
  final pagesConstructed = pagesSerialized?.map(
    (e) => XmlElement(
      XmlName('Page'),
      e.toXmlAttributes(namespaces: namespaces),
      e.toXmlChildren(namespaces: namespaces),
    ),
  );
  if (pagesConstructed != null) {
    children.addAll(pagesConstructed);
  }
  return children;
}

XmlElement _$XmlArrayOfComicPageInfoToXmlElement(
  XmlArrayOfComicPageInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  return XmlElement(XmlName('Pages'), [
    ...namespaces.toXmlAttributes(),
    ...instance.toXmlAttributes(namespaces: namespaces),
  ], instance.toXmlChildren(namespaces: namespaces));
}

void _$XmlComicInfoBuildXmlChildren(
  XmlComicInfo instance,
  XmlBuilder builder, {
  Map<String, String> namespaces = const {},
}) {
  final title = instance.title;
  final titleSerialized = title;
  if (titleSerialized != null) {
    builder.element(
      'Title',
      nest: () {
        builder.text(titleSerialized);
      },
    );
  }
  final series = instance.series;
  final seriesSerialized = series;
  if (seriesSerialized != null) {
    builder.element(
      'Series',
      nest: () {
        builder.text(seriesSerialized);
      },
    );
  }
  final number = instance.number;
  final numberSerialized = number;
  if (numberSerialized != null) {
    builder.element(
      'Number',
      nest: () {
        builder.text(numberSerialized);
      },
    );
  }
  final count = instance.count;
  final countSerialized = count?.toString();
  if (countSerialized != null) {
    builder.element(
      'Count',
      nest: () {
        builder.text(countSerialized);
      },
    );
  }
  final volume = instance.volume;
  final volumeSerialized = volume?.toString();
  if (volumeSerialized != null) {
    builder.element(
      'Volume',
      nest: () {
        builder.text(volumeSerialized);
      },
    );
  }
  final alternateSeries = instance.alternateSeries;
  final alternateSeriesSerialized = alternateSeries;
  if (alternateSeriesSerialized != null) {
    builder.element(
      'AlternateSeries',
      nest: () {
        builder.text(alternateSeriesSerialized);
      },
    );
  }
  final alternateNumber = instance.alternateNumber;
  final alternateNumberSerialized = alternateNumber;
  if (alternateNumberSerialized != null) {
    builder.element(
      'AlternateNumber',
      nest: () {
        builder.text(alternateNumberSerialized);
      },
    );
  }
  final alternateCount = instance.alternateCount;
  final alternateCountSerialized = alternateCount?.toString();
  if (alternateCountSerialized != null) {
    builder.element(
      'AlternateCount',
      nest: () {
        builder.text(alternateCountSerialized);
      },
    );
  }
  final summary = instance.summary;
  final summarySerialized = summary;
  if (summarySerialized != null) {
    builder.element(
      'Summary',
      nest: () {
        builder.text(summarySerialized);
      },
    );
  }
  final notes = instance.notes;
  final notesSerialized = notes;
  if (notesSerialized != null) {
    builder.element(
      'Notes',
      nest: () {
        builder.text(notesSerialized);
      },
    );
  }
  final year = instance.year;
  final yearSerialized = year?.toString();
  if (yearSerialized != null) {
    builder.element(
      'Year',
      nest: () {
        builder.text(yearSerialized);
      },
    );
  }
  final month = instance.month;
  final monthSerialized = month?.toString();
  if (monthSerialized != null) {
    builder.element(
      'Month',
      nest: () {
        builder.text(monthSerialized);
      },
    );
  }
  final day = instance.day;
  final daySerialized = day?.toString();
  if (daySerialized != null) {
    builder.element(
      'Day',
      nest: () {
        builder.text(daySerialized);
      },
    );
  }
  final writer = instance.writer;
  final writerSerialized = writer;
  if (writerSerialized != null) {
    builder.element(
      'Writer',
      nest: () {
        builder.text(writerSerialized);
      },
    );
  }
  final penciller = instance.penciller;
  final pencillerSerialized = penciller;
  if (pencillerSerialized != null) {
    builder.element(
      'Penciller',
      nest: () {
        builder.text(pencillerSerialized);
      },
    );
  }
  final inker = instance.inker;
  final inkerSerialized = inker;
  if (inkerSerialized != null) {
    builder.element(
      'Inker',
      nest: () {
        builder.text(inkerSerialized);
      },
    );
  }
  final colorist = instance.colorist;
  final coloristSerialized = colorist;
  if (coloristSerialized != null) {
    builder.element(
      'Colorist',
      nest: () {
        builder.text(coloristSerialized);
      },
    );
  }
  final letterer = instance.letterer;
  final lettererSerialized = letterer;
  if (lettererSerialized != null) {
    builder.element(
      'Letterer',
      nest: () {
        builder.text(lettererSerialized);
      },
    );
  }
  final coverArtist = instance.coverArtist;
  final coverArtistSerialized = coverArtist;
  if (coverArtistSerialized != null) {
    builder.element(
      'CoverArtist',
      nest: () {
        builder.text(coverArtistSerialized);
      },
    );
  }
  final editor = instance.editor;
  final editorSerialized = editor;
  if (editorSerialized != null) {
    builder.element(
      'Editor',
      nest: () {
        builder.text(editorSerialized);
      },
    );
  }
  final publisher = instance.publisher;
  final publisherSerialized = publisher;
  if (publisherSerialized != null) {
    builder.element(
      'Publisher',
      nest: () {
        builder.text(publisherSerialized);
      },
    );
  }
  final translator = instance.translator;
  final translatorSerialized = translator;
  if (translatorSerialized != null) {
    builder.element(
      'Translator',
      nest: () {
        builder.text(translatorSerialized);
      },
    );
  }
  final imprint = instance.imprint;
  final imprintSerialized = imprint;
  if (imprintSerialized != null) {
    builder.element(
      'Imprint',
      nest: () {
        builder.text(imprintSerialized);
      },
    );
  }
  final genre = instance.genre;
  final genreSerialized = genre;
  if (genreSerialized != null) {
    builder.element(
      'Genre',
      nest: () {
        builder.text(genreSerialized);
      },
    );
  }
  final tags = instance.tags;
  final tagsSerialized = tags;
  if (tagsSerialized != null) {
    builder.element(
      'Tags',
      nest: () {
        builder.text(tagsSerialized);
      },
    );
  }
  final web = instance.web;
  final webSerialized = web;
  if (webSerialized != null) {
    builder.element(
      'Web',
      nest: () {
        builder.text(webSerialized);
      },
    );
  }
  final pageCount = instance.pageCount;
  final pageCountSerialized = pageCount?.toString();
  if (pageCountSerialized != null) {
    builder.element(
      'PageCount',
      nest: () {
        builder.text(pageCountSerialized);
      },
    );
  }
  final languageISO = instance.languageISO;
  final languageISOSerialized = languageISO;
  if (languageISOSerialized != null) {
    builder.element(
      'LanguageISO',
      nest: () {
        builder.text(languageISOSerialized);
      },
    );
  }
  final format = instance.format;
  final formatSerialized = format;
  if (formatSerialized != null) {
    builder.element(
      'Format',
      nest: () {
        builder.text(formatSerialized);
      },
    );
  }
  final blackAndWhite = instance.blackAndWhite;
  final blackAndWhiteSerialized = blackAndWhite != null
      ? $XmlYesNoEnumMap[blackAndWhite]!
      : null;
  if (blackAndWhiteSerialized != null) {
    builder.element(
      'BlackAndWhite',
      nest: () {
        builder.text(blackAndWhiteSerialized);
      },
    );
  }
  final manga = instance.manga;
  final mangaSerialized = manga != null ? $XmlMangaEnumMap[manga]! : null;
  if (mangaSerialized != null) {
    builder.element(
      'Manga',
      nest: () {
        builder.text(mangaSerialized);
      },
    );
  }
  final characters = instance.characters;
  final charactersSerialized = characters;
  if (charactersSerialized != null) {
    builder.element(
      'Characters',
      nest: () {
        builder.text(charactersSerialized);
      },
    );
  }
  final teams = instance.teams;
  final teamsSerialized = teams;
  if (teamsSerialized != null) {
    builder.element(
      'Teams',
      nest: () {
        builder.text(teamsSerialized);
      },
    );
  }
  final locations = instance.locations;
  final locationsSerialized = locations;
  if (locationsSerialized != null) {
    builder.element(
      'Locations',
      nest: () {
        builder.text(locationsSerialized);
      },
    );
  }
  final mainCharacterOrTeam = instance.mainCharacterOrTeam;
  final mainCharacterOrTeamSerialized = mainCharacterOrTeam;
  if (mainCharacterOrTeamSerialized != null) {
    builder.element(
      'MainCharacterOrTeam',
      nest: () {
        builder.text(mainCharacterOrTeamSerialized);
      },
    );
  }
  final scanInformation = instance.scanInformation;
  final scanInformationSerialized = scanInformation;
  if (scanInformationSerialized != null) {
    builder.element(
      'ScanInformation',
      nest: () {
        builder.text(scanInformationSerialized);
      },
    );
  }
  final storyArc = instance.storyArc;
  final storyArcSerialized = storyArc;
  if (storyArcSerialized != null) {
    builder.element(
      'StoryArc',
      nest: () {
        builder.text(storyArcSerialized);
      },
    );
  }
  final storyArcNumber = instance.storyArcNumber;
  final storyArcNumberSerialized = storyArcNumber;
  if (storyArcNumberSerialized != null) {
    builder.element(
      'StoryArcNumber',
      nest: () {
        builder.text(storyArcNumberSerialized);
      },
    );
  }
  final seriesGroup = instance.seriesGroup;
  final seriesGroupSerialized = seriesGroup;
  if (seriesGroupSerialized != null) {
    builder.element(
      'SeriesGroup',
      nest: () {
        builder.text(seriesGroupSerialized);
      },
    );
  }
  final ageRating = instance.ageRating;
  final ageRatingSerialized = ageRating != null
      ? $XmlAgeRatingEnumMap[ageRating]!
      : null;
  if (ageRatingSerialized != null) {
    builder.element(
      'AgeRating',
      nest: () {
        builder.text(ageRatingSerialized);
      },
    );
  }
  final communityRating = instance.communityRating;
  final communityRatingSerialized = communityRating?.toString();
  if (communityRatingSerialized != null) {
    builder.element(
      'CommunityRating',
      nest: () {
        builder.text(communityRatingSerialized);
      },
    );
  }
  final review = instance.review;
  final reviewSerialized = review;
  if (reviewSerialized != null) {
    builder.element(
      'Review',
      nest: () {
        builder.text(reviewSerialized);
      },
    );
  }
  final gtin = instance.gtin;
  final gtinSerialized = gtin;
  if (gtinSerialized != null) {
    builder.element(
      'GTIN',
      nest: () {
        builder.text(gtinSerialized);
      },
    );
  }
  final pages = instance.pages;
  final pagesSerialized = pages;
  if (pagesSerialized != null) {
    builder.element(
      'Pages',
      nest: () {
        pagesSerialized.buildXmlChildren(builder, namespaces: namespaces);
      },
    );
  }
}

void _$XmlComicInfoBuildXmlElement(
  XmlComicInfo instance,
  XmlBuilder builder, {
  Map<String, String> namespaces = const {},
}) {
  builder.element(
    'ComicInfo',
    namespaces: namespaces,
    nest: () {
      instance.buildXmlChildren(builder, namespaces: namespaces);
    },
  );
}

XmlComicInfo _$XmlComicInfoFromXmlElement(XmlElement element) {
  final title = element.getElement('Title')?.getText();
  final series = element.getElement('Series')?.getText();
  final number = element.getElement('Number')?.getText();
  final count = element.getElement('Count')?.getText();
  final volume = element.getElement('Volume')?.getText();
  final alternateSeries = element.getElement('AlternateSeries')?.getText();
  final alternateNumber = element.getElement('AlternateNumber')?.getText();
  final alternateCount = element.getElement('AlternateCount')?.getText();
  final summary = element.getElement('Summary')?.getText();
  final notes = element.getElement('Notes')?.getText();
  final year = element.getElement('Year')?.getText();
  final month = element.getElement('Month')?.getText();
  final day = element.getElement('Day')?.getText();
  final writer = element.getElement('Writer')?.getText();
  final penciller = element.getElement('Penciller')?.getText();
  final inker = element.getElement('Inker')?.getText();
  final colorist = element.getElement('Colorist')?.getText();
  final letterer = element.getElement('Letterer')?.getText();
  final coverArtist = element.getElement('CoverArtist')?.getText();
  final editor = element.getElement('Editor')?.getText();
  final publisher = element.getElement('Publisher')?.getText();
  final translator = element.getElement('Translator')?.getText();
  final imprint = element.getElement('Imprint')?.getText();
  final genre = element.getElement('Genre')?.getText();
  final tags = element.getElement('Tags')?.getText();
  final web = element.getElement('Web')?.getText();
  final pageCount = element.getElement('PageCount')?.getText();
  final languageISO = element.getElement('LanguageISO')?.getText();
  final format = element.getElement('Format')?.getText();
  final blackAndWhite = element.getElement('BlackAndWhite')?.getText();
  final manga = element.getElement('Manga')?.getText();
  final characters = element.getElement('Characters')?.getText();
  final teams = element.getElement('Teams')?.getText();
  final locations = element.getElement('Locations')?.getText();
  final mainCharacterOrTeam = element
      .getElement('MainCharacterOrTeam')
      ?.getText();
  final scanInformation = element.getElement('ScanInformation')?.getText();
  final storyArc = element.getElement('StoryArc')?.getText();
  final storyArcNumber = element.getElement('StoryArcNumber')?.getText();
  final seriesGroup = element.getElement('SeriesGroup')?.getText();
  final ageRating = element.getElement('AgeRating')?.getText();
  final communityRating = element.getElement('CommunityRating')?.getText();
  final review = element.getElement('Review')?.getText();
  final gtin = element.getElement('GTIN')?.getText();
  final pages = element.getElement('Pages');
  return XmlComicInfo(
    title: title,
    series: series,
    number: number,
    count: count != null ? int.parse(count) : null,
    volume: volume != null ? int.parse(volume) : null,
    alternateSeries: alternateSeries,
    alternateNumber: alternateNumber,
    alternateCount: alternateCount != null ? int.parse(alternateCount) : null,
    summary: summary,
    notes: notes,
    year: year != null ? int.parse(year) : null,
    month: month != null ? int.parse(month) : null,
    day: day != null ? int.parse(day) : null,
    writer: writer,
    penciller: penciller,
    inker: inker,
    colorist: colorist,
    letterer: letterer,
    coverArtist: coverArtist,
    editor: editor,
    publisher: publisher,
    translator: translator,
    imprint: imprint,
    genre: genre,
    tags: tags,
    web: web,
    pageCount: pageCount != null ? int.parse(pageCount) : null,
    languageISO: languageISO,
    format: format,
    blackAndWhite: blackAndWhite != null
        ? $XmlYesNoEnumMap.entries
              .singleWhere(
                (xmlYesNoEnumMapEntry) =>
                    xmlYesNoEnumMapEntry.value == blackAndWhite,
                orElse: () => throw ArgumentError(
                  '`$blackAndWhite` is not one of the supported values: ${$XmlYesNoEnumMap.values.join(', ')}',
                ),
              )
              .key
        : null,
    manga: manga != null
        ? $XmlMangaEnumMap.entries
              .singleWhere(
                (xmlMangaEnumMapEntry) => xmlMangaEnumMapEntry.value == manga,
                orElse: () => throw ArgumentError(
                  '`$manga` is not one of the supported values: ${$XmlMangaEnumMap.values.join(', ')}',
                ),
              )
              .key
        : null,
    characters: characters,
    teams: teams,
    locations: locations,
    mainCharacterOrTeam: mainCharacterOrTeam,
    scanInformation: scanInformation,
    storyArc: storyArc,
    storyArcNumber: storyArcNumber,
    seriesGroup: seriesGroup,
    ageRating: ageRating != null
        ? $XmlAgeRatingEnumMap.entries
              .singleWhere(
                (xmlAgeRatingEnumMapEntry) =>
                    xmlAgeRatingEnumMapEntry.value == ageRating,
                orElse: () => throw ArgumentError(
                  '`$ageRating` is not one of the supported values: ${$XmlAgeRatingEnumMap.values.join(', ')}',
                ),
              )
              .key
        : null,
    communityRating: communityRating != null
        ? double.parse(communityRating)
        : null,
    review: review,
    gtin: gtin,
    pages: pages != null ? XmlArrayOfComicPageInfo.fromXmlElement(pages) : null,
  );
}

List<XmlAttribute> _$XmlComicInfoToXmlAttributes(
  XmlComicInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  final attributes = <XmlAttribute>[];
  return attributes;
}

List<XmlNode> _$XmlComicInfoToXmlChildren(
  XmlComicInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  final children = <XmlNode>[];
  final title = instance.title;
  final titleSerialized = title;
  final titleConstructed = titleSerialized != null
      ? XmlElement(XmlName('Title'), [], [XmlText(titleSerialized)])
      : null;
  if (titleConstructed != null) {
    children.add(titleConstructed);
  }
  final series = instance.series;
  final seriesSerialized = series;
  final seriesConstructed = seriesSerialized != null
      ? XmlElement(XmlName('Series'), [], [XmlText(seriesSerialized)])
      : null;
  if (seriesConstructed != null) {
    children.add(seriesConstructed);
  }
  final number = instance.number;
  final numberSerialized = number;
  final numberConstructed = numberSerialized != null
      ? XmlElement(XmlName('Number'), [], [XmlText(numberSerialized)])
      : null;
  if (numberConstructed != null) {
    children.add(numberConstructed);
  }
  final count = instance.count;
  final countSerialized = count?.toString();
  final countConstructed = countSerialized != null
      ? XmlElement(XmlName('Count'), [], [XmlText(countSerialized)])
      : null;
  if (countConstructed != null) {
    children.add(countConstructed);
  }
  final volume = instance.volume;
  final volumeSerialized = volume?.toString();
  final volumeConstructed = volumeSerialized != null
      ? XmlElement(XmlName('Volume'), [], [XmlText(volumeSerialized)])
      : null;
  if (volumeConstructed != null) {
    children.add(volumeConstructed);
  }
  final alternateSeries = instance.alternateSeries;
  final alternateSeriesSerialized = alternateSeries;
  final alternateSeriesConstructed = alternateSeriesSerialized != null
      ? XmlElement(XmlName('AlternateSeries'), [], [
          XmlText(alternateSeriesSerialized),
        ])
      : null;
  if (alternateSeriesConstructed != null) {
    children.add(alternateSeriesConstructed);
  }
  final alternateNumber = instance.alternateNumber;
  final alternateNumberSerialized = alternateNumber;
  final alternateNumberConstructed = alternateNumberSerialized != null
      ? XmlElement(XmlName('AlternateNumber'), [], [
          XmlText(alternateNumberSerialized),
        ])
      : null;
  if (alternateNumberConstructed != null) {
    children.add(alternateNumberConstructed);
  }
  final alternateCount = instance.alternateCount;
  final alternateCountSerialized = alternateCount?.toString();
  final alternateCountConstructed = alternateCountSerialized != null
      ? XmlElement(XmlName('AlternateCount'), [], [
          XmlText(alternateCountSerialized),
        ])
      : null;
  if (alternateCountConstructed != null) {
    children.add(alternateCountConstructed);
  }
  final summary = instance.summary;
  final summarySerialized = summary;
  final summaryConstructed = summarySerialized != null
      ? XmlElement(XmlName('Summary'), [], [XmlText(summarySerialized)])
      : null;
  if (summaryConstructed != null) {
    children.add(summaryConstructed);
  }
  final notes = instance.notes;
  final notesSerialized = notes;
  final notesConstructed = notesSerialized != null
      ? XmlElement(XmlName('Notes'), [], [XmlText(notesSerialized)])
      : null;
  if (notesConstructed != null) {
    children.add(notesConstructed);
  }
  final year = instance.year;
  final yearSerialized = year?.toString();
  final yearConstructed = yearSerialized != null
      ? XmlElement(XmlName('Year'), [], [XmlText(yearSerialized)])
      : null;
  if (yearConstructed != null) {
    children.add(yearConstructed);
  }
  final month = instance.month;
  final monthSerialized = month?.toString();
  final monthConstructed = monthSerialized != null
      ? XmlElement(XmlName('Month'), [], [XmlText(monthSerialized)])
      : null;
  if (monthConstructed != null) {
    children.add(monthConstructed);
  }
  final day = instance.day;
  final daySerialized = day?.toString();
  final dayConstructed = daySerialized != null
      ? XmlElement(XmlName('Day'), [], [XmlText(daySerialized)])
      : null;
  if (dayConstructed != null) {
    children.add(dayConstructed);
  }
  final writer = instance.writer;
  final writerSerialized = writer;
  final writerConstructed = writerSerialized != null
      ? XmlElement(XmlName('Writer'), [], [XmlText(writerSerialized)])
      : null;
  if (writerConstructed != null) {
    children.add(writerConstructed);
  }
  final penciller = instance.penciller;
  final pencillerSerialized = penciller;
  final pencillerConstructed = pencillerSerialized != null
      ? XmlElement(XmlName('Penciller'), [], [XmlText(pencillerSerialized)])
      : null;
  if (pencillerConstructed != null) {
    children.add(pencillerConstructed);
  }
  final inker = instance.inker;
  final inkerSerialized = inker;
  final inkerConstructed = inkerSerialized != null
      ? XmlElement(XmlName('Inker'), [], [XmlText(inkerSerialized)])
      : null;
  if (inkerConstructed != null) {
    children.add(inkerConstructed);
  }
  final colorist = instance.colorist;
  final coloristSerialized = colorist;
  final coloristConstructed = coloristSerialized != null
      ? XmlElement(XmlName('Colorist'), [], [XmlText(coloristSerialized)])
      : null;
  if (coloristConstructed != null) {
    children.add(coloristConstructed);
  }
  final letterer = instance.letterer;
  final lettererSerialized = letterer;
  final lettererConstructed = lettererSerialized != null
      ? XmlElement(XmlName('Letterer'), [], [XmlText(lettererSerialized)])
      : null;
  if (lettererConstructed != null) {
    children.add(lettererConstructed);
  }
  final coverArtist = instance.coverArtist;
  final coverArtistSerialized = coverArtist;
  final coverArtistConstructed = coverArtistSerialized != null
      ? XmlElement(XmlName('CoverArtist'), [], [XmlText(coverArtistSerialized)])
      : null;
  if (coverArtistConstructed != null) {
    children.add(coverArtistConstructed);
  }
  final editor = instance.editor;
  final editorSerialized = editor;
  final editorConstructed = editorSerialized != null
      ? XmlElement(XmlName('Editor'), [], [XmlText(editorSerialized)])
      : null;
  if (editorConstructed != null) {
    children.add(editorConstructed);
  }
  final publisher = instance.publisher;
  final publisherSerialized = publisher;
  final publisherConstructed = publisherSerialized != null
      ? XmlElement(XmlName('Publisher'), [], [XmlText(publisherSerialized)])
      : null;
  if (publisherConstructed != null) {
    children.add(publisherConstructed);
  }
  final translator = instance.translator;
  final translatorSerialized = translator;
  final translatorConstructed = translatorSerialized != null
      ? XmlElement(XmlName('Translator'), [], [XmlText(translatorSerialized)])
      : null;
  if (translatorConstructed != null) {
    children.add(translatorConstructed);
  }
  final imprint = instance.imprint;
  final imprintSerialized = imprint;
  final imprintConstructed = imprintSerialized != null
      ? XmlElement(XmlName('Imprint'), [], [XmlText(imprintSerialized)])
      : null;
  if (imprintConstructed != null) {
    children.add(imprintConstructed);
  }
  final genre = instance.genre;
  final genreSerialized = genre;
  final genreConstructed = genreSerialized != null
      ? XmlElement(XmlName('Genre'), [], [XmlText(genreSerialized)])
      : null;
  if (genreConstructed != null) {
    children.add(genreConstructed);
  }
  final tags = instance.tags;
  final tagsSerialized = tags;
  final tagsConstructed = tagsSerialized != null
      ? XmlElement(XmlName('Tags'), [], [XmlText(tagsSerialized)])
      : null;
  if (tagsConstructed != null) {
    children.add(tagsConstructed);
  }
  final web = instance.web;
  final webSerialized = web;
  final webConstructed = webSerialized != null
      ? XmlElement(XmlName('Web'), [], [XmlText(webSerialized)])
      : null;
  if (webConstructed != null) {
    children.add(webConstructed);
  }
  final pageCount = instance.pageCount;
  final pageCountSerialized = pageCount?.toString();
  final pageCountConstructed = pageCountSerialized != null
      ? XmlElement(XmlName('PageCount'), [], [XmlText(pageCountSerialized)])
      : null;
  if (pageCountConstructed != null) {
    children.add(pageCountConstructed);
  }
  final languageISO = instance.languageISO;
  final languageISOSerialized = languageISO;
  final languageISOConstructed = languageISOSerialized != null
      ? XmlElement(XmlName('LanguageISO'), [], [XmlText(languageISOSerialized)])
      : null;
  if (languageISOConstructed != null) {
    children.add(languageISOConstructed);
  }
  final format = instance.format;
  final formatSerialized = format;
  final formatConstructed = formatSerialized != null
      ? XmlElement(XmlName('Format'), [], [XmlText(formatSerialized)])
      : null;
  if (formatConstructed != null) {
    children.add(formatConstructed);
  }
  final blackAndWhite = instance.blackAndWhite;
  final blackAndWhiteSerialized = blackAndWhite != null
      ? $XmlYesNoEnumMap[blackAndWhite]!
      : null;
  final blackAndWhiteConstructed = blackAndWhiteSerialized != null
      ? XmlElement(XmlName('BlackAndWhite'), [], [
          XmlText(blackAndWhiteSerialized),
        ])
      : null;
  if (blackAndWhiteConstructed != null) {
    children.add(blackAndWhiteConstructed);
  }
  final manga = instance.manga;
  final mangaSerialized = manga != null ? $XmlMangaEnumMap[manga]! : null;
  final mangaConstructed = mangaSerialized != null
      ? XmlElement(XmlName('Manga'), [], [XmlText(mangaSerialized)])
      : null;
  if (mangaConstructed != null) {
    children.add(mangaConstructed);
  }
  final characters = instance.characters;
  final charactersSerialized = characters;
  final charactersConstructed = charactersSerialized != null
      ? XmlElement(XmlName('Characters'), [], [XmlText(charactersSerialized)])
      : null;
  if (charactersConstructed != null) {
    children.add(charactersConstructed);
  }
  final teams = instance.teams;
  final teamsSerialized = teams;
  final teamsConstructed = teamsSerialized != null
      ? XmlElement(XmlName('Teams'), [], [XmlText(teamsSerialized)])
      : null;
  if (teamsConstructed != null) {
    children.add(teamsConstructed);
  }
  final locations = instance.locations;
  final locationsSerialized = locations;
  final locationsConstructed = locationsSerialized != null
      ? XmlElement(XmlName('Locations'), [], [XmlText(locationsSerialized)])
      : null;
  if (locationsConstructed != null) {
    children.add(locationsConstructed);
  }
  final mainCharacterOrTeam = instance.mainCharacterOrTeam;
  final mainCharacterOrTeamSerialized = mainCharacterOrTeam;
  final mainCharacterOrTeamConstructed = mainCharacterOrTeamSerialized != null
      ? XmlElement(XmlName('MainCharacterOrTeam'), [], [
          XmlText(mainCharacterOrTeamSerialized),
        ])
      : null;
  if (mainCharacterOrTeamConstructed != null) {
    children.add(mainCharacterOrTeamConstructed);
  }
  final scanInformation = instance.scanInformation;
  final scanInformationSerialized = scanInformation;
  final scanInformationConstructed = scanInformationSerialized != null
      ? XmlElement(XmlName('ScanInformation'), [], [
          XmlText(scanInformationSerialized),
        ])
      : null;
  if (scanInformationConstructed != null) {
    children.add(scanInformationConstructed);
  }
  final storyArc = instance.storyArc;
  final storyArcSerialized = storyArc;
  final storyArcConstructed = storyArcSerialized != null
      ? XmlElement(XmlName('StoryArc'), [], [XmlText(storyArcSerialized)])
      : null;
  if (storyArcConstructed != null) {
    children.add(storyArcConstructed);
  }
  final storyArcNumber = instance.storyArcNumber;
  final storyArcNumberSerialized = storyArcNumber;
  final storyArcNumberConstructed = storyArcNumberSerialized != null
      ? XmlElement(XmlName('StoryArcNumber'), [], [
          XmlText(storyArcNumberSerialized),
        ])
      : null;
  if (storyArcNumberConstructed != null) {
    children.add(storyArcNumberConstructed);
  }
  final seriesGroup = instance.seriesGroup;
  final seriesGroupSerialized = seriesGroup;
  final seriesGroupConstructed = seriesGroupSerialized != null
      ? XmlElement(XmlName('SeriesGroup'), [], [XmlText(seriesGroupSerialized)])
      : null;
  if (seriesGroupConstructed != null) {
    children.add(seriesGroupConstructed);
  }
  final ageRating = instance.ageRating;
  final ageRatingSerialized = ageRating != null
      ? $XmlAgeRatingEnumMap[ageRating]!
      : null;
  final ageRatingConstructed = ageRatingSerialized != null
      ? XmlElement(XmlName('AgeRating'), [], [XmlText(ageRatingSerialized)])
      : null;
  if (ageRatingConstructed != null) {
    children.add(ageRatingConstructed);
  }
  final communityRating = instance.communityRating;
  final communityRatingSerialized = communityRating?.toString();
  final communityRatingConstructed = communityRatingSerialized != null
      ? XmlElement(XmlName('CommunityRating'), [], [
          XmlText(communityRatingSerialized),
        ])
      : null;
  if (communityRatingConstructed != null) {
    children.add(communityRatingConstructed);
  }
  final review = instance.review;
  final reviewSerialized = review;
  final reviewConstructed = reviewSerialized != null
      ? XmlElement(XmlName('Review'), [], [XmlText(reviewSerialized)])
      : null;
  if (reviewConstructed != null) {
    children.add(reviewConstructed);
  }
  final gtin = instance.gtin;
  final gtinSerialized = gtin;
  final gtinConstructed = gtinSerialized != null
      ? XmlElement(XmlName('GTIN'), [], [XmlText(gtinSerialized)])
      : null;
  if (gtinConstructed != null) {
    children.add(gtinConstructed);
  }
  final pages = instance.pages;
  final pagesSerialized = pages;
  final pagesConstructed = pagesSerialized != null
      ? XmlElement(
          XmlName('Pages'),
          pagesSerialized.toXmlAttributes(namespaces: namespaces),
          pagesSerialized.toXmlChildren(namespaces: namespaces),
        )
      : null;
  if (pagesConstructed != null) {
    children.add(pagesConstructed);
  }
  return children;
}

XmlElement _$XmlComicInfoToXmlElement(
  XmlComicInfo instance, {
  Map<String, String?> namespaces = const {},
}) {
  return XmlElement(XmlName('ComicInfo'), [
    ...namespaces.toXmlAttributes(),
    ...instance.toXmlAttributes(namespaces: namespaces),
  ], instance.toXmlChildren(namespaces: namespaces));
}
