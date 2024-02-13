import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/status_response.dart';
import 'package:whatsapp_flutter_clean_arch/domain/usecase/main/get_status_usecase.dart';

import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';


/// below variable helps to get the Notifier class i.e., Main2ViewModel so that we can listen
/// to changes and update accordingly.
final status = StateNotifierProvider<Main2ViewModel, List<Statuses>>(
    (ref) => Main2ViewModel());


/// Main2ViewModel extends StateNotifier and inside the getStatus(), we update the state which
/// in then listened by UI's watch method
class Main2ViewModel extends StateNotifier<List<Statuses>> {
  Main2ViewModel() : super(<Statuses>[]);

  getStatus() async {
    final httpResponse = await getIt<GetStatusUseCase>().execute();
    if (httpResponse.response.statusCode == HttpStatus.ok ||
        httpResponse.response.statusCode == HttpStatus.created) {
      StatusResponse statusResponse = httpResponse.data;
      print("Status response is : ${statusResponse.statuses}");
      if (statusResponse.status == "ok") {
        state = statusResponse.statuses!;
      } else {
        state = <Statuses>[];
      }
    }
  }
}
