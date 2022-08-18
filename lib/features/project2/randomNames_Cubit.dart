import 'package:bloc/bloc.dart';
import 'dart:math' as math show Random;

extension RandomElement<T> on Iterable<T> {
  T getRanmdomelement() => elementAt(math.Random().nextInt(length));
  //length burada iterablelistin uzunlugu kadar don
}

class randomNamesCubit extends Cubit<String?> {
  //Initial degeri null olarak tanimladik
  randomNamesCubit({required this.userList}) : super(null);
  final Iterable<String> userList;

  void getRandomName() {
    emit(userList.getRanmdomelement());
  }
}
