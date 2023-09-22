import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'sign_in_state.dart';

class SingInNotifier extends StateNotifier<SingInState>{
  SingInNotifier():super(const SingInState());

  void onUserPasswordChange(String password){
    state = state.copyWith(password: password);
  }
  void onUserEmailChange(String email){
    state = state.copyWith(email: email);
  }
}