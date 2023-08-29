import 'package:boilerplate/base_redux/base_dispatch.dart';
import 'package:boilerplate/data/repositories/api_repository.dart';
import 'package:boilerplate/presentation/home/redux/home_state.dart';
import 'package:boilerplate/utils/enums/apis_enum.dart';
import 'package:boilerplate/utils/enums/status_enum.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends BaseDispatch {
  ApiRepository apiRepository;

  HomeViewModel(this.apiRepository);

  api() {
    apiRepository.fetchData().then((value) {
      value.fold((l) {
        dispatchGet<HomeState>(
          type: APIsEnum.homeApi,
          status: ResponseStatus.error,
          error: l.message,
        );
      }, (r) {
        dispatchGet<HomeState>(
          type: APIsEnum.homeApi,
          status: ResponseStatus.success,
          payload: r,
        );
      });
    });
  }
}
