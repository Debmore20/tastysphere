import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
// import 'package:tastysphere/modeldb/recipe_model.dart';

part 'feeditem_state.dart';

class FeeditemCubit extends Cubit<int> {
  FeeditemCubit() : super(0);

  void setCounterValue(int newValue) {
    emit(newValue);
  }
}
