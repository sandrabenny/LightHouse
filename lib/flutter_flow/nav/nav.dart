import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const AwelcomeWidget() : const AwelcomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const AwelcomeWidget() : const AwelcomeWidget(),
        ),
        FFRoute(
          name: 'Awelcome',
          path: '/awelcome',
          builder: (context, params) => const AwelcomeWidget(),
        ),
        FFRoute(
          name: 'Asignup',
          path: '/asignup',
          builder: (context, params) => const AsignupWidget(),
        ),
        FFRoute(
          name: 'signup-user',
          path: '/signupUser',
          builder: (context, params) => SignupUserWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'signup-investor',
          path: '/signupInvestor',
          builder: (context, params) => const SignupInvestorWidget(),
        ),
        FFRoute(
          name: 'Alogin',
          path: '/alogin',
          builder: (context, params) => const AloginWidget(),
        ),
        FFRoute(
          name: 'homepageinvestor',
          path: '/homepageinvestor',
          builder: (context, params) => const HomepageinvestorWidget(),
        ),
        FFRoute(
          name: 'homepageUser',
          path: '/homepageUser',
          builder: (context, params) => const HomepageUserWidget(),
        ),
        FFRoute(
          name: 'Detail_user',
          path: '/detailUser',
          builder: (context, params) => const DetailUserWidget(),
        ),
        FFRoute(
          name: 'investor_details',
          path: '/investorDetails',
          builder: (context, params) => InvestorDetailsWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'settingsuser',
          path: '/settingsuser',
          builder: (context, params) => const SettingsuserWidget(),
        ),
        FFRoute(
          name: 'editprofile',
          path: '/editprofile',
          builder: (context, params) => const EditprofileWidget(),
        ),
        FFRoute(
          name: 'post_image',
          path: '/postImage',
          builder: (context, params) => const PostImageWidget(),
        ),
        FFRoute(
          name: 'post_video',
          path: '/postVideo',
          builder: (context, params) => const PostVideoWidget(),
        ),
        FFRoute(
          name: 'edit_company_details',
          path: '/editCompanyDetails',
          builder: (context, params) => const EditCompanyDetailsWidget(),
        ),
        FFRoute(
          name: 'user_profile',
          path: '/user_profile',
          builder: (context, params) => const UserProfileWidget(),
        ),
        FFRoute(
          name: 'investor_profile',
          path: '/investor_profile',
          builder: (context, params) => const InvestorProfileWidget(),
        ),
        FFRoute(
          name: 'notification',
          path: '/notification',
          builder: (context, params) => const NotificationWidget(),
        ),
        FFRoute(
          name: 'post_image_investor',
          path: '/postImageInvestor',
          builder: (context, params) => const PostImageInvestorWidget(),
        ),
        FFRoute(
          name: 'settings_investor',
          path: '/settingsInvestor',
          builder: (context, params) => const SettingsInvestorWidget(),
        ),
        FFRoute(
          name: 'user_page_invpointov',
          path: '/user_page_invpointov',
          builder: (context, params) => UserPageInvpointovWidget(
            userMail: params.getParam(
              'userMail',
              ParamType.String,
            ),
            inMail: params.getParam(
              'inMail',
              ParamType.String,
            ),
            invPIc: params.getParam(
              'invPIc',
              ParamType.String,
            ),
            invName: params.getParam(
              'invName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'invprof_user_pov',
          path: '/invprof_user_pov',
          builder: (context, params) => InvprofUserPovWidget(
            investorEmail: params.getParam(
              'investorEmail',
              ParamType.String,
            ),
            userMail: params.getParam(
              'userMail',
              ParamType.String,
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            userPic: params.getParam(
              'userPic',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'search_user',
          path: '/searchUser',
          builder: (context, params) => const SearchUserWidget(),
        ),
        FFRoute(
          name: 'search_investor',
          path: '/searchInvestor',
          builder: (context, params) => const SearchInvestorWidget(),
        ),
        FFRoute(
          name: 'changepassuser',
          path: '/changepassuser',
          builder: (context, params) => const ChangepassuserWidget(),
        ),
        FFRoute(
          name: 'help_and_support',
          path: '/helpAndSupport',
          builder: (context, params) => const HelpAndSupportWidget(),
        ),
        FFRoute(
          name: 'terms',
          path: '/terms',
          builder: (context, params) => const TermsWidget(),
        ),
        FFRoute(
          name: 'editprofileCopy',
          path: '/editprofileCopy',
          builder: (context, params) => const EditprofileCopyWidget(),
        ),
        FFRoute(
          name: 'Edit_invdetails',
          path: '/editInvdetails',
          builder: (context, params) => const EditInvdetailsWidget(),
        ),
        FFRoute(
          name: 'changepassinvestor',
          path: '/changepassinvestor',
          builder: (context, params) => const ChangepassinvestorWidget(),
        ),
        FFRoute(
          name: 'All_chats_company',
          path: '/allChatsCompany',
          builder: (context, params) => const AllChatsCompanyWidget(),
        ),
        FFRoute(
          name: 'chat_company',
          path: '/chatCompany',
          builder: (context, params) => const ChatCompanyWidget(),
        ),
        FFRoute(
          name: 'chat_investor',
          path: '/chatInvestor',
          builder: (context, params) => const ChatInvestorWidget(),
        ),
        FFRoute(
          name: 'All_chats_investor',
          path: '/allChatsInvestor',
          builder: (context, params) => const AllChatsInvestorWidget(),
        ),
        FFRoute(
          name: 'notificationinv',
          path: '/notificationinv',
          builder: (context, params) => const NotificationinvWidget(),
        ),
        FFRoute(
          name: 'Booking_appoinment_com',
          path: '/bookingAppoinmentCom',
          builder: (context, params) => BookingAppoinmentComWidget(
            senderName: params.getParam(
              'senderName',
              ParamType.String,
            ),
            senderEmail: params.getParam(
              'senderEmail',
              ParamType.String,
            ),
            revieverMail: params.getParam(
              'revieverMail',
              ParamType.String,
            ),
            recieverName: params.getParam(
              'recieverName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'mybookings_company',
          path: '/mybookingsCompany',
          builder: (context, params) => const MybookingsCompanyWidget(),
        ),
        FFRoute(
          name: 'Booking_appoinment_inv',
          path: '/bookingAppoinmentInv',
          builder: (context, params) => BookingAppoinmentInvWidget(
            senderName: params.getParam(
              'senderName',
              ParamType.String,
            ),
            senderEmail: params.getParam(
              'senderEmail',
              ParamType.String,
            ),
            revieverMail: params.getParam(
              'revieverMail',
              ParamType.String,
            ),
            recieverName: params.getParam(
              'recieverName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'mybooking_inv',
          path: '/mybookingInv',
          builder: (context, params) => const MybookingInvWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/awelcome';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? const Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFFF1F4F8),
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
