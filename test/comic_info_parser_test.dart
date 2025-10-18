import 'package:comic_info_parser/comic_info_parser.dart';
import 'package:test/test.dart';

void main() {
  group('XmlComicInfo Tests', () {
    // 测试数据
    const basicXml = '''
    <ComicInfo>
      <Title>Test Comic</Title>
      <Series>Test Series</Series>
      <Number>1</Number>
      <Volume>1</Volume>
      <Year>2023</Year>
      <Month>1</Month>
      <Day>1</Day>
      <Publisher>Test Publisher</Publisher>
      <Web>https://test.com</Web>
      <Summary>Test Summary</Summary>
      <Genre>Test Genre</Genre>
      <Tags>Test Tag1, Test Tag2</Tags>
      <Characters>Test Character1, Test Character2</Characters>
      <Teams>Test Team1, Test Team2</Teams>
      <ScanInformation>Test Scan Info</ScanInformation>
      <LanguageISO>en</LanguageISO>
      <Format>Hardcover</Format>
      <SeriesGroup>Test Series Group</SeriesGroup>
      <AgeRating>Everyone</AgeRating>
      <StoryArc>Test Story Arc</StoryArc>
      <Pages>
        <Page Image="1" Type="FrontCover" Bookmark="Chapter 1" />
        <Page Image="2" Type="Story" />
      </Pages>
    </ComicInfo>
    ''';

    const fullXml = '''
    <ComicInfo>
      <Title>Full Test Comic</Title>
      <Series>Full Test Series</Series>
      <Number>5</Number>
      <Count>12</Count>
      <Volume>2</Volume>
      <AlternateSeries>Alternate Series</AlternateSeries>
      <AlternateNumber>3</AlternateNumber>
      <AlternateCount>6</AlternateCount>
      <Summary>A comprehensive test comic with all fields</Summary>
      <Notes>Some notes about this comic</Notes>
      <Year>2023</Year>
      <Month>6</Month>
      <Day>15</Day>
      <Writer>Test Writer</Writer>
      <Penciller>Test Penciller</Penciller>
      <Inker>Test Inker</Inker>
      <Colorist>Test Colorist</Colorist>
      <Letterer>Test Letterer</Letterer>
      <CoverArtist>Test Cover Artist</CoverArtist>
      <Editor>Test Editor</Editor>
      <Publisher>Test Publisher</Publisher>
      <Imprint>Test Imprint</Imprint>
      <Genre>Action, Adventure</Genre>
      <Tags>Hero, Villain, Superpower</Tags>
      <Web>https://example.com/comic1 https://example.com/comic2</Web>
      <PageCount>32</PageCount>
      <LanguageISO>en-US</LanguageISO>
      <Format>Trade Paperback</Format>
      <BlackAndWhite>No</BlackAndWhite>
      <Manga>No</Manga>
      <Characters>Hero, Sidekick, Villain</Characters>
      <Teams>Hero Team, Villain Team</Teams>
      <Locations>City, Secret Base</Locations>
      <MainCharacterOrTeam>Hero</MainCharacterOrTeam>
      <ScanInformation>High Quality Scan</ScanInformation>
      <StoryArc>The Beginning</StoryArc>
      <SeriesGroup>Hero Universe</SeriesGroup>
      <AgeRating>Teen</AgeRating>
      <CommunityRating>4.5</CommunityRating>
      <Review>A great comic with lots of action!</Review>
      <GTIN>1234567890123</GTIN>
      <Pages>
        <Page Image="1" Type="FrontCover" Bookmark="Chapter 1" ImageSize="1024000" ImageWidth="2000" ImageHeight="3000" />
        <Page Image="2" Type="Story" ImageSize="980000" ImageWidth="1900" ImageHeight="2900" />
        <Page Image="3" Type="Story" DoublePage="true" ImageSize="1960000" ImageWidth="3800" ImageHeight="2900" />
      </Pages>
    </ComicInfo>
    ''';

    group('XML Parsing', () {
      test('should parse basic XML correctly', () {
        final info = XmlComicInfo.fromXmlString(basicXml);
        
        expect(info.title, equals('Test Comic'));
        expect(info.series, equals('Test Series'));
        expect(info.number, equals('1'));
        expect(info.volume, equals(1));
        expect(info.year, equals(2023));
        expect(info.month, equals(1));
        expect(info.day, equals(1));
        expect(info.publisher, equals('Test Publisher'));
        expect(info.web, equals('https://test.com'));
        expect(info.summary, equals('Test Summary'));
        expect(info.genre, equals('Test Genre'));
        expect(info.tags, equals('Test Tag1, Test Tag2'));
        expect(info.characters, equals('Test Character1, Test Character2'));
        expect(info.teams, equals('Test Team1, Test Team2'));
        expect(info.scanInformation, equals('Test Scan Info'));
        expect(info.languageISO, equals('en'));
        expect(info.format, equals('Hardcover'));
        expect(info.seriesGroup, equals('Test Series Group'));
        expect(info.ageRating, equals(XmlAgeRating.everyone));
        expect(info.storyArc, equals('Test Story Arc'));
      });

      test('should parse full XML with all fields correctly', () {
        final info = XmlComicInfo.fromXmlString(fullXml);
        
        expect(info.title, equals('Full Test Comic'));
        expect(info.series, equals('Full Test Series'));
        expect(info.number, equals('5'));
        expect(info.count, equals(12));
        expect(info.volume, equals(2));
        expect(info.alternateSeries, equals('Alternate Series'));
        expect(info.alternateNumber, equals('3'));
        expect(info.alternateCount, equals(6));
        expect(info.summary, equals('A comprehensive test comic with all fields'));
        expect(info.notes, equals('Some notes about this comic'));
        expect(info.year, equals(2023));
        expect(info.month, equals(6));
        expect(info.day, equals(15));
        expect(info.writer, equals('Test Writer'));
        expect(info.penciller, equals('Test Penciller'));
        expect(info.inker, equals('Test Inker'));
        expect(info.colorist, equals('Test Colorist'));
        expect(info.letterer, equals('Test Letterer'));
        expect(info.coverArtist, equals('Test Cover Artist'));
        expect(info.editor, equals('Test Editor'));
        expect(info.publisher, equals('Test Publisher'));
        expect(info.imprint, equals('Test Imprint'));
        expect(info.genre, equals('Action, Adventure'));
        expect(info.tags, equals('Hero, Villain, Superpower'));
        expect(info.web, equals('https://example.com/comic1 https://example.com/comic2'));
        expect(info.pageCount, equals(32));
        expect(info.languageISO, equals('en-US'));
        expect(info.format, equals('Trade Paperback'));
        expect(info.blackAndWhite, equals(XmlYesNo.no));
        expect(info.manga, equals(XmlManga.no));
        expect(info.characters, equals('Hero, Sidekick, Villain'));
        expect(info.teams, equals('Hero Team, Villain Team'));
        expect(info.locations, equals('City, Secret Base'));
        expect(info.mainCharacterOrTeam, equals('Hero'));
        expect(info.scanInformation, equals('High Quality Scan'));
        expect(info.storyArc, equals('The Beginning'));
        expect(info.seriesGroup, equals('Hero Universe'));
        expect(info.ageRating, equals(XmlAgeRating.teen));
        expect(info.communityRating, equals(4.5));
        expect(info.review, equals('A great comic with lots of action!'));
        expect(info.gtin, equals('1234567890123'));
      });

      test('should parse pages correctly', () {
        final info = XmlComicInfo.fromXmlString(fullXml);
        
        expect(info.pages, isNotNull);
        expect(info.pages!.pages.length, equals(3));
        
        final page1 = info.pages!.pages[0];
        expect(page1.image, equals(1));
        expect(page1.type, equals(XmlComicPageType.frontCover));
        expect(page1.bookmark, equals('Chapter 1'));
        expect(page1.imageSize, equals(1024000));
        expect(page1.imageWidth, equals(2000));
        expect(page1.imageHeight, equals(3000));
        expect(page1.doublePage, isFalse);
        
        final page2 = info.pages!.pages[1];
        expect(page2.image, equals(2));
        expect(page2.type, equals(XmlComicPageType.story));
        expect(page2.bookmark, equals(''));
        expect(page2.imageSize, equals(980000));
        expect(page2.imageWidth, equals(1900));
        expect(page2.imageHeight, equals(2900));
        expect(page2.doublePage, isFalse);
        
        final page3 = info.pages!.pages[2];
        expect(page3.image, equals(3));
        expect(page3.type, equals(XmlComicPageType.story));
        expect(page3.bookmark, equals(''));
        expect(page3.imageSize, equals(1960000));
        expect(page3.imageWidth, equals(3800));
        expect(page3.imageHeight, equals(2900));
        expect(page3.doublePage, isTrue);
      });

      test('should handle empty XML with default values', () {
        const emptyXml = '<ComicInfo></ComicInfo>';
        final info = XmlComicInfo.fromXmlString(emptyXml);
        
        expect(info.title, equals(''));
        expect(info.series, equals(''));
        expect(info.number, equals(''));
        expect(info.count, equals(-1));
        expect(info.volume, equals(-1));
        expect(info.year, equals(-1));
        expect(info.month, equals(-1));
        expect(info.day, equals(-1));
        expect(info.pageCount, equals(0));
        expect(info.communityRating, equals(0.0));
        expect(info.blackAndWhite, equals(XmlYesNo.unknown));
        expect(info.manga, equals(XmlManga.unknown));
        expect(info.ageRating, equals(XmlAgeRating.unknown));
        expect(info.pages, isNull);
      });

      test('should throw error for invalid root element', () {
        const invalidXml = '<NotComicInfo></NotComicInfo>';
        expect(() => XmlComicInfo.fromXmlString(invalidXml), throwsArgumentError);
      });

      test('should throw error for malformed XML', () {
        const malformedXml = '<ComicInfo><Title>Test</Broken>';
        expect(() => XmlComicInfo.fromXmlString(malformedXml), throwsException);
      });
    });

    group('XML Serialization', () {
      test('should serialize basic XML correctly', () {
        final info = XmlComicInfo.fromXmlString(basicXml);
        final serializedXml = info.toXmlString(info);
        
        // Parse the serialized XML to verify it's valid
        final parsedInfo = XmlComicInfo.fromXmlString(serializedXml);
        
        expect(parsedInfo.title, equals(info.title));
        expect(parsedInfo.series, equals(info.series));
        expect(parsedInfo.number, equals(info.number));
        expect(parsedInfo.volume, equals(info.volume));
        expect(parsedInfo.year, equals(info.year));
        expect(parsedInfo.month, equals(info.month));
        expect(parsedInfo.day, equals(info.day));
        expect(parsedInfo.publisher, equals(info.publisher));
        expect(parsedInfo.web, equals(info.web));
        expect(parsedInfo.summary, equals(info.summary));
        expect(parsedInfo.genre, equals(info.genre));
        expect(parsedInfo.tags, equals(info.tags));
        expect(parsedInfo.characters, equals(info.characters));
        expect(parsedInfo.teams, equals(info.teams));
        expect(parsedInfo.scanInformation, equals(info.scanInformation));
        expect(parsedInfo.languageISO, equals(info.languageISO));
        expect(parsedInfo.format, equals(info.format));
        expect(parsedInfo.seriesGroup, equals(info.seriesGroup));
        expect(parsedInfo.ageRating, equals(info.ageRating));
        expect(parsedInfo.storyArc, equals(info.storyArc));
      });

      test('should serialize full XML with all fields correctly', () {
        final info = XmlComicInfo.fromXmlString(fullXml);
        final serializedXml = info.toXmlString(info);
        
        // Parse the serialized XML to verify it's valid
        final parsedInfo = XmlComicInfo.fromXmlString(serializedXml);
        
        expect(parsedInfo.title, equals(info.title));
        expect(parsedInfo.series, equals(info.series));
        expect(parsedInfo.number, equals(info.number));
        expect(parsedInfo.count, equals(info.count));
        expect(parsedInfo.volume, equals(info.volume));
        expect(parsedInfo.alternateSeries, equals(info.alternateSeries));
        expect(parsedInfo.alternateNumber, equals(info.alternateNumber));
        expect(parsedInfo.alternateCount, equals(info.alternateCount));
        expect(parsedInfo.summary, equals(info.summary));
        expect(parsedInfo.notes, equals(info.notes));
        expect(parsedInfo.year, equals(info.year));
        expect(parsedInfo.month, equals(info.month));
        expect(parsedInfo.day, equals(info.day));
        expect(parsedInfo.writer, equals(info.writer));
        expect(parsedInfo.penciller, equals(info.penciller));
        expect(parsedInfo.inker, equals(info.inker));
        expect(parsedInfo.colorist, equals(info.colorist));
        expect(parsedInfo.letterer, equals(info.letterer));
        expect(parsedInfo.coverArtist, equals(info.coverArtist));
        expect(parsedInfo.editor, equals(info.editor));
        expect(parsedInfo.publisher, equals(info.publisher));
        expect(parsedInfo.imprint, equals(info.imprint));
        expect(parsedInfo.genre, equals(info.genre));
        expect(parsedInfo.tags, equals(info.tags));
        expect(parsedInfo.web, equals(info.web));
        expect(parsedInfo.pageCount, equals(info.pageCount));
        expect(parsedInfo.languageISO, equals(info.languageISO));
        expect(parsedInfo.format, equals(info.format));
        expect(parsedInfo.blackAndWhite, equals(info.blackAndWhite));
        expect(parsedInfo.manga, equals(info.manga));
        expect(parsedInfo.characters, equals(info.characters));
        expect(parsedInfo.teams, equals(info.teams));
        expect(parsedInfo.locations, equals(info.locations));
        expect(parsedInfo.mainCharacterOrTeam, equals(info.mainCharacterOrTeam));
        expect(parsedInfo.scanInformation, equals(info.scanInformation));
        expect(parsedInfo.storyArc, equals(info.storyArc));
        expect(parsedInfo.seriesGroup, equals(info.seriesGroup));
        expect(parsedInfo.ageRating, equals(info.ageRating));
        expect(parsedInfo.communityRating, equals(info.communityRating));
        expect(parsedInfo.review, equals(info.review));
        expect(parsedInfo.gtin, equals(info.gtin));
      });

      test('should serialize pages correctly', () {
        final info = XmlComicInfo.fromXmlString(fullXml);
        final serializedXml = info.toXmlString(info);
        
        // Parse the serialized XML to verify pages are correct
        final parsedInfo = XmlComicInfo.fromXmlString(serializedXml);
        
        expect(parsedInfo.pages, isNotNull);
        expect(parsedInfo.pages!.pages.length, equals(3));
        
        final page1 = parsedInfo.pages!.pages[0];
        expect(page1.image, equals(1));
        expect(page1.type, equals(XmlComicPageType.frontCover));
        expect(page1.bookmark, equals('Chapter 1'));
        expect(page1.imageSize, equals(1024000));
        expect(page1.imageWidth, equals(2000));
        expect(page1.imageHeight, equals(3000));
        expect(page1.doublePage, isFalse);
        
        final page3 = parsedInfo.pages!.pages[2];
        expect(page3.image, equals(3));
        expect(page3.type, equals(XmlComicPageType.story));
        expect(page3.doublePage, isTrue);
      });
    });

    group('Enum Tests', () {
      test('XmlYesNo enum values', () {
        expect(XmlYesNo.unknown.name, equals('unknown'));
        expect(XmlYesNo.no.name, equals('no'));
        expect(XmlYesNo.yes.name, equals('yes'));
      });

      test('XmlManga enum values', () {
        expect(XmlManga.unknown.name, equals('unknown'));
        expect(XmlManga.no.name, equals('no'));
        expect(XmlManga.yes.name, equals('yes'));
        expect(XmlManga.yesAndRightToLeft.name, equals('yesAndRightToLeft'));
      });

      test('XmlAgeRating enum values', () {
        expect(XmlAgeRating.unknown.name, equals('unknown'));
        expect(XmlAgeRating.adultsOnly18.name, equals('adultsOnly18'));
        expect(XmlAgeRating.earlyChildhood.name, equals('earlyChildhood'));
        expect(XmlAgeRating.everyone.name, equals('everyone'));
        expect(XmlAgeRating.everyone10.name, equals('everyone10'));
        expect(XmlAgeRating.g.name, equals('g'));
        expect(XmlAgeRating.kidsToAdults.name, equals('kidsToAdults'));
        expect(XmlAgeRating.m.name, equals('m'));
        expect(XmlAgeRating.ma15.name, equals('ma15'));
        expect(XmlAgeRating.mature17.name, equals('mature17'));
        expect(XmlAgeRating.pg.name, equals('pg'));
        expect(XmlAgeRating.r18.name, equals('r18'));
        expect(XmlAgeRating.ratingPending.name, equals('ratingPending'));
        expect(XmlAgeRating.teen.name, equals('teen'));
        expect(XmlAgeRating.x18.name, equals('x18'));
      });

      test('XmlComicPageType enum values', () {
        expect(XmlComicPageType.frontCover.name, equals('frontCover'));
        expect(XmlComicPageType.innerCover.name, equals('innerCover'));
        expect(XmlComicPageType.roundup.name, equals('roundup'));
        expect(XmlComicPageType.story.name, equals('story'));
        expect(XmlComicPageType.advertisement.name, equals('advertisement'));
        expect(XmlComicPageType.editorial.name, equals('editorial'));
        expect(XmlComicPageType.letters.name, equals('letters'));
        expect(XmlComicPageType.preview.name, equals('preview'));
        expect(XmlComicPageType.backCover.name, equals('backCover'));
        expect(XmlComicPageType.other.name, equals('other'));
        expect(XmlComicPageType.deleted.name, equals('deleted'));
      });
    });

    group('XmlComicPageInfo Tests', () {
      test('should create XmlComicPageInfo with default values', () {
        final pageInfo = XmlComicPageInfo(image: 1);
        
        expect(pageInfo.image, equals(1));
        expect(pageInfo.type, equals(XmlComicPageType.story));
        expect(pageInfo.doublePage, isFalse);
        expect(pageInfo.imageSize, equals(0));
        expect(pageInfo.bookmark, equals(''));
        expect(pageInfo.imageWidth, equals(-1));
        expect(pageInfo.imageHeight, equals(-1));
      });

      test('should create XmlComicPageInfo with custom values', () {
        final pageInfo = XmlComicPageInfo(
          image: 5,
          type: XmlComicPageType.frontCover,
          doublePage: true,
          imageSize: 2048000,
          bookmark: 'Special Chapter',
          imageWidth: 2500,
          imageHeight: 3500,
        );
        
        expect(pageInfo.image, equals(5));
        expect(pageInfo.type, equals(XmlComicPageType.frontCover));
        expect(pageInfo.doublePage, isTrue);
        expect(pageInfo.imageSize, equals(2048000));
        expect(pageInfo.bookmark, equals('Special Chapter'));
        expect(pageInfo.imageWidth, equals(2500));
        expect(pageInfo.imageHeight, equals(3500));
      });
    });

    group('XmlArrayOfComicPageInfo Tests', () {
      test('should create empty XmlArrayOfComicPageInfo', () {
        final pagesInfo = XmlArrayOfComicPageInfo();
        
        expect(pagesInfo.pages.isEmpty, isTrue);
      });

      test('should create XmlArrayOfComicPageInfo with pages', () {
        final page1 = XmlComicPageInfo(image: 1, type: XmlComicPageType.frontCover);
        final page2 = XmlComicPageInfo(image: 2, type: XmlComicPageType.story);
        
        final pagesInfo = XmlArrayOfComicPageInfo(pages: [page1, page2]);
        
        expect(pagesInfo.pages.length, equals(2));
        expect(pagesInfo.pages[0].image, equals(1));
        expect(pagesInfo.pages[0].type, equals(XmlComicPageType.frontCover));
        expect(pagesInfo.pages[1].image, equals(2));
        expect(pagesInfo.pages[1].type, equals(XmlComicPageType.story));
      });
    });

    group('XmlComicInfo Constructor Tests', () {
      test('should create XmlComicInfo with default values', () {
        final info = XmlComicInfo();
        
        expect(info.title, equals(''));
        expect(info.series, equals(''));
        expect(info.number, equals(''));
        expect(info.count, equals(-1));
        expect(info.volume, equals(-1));
        expect(info.year, equals(-1));
        expect(info.month, equals(-1));
        expect(info.day, equals(-1));
        expect(info.pageCount, equals(0));
        expect(info.communityRating, equals(0.0));
        expect(info.blackAndWhite, equals(XmlYesNo.unknown));
        expect(info.manga, equals(XmlManga.unknown));
        expect(info.ageRating, equals(XmlAgeRating.unknown));
        expect(info.pages, isNull);
      });

      test('should create XmlComicInfo with custom values', () {
        final page1 = XmlComicPageInfo(image: 1, type: XmlComicPageType.frontCover);
        final page2 = XmlComicPageInfo(image: 2, type: XmlComicPageType.story);
        final pagesInfo = XmlArrayOfComicPageInfo(pages: [page1, page2]);
        
        final info = XmlComicInfo(
          title: 'Custom Title',
          series: 'Custom Series',
          number: '10',
          count: 20,
          volume: 3,
          year: 2023,
          month: 12,
          day: 25,
          pageCount: 100,
          communityRating: 4.7,
          blackAndWhite: XmlYesNo.yes,
          manga: XmlManga.yesAndRightToLeft,
          ageRating: XmlAgeRating.mature17,
          pages: pagesInfo,
        );
        
        expect(info.title, equals('Custom Title'));
        expect(info.series, equals('Custom Series'));
        expect(info.number, equals('10'));
        expect(info.count, equals(20));
        expect(info.volume, equals(3));
        expect(info.year, equals(2023));
        expect(info.month, equals(12));
        expect(info.day, equals(25));
        expect(info.pageCount, equals(100));
        expect(info.communityRating, equals(4.7));
        expect(info.blackAndWhite, equals(XmlYesNo.yes));
        expect(info.manga, equals(XmlManga.yesAndRightToLeft));
        expect(info.ageRating, equals(XmlAgeRating.mature17));
        expect(info.pages, isNotNull);
        expect(info.pages!.pages.length, equals(2));
      });
    });
  });
}
