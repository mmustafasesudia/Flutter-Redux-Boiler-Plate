
import 'package:boilerplate/presentation/home/model/example_model.dart';

import '../../../utils/enums/status_enum.dart';

class HomeState {
  String? name;
  String? error;
  ResponseStatus? homeApiStatus;
  ExampleModel? exampleModel;

  HomeState({
    this.name,
    this.exampleModel,
  });

  HomeState.formState(HomeState newState) {
    name = newState.name;
    error = newState.error;
    exampleModel = newState.exampleModel;
  }

  String? get viewName => name;

  String? get viewError => error;

  ExampleModel? get viewExampleModel => exampleModel;
}
