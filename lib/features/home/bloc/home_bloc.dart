
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fulcrum/application/models/sites_data.dart';
import 'package:fulcrum/application/services/api/url_string.dart';
import 'package:fulcrum/application/services/dio/dio_methods.dart';
import 'package:fulcrum/features/home/bloc/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState());

  void getSites() async {
    emit(state.copyWith(isLoading: true, hasError: false));

    try {
      final response = await DioMethod.methodData(
        type: DioType.post,
        isAuth: false,
        path: CustomApi.getSites(),
      );

      final Map<String, dynamic> jsonData = jsonDecode(response.toString());
      final sitesResponse = SitesResponse.fromJson(jsonData);
      emit(state.copyWith(isLoading: false, sites: sitesResponse.sites));
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true, message: e.toString()));
    }
  }
}
