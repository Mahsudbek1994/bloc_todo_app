part of 'application_bloc.dart';

// BASE CLASSS
abstract class ApplicationState extends Equatable {
  const ApplicationState();

  @override
  List<Object?> get props => [];
}

class ApplicationInitial extends ApplicationState {}

// GET APPLICATIONs
class GetApplicationsSuccess extends ApplicationState {
  final List applications;

  const GetApplicationsSuccess({required this.applications});
}

class GetApplicationsLoading extends ApplicationState {}

class GetApplicationsError extends ApplicationState {
  final String message;
  const GetApplicationsError(this.message);
}
