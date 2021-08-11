import 'package:get/get.dart';
import 'package:smart_manager/app/modules/projects/controllers/project_details_controller.dart';

import '../controllers/projects_controller.dart';

class ProjectsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectsController>(
      () => ProjectsController(),
    );
    Get.lazyPut<ProjectDetailsController>(() => ProjectDetailsController(),
        fenix: true);
  }
}
