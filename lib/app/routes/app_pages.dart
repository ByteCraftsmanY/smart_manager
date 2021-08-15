import 'package:get/get.dart';

import 'package:smart_manager/app/modules/home/bindings/home_binding.dart';
import 'package:smart_manager/app/modules/home/views/home_view.dart';
import 'package:smart_manager/app/modules/notes/bindings/notes_binding.dart';
import 'package:smart_manager/app/modules/notes/views/notes_view.dart';
import 'package:smart_manager/app/modules/profile/bindings/profile_binding.dart';
import 'package:smart_manager/app/modules/profile/views/profile_view.dart';
import 'package:smart_manager/app/modules/projects/bindings/projects_binding.dart';
import 'package:smart_manager/app/modules/projects/views/projects_view.dart';
import 'package:smart_manager/app/modules/root/bindings/root_binding.dart';
import 'package:smart_manager/app/modules/root/views/root_view.dart';
import 'package:smart_manager/app/modules/transactions/bindings/transactions_binding.dart';
import 'package:smart_manager/app/modules/transactions/views/transactions_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.ROOT,
      page: () => RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROJECTS,
      page: () => ProjectsView(),
      binding: ProjectsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NOTES,
      page: () => NotesView(),
      binding: NotesBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTIONS,
      page: () => TransactionsView(),
      binding: TransactionsBinding(),
    ),
  ];
}
