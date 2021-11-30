
import 'package:afariat/home/home_view_controller.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings{
  @override
  void dependencies() {
  // Get.put(() => Tab4Profile() );
    Get.lazyPut(() => HomeViwController() ,fenix: true);


  }

}