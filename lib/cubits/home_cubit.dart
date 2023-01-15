import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pms_ol/cubits/home_state.dart';

class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit() : super(InitialHomeState());

  static HomeCubit get(context) => BlocProvider.of(context);

  String name = 'Hallo';
}