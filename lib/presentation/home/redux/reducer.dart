import 'package:boilerplate/presentation/home/redux/home_state.dart';
import 'package:boilerplate/utils/enums/apis_enum.dart';
import 'package:boilerplate/utils/enums/status_enum.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/presentation/home/model/example_model.dart';

import 'package:redux/redux.dart';

import '../../../base_redux/base_action.dart';

final store = Store<HomeState>(
  homeReducer,
  initialState: HomeState(), // Initial state
);

HomeState homeReducer(HomeState newState, dynamic action) {
  if (action is ActionGet) {
    final actionMapping = {
      APIsEnum.homeApi: _handleHomeApiAction,
    };

    final actionHandler = actionMapping[action.type];
    if (actionHandler != null) {
      actionHandler(newState, action.status!, action.payloadData, action.error);
    }
  }

  return newState;
}

void _handleHomeApiAction(
  HomeState newState,
  ResponseStatus status,
  dynamic payload,
  String? error,
) {
  newState.homeApiStatus = status;
  switch (status) {
    case ResponseStatus.loading:
      break;
    case ResponseStatus.success:
      newState.exampleModel = ExampleModel.fromJson(payload);
      break;
    case ResponseStatus.error:
      newState.error = error;
      break;
    default:
      break;
  }
}
