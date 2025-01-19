// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:bespoke/features/auth/presentation/login_screen.dart' as _i2;
import 'package:bespoke/features/auth/presentation/register_screen.dart' as _i4;
import 'package:bespoke/features/home/data/entities/project_model.dart' as _i7;
import 'package:bespoke/features/home/presentation/create_update_project_form.dart'
    as _i3;
import 'package:bespoke/features/home/presentation/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginPage();
    },
  );
}

/// generated route for
/// [_i3.ProjectFormPage]
class ProjectFormRoute extends _i5.PageRouteInfo<ProjectFormRouteArgs> {
  ProjectFormRoute({
    _i6.Key? key,
    _i7.Project? project,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ProjectFormRoute.name,
          args: ProjectFormRouteArgs(
            key: key,
            project: project,
          ),
          initialChildren: children,
        );

  static const String name = 'ProjectFormRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProjectFormRouteArgs>(
          orElse: () => const ProjectFormRouteArgs());
      return _i3.ProjectFormPage(
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

  final _i6.Key? key;

  final _i7.Project? project;

  @override
  String toString() {
    return 'ProjectFormRouteArgs{key: $key, project: $project}';
  }
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterRoute extends _i5.PageRouteInfo<void> {
  const RegisterRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.RegisterPage();
    },
  );
}
