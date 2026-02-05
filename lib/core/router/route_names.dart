abstract class RouteNames {
  static const String episodeList = '/';
  static const String openingEpisode = '/episode/:episodeId/opening';
  static const String mainEpisode = '/episode/:episodeId';
  static const String locationList = '/episode/:episodeId/locations';
  static const String navigateLocation = '/episode/:episodeId/location/:locationId/navigate';
  static const String unlockLocation = '/episode/:episodeId/location/:locationId/unlock';
  static const String location = '/episode/:episodeId/location/:locationId';
  static const String character = '/episode/:episodeId/character/:characterId';
  static const String unlockClue = '/episode/:episodeId/location/:locationId/unlock-clue';
  static const String caseFiles = '/episode/:episodeId/case-files';
  static const String caseFilesElement = '/episode/:episodeId/case-files/:elementType/:elementId';
  static const String enigmaSolving = '/episode/:episodeId/enigma/:enigmaId/solve';
}