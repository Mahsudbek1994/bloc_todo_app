import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/BloC/BloC/application/application_bloc.dart';

class ApplicationsScreen extends StatefulWidget {
  const ApplicationsScreen({Key? key}) : super(key: key);

  @override
  State<ApplicationsScreen> createState() => _ApplicationsScreenState();
}

class _ApplicationsScreenState extends State<ApplicationsScreen> {
  List applications = [];

  @override
  void initState() {
    context.read<ApplicationBloc>().add(GetApplications());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<ApplicationBloc, ApplicationState>(
            builder: (context, state) {
          if (state is GetApplicationsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetApplicationsError) {
           return Center(
              child: Text(
                state.message,
                style: TextStyle(color: Colors.red),
              ),
            );
          }
          return Container();
        }),
        BlocListener<ApplicationBloc, ApplicationState>(
          listener: (context, state) {
            if (state is GetApplicationsSuccess) {
              setState(() {
                applications = state.applications;
              });
            }
          },
          child: Container(),
        ),
        ...applications.map((e) => Text(e['applicant']))
      ],
    );
  }
}
