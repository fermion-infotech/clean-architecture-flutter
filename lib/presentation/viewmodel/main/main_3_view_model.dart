import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/calls_response.dart';
import 'package:whatsapp_flutter_clean_arch/domain/usecase/main/get_calls_use_case.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';

final counterCubitProvider =
    BlocProvider<CallsCubit>(create: (_) => CallsCubit());

class CallsCubit extends Cubit<List<Calls>> {
  CallsCubit() : super([]);

  getCalls() async {
    final httpResponse = await getIt<GetCallsUseCase>().execute();
    if (httpResponse.response.statusCode == HttpStatus.ok ||
        httpResponse.response.statusCode == HttpStatus.created) {
      CallsResponse callsResponse = httpResponse.data;
      print("Status response is : ${callsResponse.calls}");
      if (callsResponse.status == "ok") {
        emit(callsResponse.calls!);
      } else {
        emit(<Calls>[]);
      }
    }
  }
}
