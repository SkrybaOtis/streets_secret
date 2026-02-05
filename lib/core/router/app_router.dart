import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/episode/presentation/screens/episode_list_screen.dart';
import '../../features/episode/presentation/screens/main_episode_screen.dart';
import '../../features/episode/presentation/screens/opening_episode_screen.dart';
import '../../features/location/presentation/screens/location_list_screen.dart';
import '../../features/location/presentation/screens/location_screen.dart';
import '../../features/location/presentation/screens/navigate_location_screen.dart';
import '../../features/location/presentation/screens/unlock_location_screen.dart';
import '../../features/character/presentation/screens/character_screen.dart';
import '../../features/clue/presentation/screens/unlock_clue_screen.dart';
import '../../features/case_files/presentation/screens/case_files_screen.dart';
import '../../features/case_files/presentation/screens/case_files_element_screen.dart';
import '../../features/enigma/presentation/screens/enigma_solving_screen.dart';
import '../../features/episode/domain/enums/element_type.dart';
import 'route_names.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: RouteNames.episodeList,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RouteNames.episodeList,
        name: 'episodeList',
        builder: (context, state) => const EpisodeListScreen(),
      ),
      GoRoute(
        path: RouteNames.openingEpisode,
        name: 'openingEpisode',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          return OpeningEpisodeScreen(episodeId: episodeId);
        },
      ),
      GoRoute(
        path: RouteNames.mainEpisode,
        name: 'mainEpisode',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          return MainEpisodeScreen(episodeId: episodeId);
        },
      ),
      GoRoute(
        path: RouteNames.locationList,
        name: 'locationList',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          return LocationListScreen(episodeId: episodeId);
        },
      ),
      GoRoute(
        path: RouteNames.navigateLocation,
        name: 'navigateLocation',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          final locationId = state.pathParameters['locationId']!;
          return NavigateLocationScreen(
            episodeId: episodeId,
            locationId: locationId,
          );
        },
      ),
      GoRoute(
        path: RouteNames.unlockLocation,
        name: 'unlockLocation',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          final locationId = state.pathParameters['locationId']!;
          return UnlockLocationScreen(
            episodeId: episodeId,
            locationId: locationId,
          );
        },
      ),
      GoRoute(
        path: RouteNames.location,
        name: 'location',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          final locationId = state.pathParameters['locationId']!;
          return LocationScreen(
            episodeId: episodeId,
            locationId: locationId,
          );
        },
      ),
      GoRoute(
        path: RouteNames.character,
        name: 'character',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          final characterId = int.parse(state.pathParameters['characterId']!);
          return CharacterScreen(
            episodeId: episodeId,
            characterId: characterId,
          );
        },
      ),
      GoRoute(
        path: RouteNames.unlockClue,
        name: 'unlockClue',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          final locationId = state.pathParameters['locationId']!;
          return UnlockClueScreen(
            episodeId: episodeId,
            locationId: locationId,
          );
        },
      ),
      GoRoute(
        path: RouteNames.caseFiles,
        name: 'caseFiles',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          return CaseFilesScreen(episodeId: episodeId);
        },
      ),
      GoRoute(
        path: RouteNames.caseFilesElement,
        name: 'caseFilesElement',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          final elementType = ElementType.fromString(
            state.pathParameters['elementType']!,
          );
          final elementId = int.parse(state.pathParameters['elementId']!);
          return CaseFilesElementScreen(
            episodeId: episodeId,
            elementType: elementType,
            elementId: elementId,
          );
        },
      ),
      GoRoute(
        path: RouteNames.enigmaSolving,
        name: 'enigmaSolving',
        builder: (context, state) {
          final episodeId = state.pathParameters['episodeId']!;
          final enigmaId = int.parse(state.pathParameters['enigmaId']!);
          final selectedElementId = state.uri.queryParameters['selectedElementId'];
          final selectedElementType = state.uri.queryParameters['selectedElementType'];
          return EnigmaSolvingScreen(
            episodeId: episodeId,
            enigmaId: enigmaId,
            selectedElementId: selectedElementId != null 
                ? int.parse(selectedElementId) 
                : null,
            selectedElementType: selectedElementType != null
                ? ElementType.fromString(selectedElementType)
                : null,
          );
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Route not found: ${state.uri}'),
      ),
    ),
  );
}
