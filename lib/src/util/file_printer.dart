import 'package:loggy/loggy.dart';
import 'package:universal_io/io.dart';

class FilePrinter extends LoggyPrinter {
  final String filePath;

  late final File _file;

  FilePrinter({required this.filePath}) : super() {
    _file = File(filePath);

    if (_file.existsSync()) {
      _file.deleteSync();
    }

    _file.createSync(recursive: true);
  }

  @override
  void onLog(LogRecord record) {
    _file.writeAsStringSync(
      record.message,
      mode: FileMode.append,
    );
  }
}
