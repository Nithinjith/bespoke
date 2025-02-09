// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:bespoke/features/auth/presentation/login_screen.dart' as _i5;
import 'package:bespoke/features/auth/presentation/register_screen.dart' as _i8;
import 'package:bespoke/features/employee_details/presentation/employee_detail_page.dart'
    as _i2;
import 'package:bespoke/features/employees/data/entities/user_model.dart'
    as _i11;
import 'package:bespoke/features/employees/presentation/create_employee_form_page.dart'
    as _i1;
import 'package:bespoke/features/employees/presentation/employee_list_page.dart'
    as _i3;
import 'package:bespoke/features/home/data/entities/project_model.dart' as _i12;
import 'package:bespoke/features/home/presentation/create_update_project_form.dart'
    as _i7;
import 'package:bespoke/features/home/presentation/home_page.dart' as _i4;
import 'package:bespoke/features/profile/presentation/profile_page.dart' as _i6;
import 'package:flutter/material.dart' as _i10;

/// generated route for
/// [_i1.CreateEmployeeFormPage]
class CreateEmployeeFormRoute
    extends _i9.PageRouteInfo<CreateEmployeeFormRouteArgs> {
  CreateEmployeeFormRoute({
    _i10.Key? key,
    _i11.User? initialUser,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          CreateEmployeeFormRoute.name,
          args: CreateEmployeeFormRouteArgs(
            key: key,
            initialUser: initialUser,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateEmployeeFormRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateEmployeeFormRouteArgs>(
          orElse: () => const CreateEmployeeFormRouteArgs());
      return _i1.CreateEmployeeFormPage(
        key: args.key,
        initialUser: args.initialUser,
      );
    },
  );
}

class CreateEmployeeFormRouteArgs {
  const CreateEmployeeFormRouteArgs({
    this.key,
    this.initialUser,
  });

  final _i10.Key? key;

  final _i11.User? initialUser;

  @override
  String toString() {
    return 'CreateEmployeeFormRouteArgs{key: $key, initialUser: $initialUser}';
  }
}

/// generated route for
/// [_i2.EmployeeDetailPage]
class EmployeeDetailRoute extends _i9.PageRouteInfo<EmployeeDetailRouteArgs> {
  EmployeeDetailRoute({
    _i10.Key? key,
    required int tabIndex,
    required String employeeId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          EmployeeDetailRoute.name,
          args: EmployeeDetailRouteArgs(
            key: key,
            tabIndex: tabIndex,
            employeeId: employeeId,
          ),
          initialChildren: children,
        );

  static const String name = 'EmployeeDetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EmployeeDetailRouteArgs>();
      return _i2.EmployeeDetailPage(
        key: args.key,
        tabIndex: args.tabIndex,
        employeeId: args.employeeId,
      );
    },
  );
}

class EmployeeDetailRouteArgs {
  const EmployeeDetailRouteArgs({
    this.key,
    required this.tabIndex,
    required this.employeeId,
  });

  final _i10.Key? key;

  final int tabIndex;

  final String employeeId;

  @override
  String toString() {
    return 'EmployeeDetailRouteArgs{key: $key, tabIndex: $tabIndex, employeeId: $employeeId}';
  }
}

/// generated route for
/// [_i3.EmployeeListPage]
class EmployeeListRoute extends _i9.PageRouteInfo<void> {
  const EmployeeListRoute({List<_i9.PageRouteInfo>? children})
      : super(
          EmployeeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeeListRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.EmployeeListPage();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginPage();
    },
  );
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i7.ProjectFormPage]
class ProjectFormRoute extends _i9.PageRouteInfo<ProjectFormRouteArgs> {
  ProjectFormRoute({
    _i10.Key? key,
    _i12.Project? project,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ProjectFormRoute.name,
          args: ProjectFormRouteArgs(
            key: key,
            project: project,
          ),
          initialChildren: children,
        );

  static const String name = 'ProjectFormRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProjectFormRouteArgs>(
          orElse: () => const ProjectFormRouteArgs());
      return _i7.ProjectFormPage(
        key: args.key,
        project: args.project,
      );
    },
  );
}

class ProjectFormRouteArgs {
  const ProjectFormRouteArgs({
    this.key,
    this.project,
  });

  final _i10.Key? key;

  final _i12.Project? project;

  @override
  String toString() {
    return 'ProjectFormRouteArgs{key: $key, project: $project}';
  }
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.RegisterPage();
    },
  );
}
