// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:bespoke/features/auth/presentation/login_screen.dart' as _i4;
import 'package:bespoke/features/auth/presentation/register_screen.dart' as _i6;
import 'package:bespoke/features/employees/data/entities/user_model.dart'
    as _i9;
import 'package:bespoke/features/employees/presentation/create_employee_form_page.dart'
    as _i1;
import 'package:bespoke/features/employees/presentation/employee_list_page.dart'
    as _i2;
import 'package:bespoke/features/home/data/entities/project_model.dart' as _i10;
import 'package:bespoke/features/home/presentation/create_update_project_form.dart'
    as _i5;
import 'package:bespoke/features/home/presentation/home_page.dart' as _i3;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.CreateEmployeeFormPage]
class CreateEmployeeFormRoute
    extends _i7.PageRouteInfo<CreateEmployeeFormRouteArgs> {
  CreateEmployeeFormRoute({
    _i8.Key? key,
    _i9.User? initialUser,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          CreateEmployeeFormRoute.name,
          args: CreateEmployeeFormRouteArgs(
            key: key,
            initialUser: initialUser,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateEmployeeFormRoute';

  static _i7.PageInfo page = _i7.PageInfo(
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

  final _i8.Key? key;

  final _i9.User? initialUser;

  @override
  String toString() {
    return 'CreateEmployeeFormRouteArgs{key: $key, initialUser: $initialUser}';
  }
}

/// generated route for
/// [_i2.EmployeeListPage]
class EmployeeListRoute extends _i7.PageRouteInfo<void> {
  const EmployeeListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          EmployeeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeeListRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.EmployeeListPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}

/// generated route for
/// [_i5.ProjectFormPage]
class ProjectFormRoute extends _i7.PageRouteInfo<ProjectFormRouteArgs> {
  ProjectFormRoute({
    _i8.Key? key,
    _i10.Project? project,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ProjectFormRoute.name,
          args: ProjectFormRouteArgs(
            key: key,
            project: project,
          ),
          initialChildren: children,
        );

  static const String name = 'ProjectFormRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProjectFormRouteArgs>(
          orElse: () => const ProjectFormRouteArgs());
      return _i5.ProjectFormPage(
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

  final _i8.Key? key;

  final _i10.Project? project;

  @override
  String toString() {
    return 'ProjectFormRouteArgs{key: $key, project: $project}';
  }
}

/// generated route for
/// [_i6.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.RegisterPage();
    },
  );
}
