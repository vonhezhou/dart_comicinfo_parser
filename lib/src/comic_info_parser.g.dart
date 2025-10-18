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
  builder.element(
    'Title',
    nest: () {
      if (titleSerialized != null) {
        builder.text(titleSerialized);
      }
    },
  );
  final series = instance.series;
  final seriesSerialized = series;
  builder.element(
    'Series',
    nest: () {
      if (seriesSerialized != null) {
        builder.text(seriesSerialized);
      }
    },
  );
  final number = instance.number;
  final numberSerialized = number;
  builder.element(
    'Number',
    nest: () {
      if (numberSerialized != null) {
        builder.text(numberSerialized);
      }
    },
  );
  final count = instance.count;
  final countSerialized = count?.toString();
  builder.element(
    'Count',
    nest: () {
      if (countSerialized != null) {
        builder.text(countSerialized);
      }
    },
  );
  final volume = instance.volume;
  final volumeSerialized = volume?.toString();
  builder.element(
    'Volume',
    nest: () {
      if (volumeSerialized != null) {
        builder.text(volumeSerialized);
      }
    },
  );
  final alternateSeries = instance.alternateSeries;
  final alternateSeriesSerialized = alternateSeries;
  builder.element(
    'AlternateSeries',
    nest: () {
      if (alternateSeriesSerialized != null) {
        builder.text(alternateSeriesSerialized);
      }
    },
  );
  final alternateNumber = instance.alternateNumber;
  final alternateNumberSerialized = alternateNumber;
  builder.element(
    'AlternateNumber',
    nest: () {
      if (alternateNumberSerialized != null) {
        builder.text(alternateNumberSerialized);
      }
    },
  );
  final alternateCount = instance.alternateCount;
  final alternateCountSerialized = alternateCount?.toString();
  builder.element(
    'AlternateCount',
    nest: () {
      if (alternateCountSerialized != null) {
        builder.text(alternateCountSerialized);
      }
    },
  );
  final summary = instance.summary;
  final summarySerialized = summary;
  builder.element(
    'Summary',
    nest: () {
      if (summarySerialized != null) {
        builder.text(summarySerialized);
      }
    },
  );
  final notes = instance.notes;
  final notesSerialized = notes;
  builder.element(
    'Notes',
    nest: () {
      if (notesSerialized != null) {
        builder.text(notesSerialized);
      }
    },
  );
  final year = instance.year;
  final yearSerialized = year?.toString();
  builder.element(
    'Year',
    nest: () {
      if (yearSerialized != null) {
        builder.text(yearSerialized);
      }
    },
  );
  final month = instance.month;
  final monthSerialized = month?.toString();
  builder.element(
    'Month',
    nest: () {
      if (monthSerialized != null) {
        builder.text(monthSerialized);
      }
    },
  );
  final day = instance.day;
  final daySerialized = day?.toString();
  builder.element(
    'Day',
    nest: () {
      if (daySerialized != null) {
        builder.text(daySerialized);
      }
    },
  );
  final writer = instance.writer;
  final writerSerialized = writer;
  builder.element(
    'Writer',
    nest: () {
      if (writerSerialized != null) {
        builder.text(writerSerialized);
      }
    },
  );
  final penciller = instance.penciller;
  final pencillerSerialized = penciller;
  builder.element(
    'Penciller',
    nest: () {
      if (pencillerSerialized != null) {
        builder.text(pencillerSerialized);
      }
    },
  );
  final inker = instance.inker;
  final inkerSerialized = inker;
  builder.element(
    'Inker',
    nest: () {
      if (inkerSerialized != null) {
        builder.text(inkerSerialized);
      }
    },
  );
  final colorist = instance.colorist;
  final coloristSerialized = colorist;
  builder.element(
    'Colorist',
    nest: () {
      if (coloristSerialized != null) {
        builder.text(coloristSerialized);
      }
    },
  );
  final letterer = instance.letterer;
  final lettererSerialized = letterer;
  builder.element(
    'Letterer',
    nest: () {
      if (lettererSerialized != null) {
        builder.text(lettererSerialized);
      }
    },
  );
  final coverArtist = instance.coverArtist;
  final coverArtistSerialized = coverArtist;
  builder.element(
    'CoverArtist',
    nest: () {
      if (coverArtistSerialized != null) {
        builder.text(coverArtistSerialized);
      }
    },
  );
  final editor = instance.editor;
  final editorSerialized = editor;
  builder.element(
    'Editor',
    nest: () {
      if (editorSerialized != null) {
        builder.text(editorSerialized);
      }
    },
  );
  final publisher = instance.publisher;
  final publisherSerialized = publisher;
  builder.element(
    'Publisher',
    nest: () {
      if (publisherSerialized != null) {
        builder.text(publisherSerialized);
      }
    },
  );
  final translator = instance.translator;
  final translatorSerialized = translator;
  builder.element(
    'Translator',
    nest: () {
      if (translatorSerialized != null) {
        builder.text(translatorSerialized);
      }
    },
  );
  final imprint = instance.imprint;
  final imprintSerialized = imprint;
  builder.element(
    'Imprint',
    nest: () {
      if (imprintSerialized != null) {
        builder.text(imprintSerialized);
      }
    },
  );
  final genre = instance.genre;
  final genreSerialized = genre;
  builder.element(
    'Genre',
    nest: () {
      if (genreSerialized != null) {
        builder.text(genreSerialized);
      }
    },
  );
  final tags = instance.tags;
  final tagsSerialized = tags;
  builder.element(
    'Tags',
    nest: () {
      if (tagsSerialized != null) {
        builder.text(tagsSerialized);
      }
    },
  );
  final web = instance.web;
  final webSerialized = web;
  builder.element(
    'Web',
    nest: () {
      if (webSerialized != null) {
        builder.text(webSerialized);
      }
    },
  );
  final pageCount = instance.pageCount;
  final pageCountSerialized = pageCount?.toString();
  builder.element(
    'PageCount',
    nest: () {
      if (pageCountSerialized != null) {
        builder.text(pageCountSerialized);
      }
    },
  );
  final languageISO = instance.languageISO;
  final languageISOSerialized = languageISO;
  builder.element(
    'LanguageISO',
    nest: () {
      if (languageISOSerialized != null) {
        builder.text(languageISOSerialized);
      }
    },
  );
  final format = instance.format;
  final formatSerialized = format;
  builder.element(
    'Format',
    nest: () {
      if (formatSerialized != null) {
        builder.text(formatSerialized);
      }
    },
  );
  final blackAndWhite = instance.blackAndWhite;
  final blackAndWhiteSerialized = blackAndWhite != null
      ? $XmlYesNoEnumMap[blackAndWhite]!
      : null;
  builder.element(
    'BlackAndWhite',
    nest: () {
      if (blackAndWhiteSerialized != null) {
        builder.text(blackAndWhiteSerialized);
      }
    },
  );
  final manga = instance.manga;
  final mangaSerialized = manga != null ? $XmlMangaEnumMap[manga]! : null;
  builder.element(
    'Manga',
    nest: () {
      if (mangaSerialized != null) {
        builder.text(mangaSerialized);
      }
    },
  );
  final characters = instance.characters;
  final charactersSerialized = characters;
  builder.element(
    'Characters',
    nest: () {
      if (charactersSerialized != null) {
        builder.text(charactersSerialized);
      }
    },
  );
  final teams = instance.teams;
  final teamsSerialized = teams;
  builder.element(
    'Teams',
    nest: () {
      if (teamsSerialized != null) {
        builder.text(teamsSerialized);
      }
    },
  );
  final locations = instance.locations;
  final locationsSerialized = locations;
  builder.element(
    'Locations',
    nest: () {
      if (locationsSerialized != null) {
        builder.text(locationsSerialized);
      }
    },
  );
  final mainCharacterOrTeam = instance.mainCharacterOrTeam;
  final mainCharacterOrTeamSerialized = mainCharacterOrTeam;
  builder.element(
    'MainCharacterOrTeam',
    nest: () {
      if (mainCharacterOrTeamSerialized != null) {
        builder.text(mainCharacterOrTeamSerialized);
      }
    },
  );
  final scanInformation = instance.scanInformation;
  final scanInformationSerialized = scanInformation;
  builder.element(
    'ScanInformation',
    nest: () {
      if (scanInformationSerialized != null) {
        builder.text(scanInformationSerialized);
      }
    },
  );
  final storyArc = instance.storyArc;
  final storyArcSerialized = storyArc;
  builder.element(
    'StoryArc',
    nest: () {
      if (storyArcSerialized != null) {
        builder.text(storyArcSerialized);
      }
    },
  );
  final storyArcNumber = instance.storyArcNumber;
  final storyArcNumberSerialized = storyArcNumber;
  builder.element(
    'StoryArcNumber',
    nest: () {
      if (storyArcNumberSerialized != null) {
        builder.text(storyArcNumberSerialized);
      }
    },
  );
  final seriesGroup = instance.seriesGroup;
  final seriesGroupSerialized = seriesGroup;
  builder.element(
    'SeriesGroup',
    nest: () {
      if (seriesGroupSerialized != null) {
        builder.text(seriesGroupSerialized);
      }
    },
  );
  final ageRating = instance.ageRating;
  final ageRatingSerialized = ageRating != null
      ? $XmlAgeRatingEnumMap[ageRating]!
      : null;
  builder.element(
    'AgeRating',
    nest: () {
      if (ageRatingSerialized != null) {
        builder.text(ageRatingSerialized);
      }
    },
  );
  final communityRating = instance.communityRating;
  final communityRatingSerialized = communityRating?.toString();
  builder.element(
    'CommunityRating',
    nest: () {
      if (communityRatingSerialized != null) {
        builder.text(communityRatingSerialized);
      }
    },
  );
  final review = instance.review;
  final reviewSerialized = review;
  builder.element(
    'Review',
    nest: () {
      if (reviewSerialized != null) {
        builder.text(reviewSerialized);
      }
    },
  );
  final gtin = instance.gtin;
  final gtinSerialized = gtin;
  builder.element(
    'GTIN',
    nest: () {
      if (gtinSerialized != null) {
        builder.text(gtinSerialized);
      }
    },
  );
  final pages = instance.pages;
  final pagesSerialized = pages;
  builder.element(
    'Pages',
    nest: () {
      if (pagesSerialized != null) {
        pagesSerialized.buildXmlChildren(builder, namespaces: namespaces);
      }
    },
  );
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
  final titleConstructed = XmlElement(
    XmlName('Title'),
    [],
    titleSerialized != null ? [XmlText(titleSerialized)] : [],
  );
  children.add(titleConstructed);
  final series = instance.series;
  final seriesSerialized = series;
  final seriesConstructed = XmlElement(
    XmlName('Series'),
    [],
    seriesSerialized != null ? [XmlText(seriesSerialized)] : [],
  );
  children.add(seriesConstructed);
  final number = instance.number;
  final numberSerialized = number;
  final numberConstructed = XmlElement(
    XmlName('Number'),
    [],
    numberSerialized != null ? [XmlText(numberSerialized)] : [],
  );
  children.add(numberConstructed);
  final count = instance.count;
  final countSerialized = count?.toString();
  final countConstructed = XmlElement(
    XmlName('Count'),
    [],
    countSerialized != null ? [XmlText(countSerialized)] : [],
  );
  children.add(countConstructed);
  final volume = instance.volume;
  final volumeSerialized = volume?.toString();
  final volumeConstructed = XmlElement(
    XmlName('Volume'),
    [],
    volumeSerialized != null ? [XmlText(volumeSerialized)] : [],
  );
  children.add(volumeConstructed);
  final alternateSeries = instance.alternateSeries;
  final alternateSeriesSerialized = alternateSeries;
  final alternateSeriesConstructed = XmlElement(
    XmlName('AlternateSeries'),
    [],
    alternateSeriesSerialized != null
        ? [XmlText(alternateSeriesSerialized)]
        : [],
  );
  children.add(alternateSeriesConstructed);
  final alternateNumber = instance.alternateNumber;
  final alternateNumberSerialized = alternateNumber;
  final alternateNumberConstructed = XmlElement(
    XmlName('AlternateNumber'),
    [],
    alternateNumberSerialized != null
        ? [XmlText(alternateNumberSerialized)]
        : [],
  );
  children.add(alternateNumberConstructed);
  final alternateCount = instance.alternateCount;
  final alternateCountSerialized = alternateCount?.toString();
  final alternateCountConstructed = XmlElement(
    XmlName('AlternateCount'),
    [],
    alternateCountSerialized != null ? [XmlText(alternateCountSerialized)] : [],
  );
  children.add(alternateCountConstructed);
  final summary = instance.summary;
  final summarySerialized = summary;
  final summaryConstructed = XmlElement(
    XmlName('Summary'),
    [],
    summarySerialized != null ? [XmlText(summarySerialized)] : [],
  );
  children.add(summaryConstructed);
  final notes = instance.notes;
  final notesSerialized = notes;
  final notesConstructed = XmlElement(
    XmlName('Notes'),
    [],
    notesSerialized != null ? [XmlText(notesSerialized)] : [],
  );
  children.add(notesConstructed);
  final year = instance.year;
  final yearSerialized = year?.toString();
  final yearConstructed = XmlElement(
    XmlName('Year'),
    [],
    yearSerialized != null ? [XmlText(yearSerialized)] : [],
  );
  children.add(yearConstructed);
  final month = instance.month;
  final monthSerialized = month?.toString();
  final monthConstructed = XmlElement(
    XmlName('Month'),
    [],
    monthSerialized != null ? [XmlText(monthSerialized)] : [],
  );
  children.add(monthConstructed);
  final day = instance.day;
  final daySerialized = day?.toString();
  final dayConstructed = XmlElement(
    XmlName('Day'),
    [],
    daySerialized != null ? [XmlText(daySerialized)] : [],
  );
  children.add(dayConstructed);
  final writer = instance.writer;
  final writerSerialized = writer;
  final writerConstructed = XmlElement(
    XmlName('Writer'),
    [],
    writerSerialized != null ? [XmlText(writerSerialized)] : [],
  );
  children.add(writerConstructed);
  final penciller = instance.penciller;
  final pencillerSerialized = penciller;
  final pencillerConstructed = XmlElement(
    XmlName('Penciller'),
    [],
    pencillerSerialized != null ? [XmlText(pencillerSerialized)] : [],
  );
  children.add(pencillerConstructed);
  final inker = instance.inker;
  final inkerSerialized = inker;
  final inkerConstructed = XmlElement(
    XmlName('Inker'),
    [],
    inkerSerialized != null ? [XmlText(inkerSerialized)] : [],
  );
  children.add(inkerConstructed);
  final colorist = instance.colorist;
  final coloristSerialized = colorist;
  final coloristConstructed = XmlElement(
    XmlName('Colorist'),
    [],
    coloristSerialized != null ? [XmlText(coloristSerialized)] : [],
  );
  children.add(coloristConstructed);
  final letterer = instance.letterer;
  final lettererSerialized = letterer;
  final lettererConstructed = XmlElement(
    XmlName('Letterer'),
    [],
    lettererSerialized != null ? [XmlText(lettererSerialized)] : [],
  );
  children.add(lettererConstructed);
  final coverArtist = instance.coverArtist;
  final coverArtistSerialized = coverArtist;
  final coverArtistConstructed = XmlElement(
    XmlName('CoverArtist'),
    [],
    coverArtistSerialized != null ? [XmlText(coverArtistSerialized)] : [],
  );
  children.add(coverArtistConstructed);
  final editor = instance.editor;
  final editorSerialized = editor;
  final editorConstructed = XmlElement(
    XmlName('Editor'),
    [],
    editorSerialized != null ? [XmlText(editorSerialized)] : [],
  );
  children.add(editorConstructed);
  final publisher = instance.publisher;
  final publisherSerialized = publisher;
  final publisherConstructed = XmlElement(
    XmlName('Publisher'),
    [],
    publisherSerialized != null ? [XmlText(publisherSerialized)] : [],
  );
  children.add(publisherConstructed);
  final translator = instance.translator;
  final translatorSerialized = translator;
  final translatorConstructed = XmlElement(
    XmlName('Translator'),
    [],
    translatorSerialized != null ? [XmlText(translatorSerialized)] : [],
  );
  children.add(translatorConstructed);
  final imprint = instance.imprint;
  final imprintSerialized = imprint;
  final imprintConstructed = XmlElement(
    XmlName('Imprint'),
    [],
    imprintSerialized != null ? [XmlText(imprintSerialized)] : [],
  );
  children.add(imprintConstructed);
  final genre = instance.genre;
  final genreSerialized = genre;
  final genreConstructed = XmlElement(
    XmlName('Genre'),
    [],
    genreSerialized != null ? [XmlText(genreSerialized)] : [],
  );
  children.add(genreConstructed);
  final tags = instance.tags;
  final tagsSerialized = tags;
  final tagsConstructed = XmlElement(
    XmlName('Tags'),
    [],
    tagsSerialized != null ? [XmlText(tagsSerialized)] : [],
  );
  children.add(tagsConstructed);
  final web = instance.web;
  final webSerialized = web;
  final webConstructed = XmlElement(
    XmlName('Web'),
    [],
    webSerialized != null ? [XmlText(webSerialized)] : [],
  );
  children.add(webConstructed);
  final pageCount = instance.pageCount;
  final pageCountSerialized = pageCount?.toString();
  final pageCountConstructed = XmlElement(
    XmlName('PageCount'),
    [],
    pageCountSerialized != null ? [XmlText(pageCountSerialized)] : [],
  );
  children.add(pageCountConstructed);
  final languageISO = instance.languageISO;
  final languageISOSerialized = languageISO;
  final languageISOConstructed = XmlElement(
    XmlName('LanguageISO'),
    [],
    languageISOSerialized != null ? [XmlText(languageISOSerialized)] : [],
  );
  children.add(languageISOConstructed);
  final format = instance.format;
  final formatSerialized = format;
  final formatConstructed = XmlElement(
    XmlName('Format'),
    [],
    formatSerialized != null ? [XmlText(formatSerialized)] : [],
  );
  children.add(formatConstructed);
  final blackAndWhite = instance.blackAndWhite;
  final blackAndWhiteSerialized = blackAndWhite != null
      ? $XmlYesNoEnumMap[blackAndWhite]!
      : null;
  final blackAndWhiteConstructed = XmlElement(
    XmlName('BlackAndWhite'),
    [],
    blackAndWhiteSerialized != null ? [XmlText(blackAndWhiteSerialized)] : [],
  );
  children.add(blackAndWhiteConstructed);
  final manga = instance.manga;
  final mangaSerialized = manga != null ? $XmlMangaEnumMap[manga]! : null;
  final mangaConstructed = XmlElement(
    XmlName('Manga'),
    [],
    mangaSerialized != null ? [XmlText(mangaSerialized)] : [],
  );
  children.add(mangaConstructed);
  final characters = instance.characters;
  final charactersSerialized = characters;
  final charactersConstructed = XmlElement(
    XmlName('Characters'),
    [],
    charactersSerialized != null ? [XmlText(charactersSerialized)] : [],
  );
  children.add(charactersConstructed);
  final teams = instance.teams;
  final teamsSerialized = teams;
  final teamsConstructed = XmlElement(
    XmlName('Teams'),
    [],
    teamsSerialized != null ? [XmlText(teamsSerialized)] : [],
  );
  children.add(teamsConstructed);
  final locations = instance.locations;
  final locationsSerialized = locations;
  final locationsConstructed = XmlElement(
    XmlName('Locations'),
    [],
    locationsSerialized != null ? [XmlText(locationsSerialized)] : [],
  );
  children.add(locationsConstructed);
  final mainCharacterOrTeam = instance.mainCharacterOrTeam;
  final mainCharacterOrTeamSerialized = mainCharacterOrTeam;
  final mainCharacterOrTeamConstructed = XmlElement(
    XmlName('MainCharacterOrTeam'),
    [],
    mainCharacterOrTeamSerialized != null
        ? [XmlText(mainCharacterOrTeamSerialized)]
        : [],
  );
  children.add(mainCharacterOrTeamConstructed);
  final scanInformation = instance.scanInformation;
  final scanInformationSerialized = scanInformation;
  final scanInformationConstructed = XmlElement(
    XmlName('ScanInformation'),
    [],
    scanInformationSerialized != null
        ? [XmlText(scanInformationSerialized)]
        : [],
  );
  children.add(scanInformationConstructed);
  final storyArc = instance.storyArc;
  final storyArcSerialized = storyArc;
  final storyArcConstructed = XmlElement(
    XmlName('StoryArc'),
    [],
    storyArcSerialized != null ? [XmlText(storyArcSerialized)] : [],
  );
  children.add(storyArcConstructed);
  final storyArcNumber = instance.storyArcNumber;
  final storyArcNumberSerialized = storyArcNumber;
  final storyArcNumberConstructed = XmlElement(
    XmlName('StoryArcNumber'),
    [],
    storyArcNumberSerialized != null ? [XmlText(storyArcNumberSerialized)] : [],
  );
  children.add(storyArcNumberConstructed);
  final seriesGroup = instance.seriesGroup;
  final seriesGroupSerialized = seriesGroup;
  final seriesGroupConstructed = XmlElement(
    XmlName('SeriesGroup'),
    [],
    seriesGroupSerialized != null ? [XmlText(seriesGroupSerialized)] : [],
  );
  children.add(seriesGroupConstructed);
  final ageRating = instance.ageRating;
  final ageRatingSerialized = ageRating != null
      ? $XmlAgeRatingEnumMap[ageRating]!
      : null;
  final ageRatingConstructed = XmlElement(
    XmlName('AgeRating'),
    [],
    ageRatingSerialized != null ? [XmlText(ageRatingSerialized)] : [],
  );
  children.add(ageRatingConstructed);
  final communityRating = instance.communityRating;
  final communityRatingSerialized = communityRating?.toString();
  final communityRatingConstructed = XmlElement(
    XmlName('CommunityRating'),
    [],
    communityRatingSerialized != null
        ? [XmlText(communityRatingSerialized)]
        : [],
  );
  children.add(communityRatingConstructed);
  final review = instance.review;
  final reviewSerialized = review;
  final reviewConstructed = XmlElement(
    XmlName('Review'),
    [],
    reviewSerialized != null ? [XmlText(reviewSerialized)] : [],
  );
  children.add(reviewConstructed);
  final gtin = instance.gtin;
  final gtinSerialized = gtin;
  final gtinConstructed = XmlElement(
    XmlName('GTIN'),
    [],
    gtinSerialized != null ? [XmlText(gtinSerialized)] : [],
  );
  children.add(gtinConstructed);
  final pages = instance.pages;
  final pagesSerialized = pages;
  final pagesConstructed = XmlElement(
    XmlName('Pages'),
    pagesSerialized?.toXmlAttributes(namespaces: namespaces) ?? [],
    pagesSerialized?.toXmlChildren(namespaces: namespaces) ?? [],
  );
  children.add(pagesConstructed);
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
