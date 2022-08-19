part of 'application_bloc.dart';

// BASE CLASS
abstract class ApplicationEvent extends Equatable {
  const ApplicationEvent();

  @override
  List<Object> get props => [];
}

// SUB CLASSES
class GetApplications extends ApplicationEvent {}

class DeletApplication extends ApplicationEvent {
  final int id;

  const DeletApplication({required this.id});
}
