import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/data/repositories/application_repository.dart';

part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc({
    required ApplicationRepository apiRepository,
  })  : _apiRepository = apiRepository,
        super(ApplicationInitial()) {
    on<GetApplications>(_onGetApplications);
    // on<DeletApplication>(_onDeleteApplication);
  }

  final ApplicationRepository _apiRepository;

  // _onDeleteApplication(event, Emitter<ApplicationState> emit) async {
  //   try {
  //     emit(DeleteApplicationLoading());
  //     await _apiRepository.deleteApplicationRP(event.id);

  //     emit(DeleteApplicationSuccess());
  //   } catch (e) {
  //     emit(ApplicationError(e.toString()));
  //   }
  // }

  _onGetApplications(event, Emitter<ApplicationState> emit) async {
    try {
      emit(GetApplicationsLoading());
      List applications = await _apiRepository.getApplicationsRP();

      emit(
        GetApplicationsSuccess(
          applications: applications,
        ),
      );
    } catch (e) {
      emit(GetApplicationsError(e.toString()));
    }
  }
}
