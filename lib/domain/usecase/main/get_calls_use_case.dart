import 'package:retrofit/retrofit.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/calls_response.dart';
import 'package:whatsapp_flutter_clean_arch/domain/repository/main/main_repository.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';

class GetCallsUseCase {
  Future<HttpResponse<CallsResponse>> execute() async {
    return getIt<MainRepository>().getCalls();
  }
}
