import 'package:provider/provider.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/viewmodel/main/main_view_model.dart';

var changeNotifiers = [
  ChangeNotifierProvider(create: (_) => MainViewModel()),
];
