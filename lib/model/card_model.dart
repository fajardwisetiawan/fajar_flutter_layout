import 'package:meta/meta.dart';

@immutable
class Konten {
  final String gambar;
  final String title;
  final String subtitle;
  
  const Konten(
      {@required this.gambar, @required this.title, @required this.subtitle});
}
