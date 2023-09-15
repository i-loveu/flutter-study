import 'package:go_router/go_router.dart';
import 'package:uiclone1/screens/activity.dart';
import 'package:uiclone1/screens/feed.dart';
import 'package:uiclone1/screens/profile.dart';
import 'package:uiclone1/screens/search.dart';
import 'package:uiclone1/screens/settings/views/settings.dart';
import 'package:uiclone1/screens/video_recording_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => Feed(),
  ),
  GoRoute(
    path: Activity.routeName,
    builder: (context, state) => const Activity(),
  ),
  GoRoute(
    path: Search.routeName,
    builder: (context, state) => const Search(),
  ),
  GoRoute(
    path: Profile.routeName,
    builder: (context, state) => const Profile(),
  ),
  GoRoute(
    path: Settings.routeName,
    builder: (context, state) => const Settings(),
  ),
  GoRoute(
    path: Feed.routeName,
    builder: (context, state) => Feed(),
  ),
  GoRoute(
    path: VideoRecordingScreen.routeName,
    builder: (context, state) => const VideoRecordingScreen(),
  ),
]);
