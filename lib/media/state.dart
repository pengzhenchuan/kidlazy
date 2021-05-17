import 'package:fish_redux/fish_redux.dart';

class MediaState implements Cloneable<MediaState> {
  @override
  MediaState clone() {
    return MediaState();
  }
}

MediaState initState(Map<String, dynamic> args) {
  return MediaState();
}
