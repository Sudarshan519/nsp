import 'package:injectable/injectable.dart';
import 'package:shared_data/shared_data.dart';

@module
abstract class ShareBNPJStorageModule {
  SharedData get data => SharedData(
        androidPackageName: "nsp.platz.nitv.com",
        iosSuitName: "group.nsp.3platz.nitv.com",
      );
}
