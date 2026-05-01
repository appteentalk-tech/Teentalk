import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomepageWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomepageWidget() : LoginWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: RegisterrWidget.routeName,
          path: RegisterrWidget.routePath,
          builder: (context, params) => RegisterrWidget(),
        ),
        FFRoute(
          name: BolisexualelectiiWidget.routeName,
          path: BolisexualelectiiWidget.routePath,
          builder: (context, params) => BolisexualelectiiWidget(),
        ),
        FFRoute(
          name: LessonsWidget.routeName,
          path: LessonsWidget.routePath,
          builder: (context, params) => LessonsWidget(),
        ),
        FFRoute(
          name: GradeschoolWidget.routeName,
          path: GradeschoolWidget.routePath,
          builder: (context, params) => GradeschoolWidget(),
        ),
        FFRoute(
          name: ContraceptialessonsWidget.routeName,
          path: ContraceptialessonsWidget.routePath,
          builder: (context, params) => ContraceptialessonsWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: HivaidsWidget.routeName,
          path: HivaidsWidget.routePath,
          builder: (context, params) => HivaidsWidget(),
        ),
        FFRoute(
          name: ConsentWidget.routeName,
          path: ConsentWidget.routePath,
          builder: (context, params) => ConsentWidget(),
        ),
        FFRoute(
          name: Test1question1Widget.routeName,
          path: Test1question1Widget.routePath,
          builder: (context, params) => Test1question1Widget(),
        ),
        FFRoute(
          name: BolisexualevideoWidget.routeName,
          path: BolisexualevideoWidget.routePath,
          builder: (context, params) => BolisexualevideoWidget(),
        ),
        FFRoute(
          name: Test1question2Widget.routeName,
          path: Test1question2Widget.routePath,
          builder: (context, params) => Test1question2Widget(),
        ),
        FFRoute(
          name: Test1question3Widget.routeName,
          path: Test1question3Widget.routePath,
          builder: (context, params) => Test1question3Widget(),
        ),
        FFRoute(
          name: Test1question4Widget.routeName,
          path: Test1question4Widget.routePath,
          builder: (context, params) => Test1question4Widget(),
        ),
        FFRoute(
          name: Test1question5Widget.routeName,
          path: Test1question5Widget.routePath,
          builder: (context, params) => Test1question5Widget(),
        ),
        FFRoute(
          name: Test1question6Widget.routeName,
          path: Test1question6Widget.routePath,
          builder: (context, params) => Test1question6Widget(),
        ),
        FFRoute(
          name: Anatomie1Widget.routeName,
          path: Anatomie1Widget.routePath,
          builder: (context, params) => Anatomie1Widget(),
        ),
        FFRoute(
          name: Thebestcontraceptionmethod1Widget.routeName,
          path: Thebestcontraceptionmethod1Widget.routePath,
          builder: (context, params) => Thebestcontraceptionmethod1Widget(),
        ),
        FFRoute(
          name: Findyourperfectmethod2Widget.routeName,
          path: Findyourperfectmethod2Widget.routePath,
          builder: (context, params) => Findyourperfectmethod2Widget(),
        ),
        FFRoute(
          name: Lesssafemethod3Widget.routeName,
          path: Lesssafemethod3Widget.routePath,
          builder: (context, params) => Lesssafemethod3Widget(),
        ),
        FFRoute(
          name: Staysafefromsti4Widget.routeName,
          path: Staysafefromsti4Widget.routePath,
          builder: (context, params) => Staysafefromsti4Widget(),
        ),
        FFRoute(
          name: Protection5Widget.routeName,
          path: Protection5Widget.routePath,
          builder: (context, params) => Protection5Widget(),
        ),
        FFRoute(
          name: Preventionmethods6Widget.routeName,
          path: Preventionmethods6Widget.routePath,
          builder: (context, params) => Preventionmethods6Widget(),
        ),
        FFRoute(
          name: Unprotectedcontact7Widget.routeName,
          path: Unprotectedcontact7Widget.routePath,
          builder: (context, params) => Unprotectedcontact7Widget(),
        ),
        FFRoute(
          name: Staysafefromsti41Widget.routeName,
          path: Staysafefromsti41Widget.routePath,
          builder: (context, params) => Staysafefromsti41Widget(),
        ),
        FFRoute(
          name: Staysafefromsti42Widget.routeName,
          path: Staysafefromsti42Widget.routePath,
          builder: (context, params) => Staysafefromsti42Widget(),
        ),
        FFRoute(
          name: Staysafefromsti43Widget.routeName,
          path: Staysafefromsti43Widget.routePath,
          builder: (context, params) => Staysafefromsti43Widget(),
        ),
        FFRoute(
          name: HpvWidget.routeName,
          path: HpvWidget.routePath,
          builder: (context, params) => HpvWidget(),
        ),
        FFRoute(
          name: DonovanosisWidget.routeName,
          path: DonovanosisWidget.routePath,
          builder: (context, params) => DonovanosisWidget(),
        ),
        FFRoute(
          name: LgvWidget.routeName,
          path: LgvWidget.routePath,
          builder: (context, params) => LgvWidget(),
        ),
        FFRoute(
          name: UreaplasmaWidget.routeName,
          path: UreaplasmaWidget.routePath,
          builder: (context, params) => UreaplasmaWidget(),
        ),
        FFRoute(
          name: ChancroidWidget.routeName,
          path: ChancroidWidget.routePath,
          builder: (context, params) => ChancroidWidget(),
        ),
        FFRoute(
          name: ScabiesWidget.routeName,
          path: ScabiesWidget.routePath,
          builder: (context, params) => ScabiesWidget(),
        ),
        FFRoute(
          name: MycoplasmaWidget.routeName,
          path: MycoplasmaWidget.routePath,
          builder: (context, params) => MycoplasmaWidget(),
        ),
        FFRoute(
          name: MolluscumWidget.routeName,
          path: MolluscumWidget.routePath,
          builder: (context, params) => MolluscumWidget(),
        ),
        FFRoute(
          name: PubicliceWidget.routeName,
          path: PubicliceWidget.routePath,
          builder: (context, params) => PubicliceWidget(),
        ),
        FFRoute(
          name: SyphilisWidget.routeName,
          path: SyphilisWidget.routePath,
          builder: (context, params) => SyphilisWidget(),
        ),
        FFRoute(
          name: ChlamydiaWidget.routeName,
          path: ChlamydiaWidget.routePath,
          builder: (context, params) => ChlamydiaWidget(),
        ),
        FFRoute(
          name: MorningafterpillWidget.routeName,
          path: MorningafterpillWidget.routePath,
          builder: (context, params) => MorningafterpillWidget(),
        ),
        FFRoute(
          name: Morningafterpill2Widget.routeName,
          path: Morningafterpill2Widget.routePath,
          builder: (context, params) => Morningafterpill2Widget(),
        ),
        FFRoute(
          name: W6Widget.routeName,
          path: W6Widget.routePath,
          builder: (context, params) => W6Widget(),
        ),
        FFRoute(
          name: B6wWidget.routeName,
          path: B6wWidget.routePath,
          builder: (context, params) => B6wWidget(),
        ),
        FFRoute(
          name: M6Widget.routeName,
          path: M6Widget.routePath,
          builder: (context, params) => M6Widget(),
        ),
        FFRoute(
          name: H6wWidget.routeName,
          path: H6wWidget.routePath,
          builder: (context, params) => H6wWidget(),
        ),
        FFRoute(
          name: I6wWidget.routeName,
          path: I6wWidget.routePath,
          builder: (context, params) => I6wWidget(),
        ),
        FFRoute(
          name: E6wWidget.routeName,
          path: E6wWidget.routePath,
          builder: (context, params) => E6wWidget(),
        ),
        FFRoute(
          name: Hiv1Widget.routeName,
          path: Hiv1Widget.routePath,
          builder: (context, params) => Hiv1Widget(),
        ),
        FFRoute(
          name: Consent1Widget.routeName,
          path: Consent1Widget.routePath,
          builder: (context, params) => Consent1Widget(),
        ),
        FFRoute(
          name: Consent2Widget.routeName,
          path: Consent2Widget.routePath,
          builder: (context, params) => Consent2Widget(),
        ),
        FFRoute(
          name: Consent3Widget.routeName,
          path: Consent3Widget.routePath,
          builder: (context, params) => Consent3Widget(),
        ),
        FFRoute(
          name: No1Widget.routeName,
          path: No1Widget.routePath,
          builder: (context, params) => No1Widget(),
        ),
        FFRoute(
          name: No2Widget.routeName,
          path: No2Widget.routePath,
          builder: (context, params) => No2Widget(),
        ),
        FFRoute(
          name: ReactNOWidget.routeName,
          path: ReactNOWidget.routePath,
          builder: (context, params) => ReactNOWidget(),
        ),
        FFRoute(
          name: RealLife1Widget.routeName,
          path: RealLife1Widget.routePath,
          builder: (context, params) => RealLife1Widget(),
        ),
        FFRoute(
          name: RealLife2Widget.routeName,
          path: RealLife2Widget.routePath,
          builder: (context, params) => RealLife2Widget(),
        ),
        FFRoute(
          name: Hiv2Widget.routeName,
          path: Hiv2Widget.routePath,
          builder: (context, params) => Hiv2Widget(),
        ),
        FFRoute(
          name: Hiv21Widget.routeName,
          path: Hiv21Widget.routePath,
          builder: (context, params) => Hiv21Widget(),
        ),
        FFRoute(
          name: Hiv3Widget.routeName,
          path: Hiv3Widget.routePath,
          builder: (context, params) => Hiv3Widget(),
        ),
        FFRoute(
          name: Hiv31Widget.routeName,
          path: Hiv31Widget.routePath,
          builder: (context, params) => Hiv31Widget(),
        ),
        FFRoute(
          name: Hiv4Widget.routeName,
          path: Hiv4Widget.routePath,
          builder: (context, params) => Hiv4Widget(),
        ),
        FFRoute(
          name: Hiv5Widget.routeName,
          path: Hiv5Widget.routePath,
          builder: (context, params) => Hiv5Widget(),
        ),
        FFRoute(
          name: HomepageWidget.routeName,
          path: HomepageWidget.routePath,
          builder: (context, params) => HomepageWidget(),
        ),
        FFRoute(
          name: AiWidget.routeName,
          path: AiWidget.routePath,
          builder: (context, params) => AiWidget(),
        ),
        FFRoute(
          name: ContraceptiavideosWidget.routeName,
          path: ContraceptiavideosWidget.routePath,
          builder: (context, params) => ContraceptiavideosWidget(),
        ),
        FFRoute(
          name: BolisexualetesteWidget.routeName,
          path: BolisexualetesteWidget.routePath,
          builder: (context, params) => BolisexualetesteWidget(),
        ),
        FFRoute(
          name: LogoutWidget.routeName,
          path: LogoutWidget.routePath,
          builder: (context, params) => LogoutWidget(),
        ),
        FFRoute(
          name: BabydevelopmentWidget.routeName,
          path: BabydevelopmentWidget.routePath,
          builder: (context, params) => BabydevelopmentWidget(),
        ),
        FFRoute(
          name: IncomemothersWidget.routeName,
          path: IncomemothersWidget.routePath,
          builder: (context, params) => IncomemothersWidget(),
        ),
        FFRoute(
          name: RightsmomWidget.routeName,
          path: RightsmomWidget.routePath,
          builder: (context, params) => RightsmomWidget(),
        ),
        FFRoute(
          name: CaresupportWidget.routeName,
          path: CaresupportWidget.routePath,
          builder: (context, params) => CaresupportWidget(),
        ),
        FFRoute(
          name: Gonorhea1Widget.routeName,
          path: Gonorhea1Widget.routePath,
          builder: (context, params) => Gonorhea1Widget(),
        ),
        FFRoute(
          name: Gon1Widget.routeName,
          path: Gon1Widget.routePath,
          builder: (context, params) => Gon1Widget(),
        ),
        FFRoute(
          name: Gon2Widget.routeName,
          path: Gon2Widget.routePath,
          builder: (context, params) => Gon2Widget(),
        ),
        FFRoute(
          name: Gon21Widget.routeName,
          path: Gon21Widget.routePath,
          builder: (context, params) => Gon21Widget(),
        ),
        FFRoute(
          name: Gon3Widget.routeName,
          path: Gon3Widget.routePath,
          builder: (context, params) => Gon3Widget(),
        ),
        FFRoute(
          name: Gon31Widget.routeName,
          path: Gon31Widget.routePath,
          builder: (context, params) => Gon31Widget(),
        ),
        FFRoute(
          name: Gon4Widget.routeName,
          path: Gon4Widget.routePath,
          builder: (context, params) => Gon4Widget(),
        ),
        FFRoute(
          name: ContraceptiatesteWidget.routeName,
          path: ContraceptiatesteWidget.routePath,
          builder: (context, params) => ContraceptiatesteWidget(),
        ),
        FFRoute(
          name: Test1contracepq1Widget.routeName,
          path: Test1contracepq1Widget.routePath,
          builder: (context, params) => Test1contracepq1Widget(),
        ),
        FFRoute(
          name: Test1contracepq2Widget.routeName,
          path: Test1contracepq2Widget.routePath,
          builder: (context, params) => Test1contracepq2Widget(),
        ),
        FFRoute(
          name: Test1contracepq3Widget.routeName,
          path: Test1contracepq3Widget.routePath,
          builder: (context, params) => Test1contracepq3Widget(),
        ),
        FFRoute(
          name: Test1contracepq4Widget.routeName,
          path: Test1contracepq4Widget.routePath,
          builder: (context, params) => Test1contracepq4Widget(),
        ),
        FFRoute(
          name: Test1contracepq5Widget.routeName,
          path: Test1contracepq5Widget.routePath,
          builder: (context, params) => Test1contracepq5Widget(),
        ),
        FFRoute(
          name: BolisexualelectiiCopyWidget.routeName,
          path: BolisexualelectiiCopyWidget.routePath,
          builder: (context, params) => BolisexualelectiiCopyWidget(),
        ),
        FFRoute(
          name: Gon5Widget.routeName,
          path: Gon5Widget.routePath,
          builder: (context, params) => Gon5Widget(),
        ),
        FFRoute(
          name: BolisexualanouWidget.routeName,
          path: BolisexualanouWidget.routePath,
          builder: (context, params) => BolisexualanouWidget(),
        ),
        FFRoute(
          name: HerpesWidget.routeName,
          path: HerpesWidget.routePath,
          builder: (context, params) => HerpesWidget(),
        ),
        FFRoute(
          name: Her1Widget.routeName,
          path: Her1Widget.routePath,
          builder: (context, params) => Her1Widget(),
        ),
        FFRoute(
          name: ConsentlessonsWidget.routeName,
          path: ConsentlessonsWidget.routePath,
          builder: (context, params) => ConsentlessonsWidget(),
        ),
        FFRoute(
          name: Her2Widget.routeName,
          path: Her2Widget.routePath,
          builder: (context, params) => Her2Widget(),
        ),
        FFRoute(
          name: Her21Widget.routeName,
          path: Her21Widget.routePath,
          builder: (context, params) => Her21Widget(),
        ),
        FFRoute(
          name: Her3Widget.routeName,
          path: Her3Widget.routePath,
          builder: (context, params) => Her3Widget(),
        ),
        FFRoute(
          name: Her31Widget.routeName,
          path: Her31Widget.routePath,
          builder: (context, params) => Her31Widget(),
        ),
        FFRoute(
          name: Her4Widget.routeName,
          path: Her4Widget.routePath,
          builder: (context, params) => Her4Widget(),
        ),
        FFRoute(
          name: Hep5Widget.routeName,
          path: Hep5Widget.routePath,
          builder: (context, params) => Hep5Widget(),
        ),
        FFRoute(
          name: ConsenttestWidget.routeName,
          path: ConsenttestWidget.routePath,
          builder: (context, params) => ConsenttestWidget(),
        ),
        FFRoute(
          name: HepatitaWidget.routeName,
          path: HepatitaWidget.routePath,
          builder: (context, params) => HepatitaWidget(),
        ),
        FFRoute(
          name: Hep1Widget.routeName,
          path: Hep1Widget.routePath,
          builder: (context, params) => Hep1Widget(),
        ),
        FFRoute(
          name: Hep2Widget.routeName,
          path: Hep2Widget.routePath,
          builder: (context, params) => Hep2Widget(),
        ),
        FFRoute(
          name: Test1consentq1Widget.routeName,
          path: Test1consentq1Widget.routePath,
          builder: (context, params) => Test1consentq1Widget(),
        ),
        FFRoute(
          name: Test1consentq2Widget.routeName,
          path: Test1consentq2Widget.routePath,
          builder: (context, params) => Test1consentq2Widget(),
        ),
        FFRoute(
          name: Test1consentq3Widget.routeName,
          path: Test1consentq3Widget.routePath,
          builder: (context, params) => Test1consentq3Widget(),
        ),
        FFRoute(
          name: Hep21Widget.routeName,
          path: Hep21Widget.routePath,
          builder: (context, params) => Hep21Widget(),
        ),
        FFRoute(
          name: Hep3Widget.routeName,
          path: Hep3Widget.routePath,
          builder: (context, params) => Hep3Widget(),
        ),
        FFRoute(
          name: Test1consentq4Widget.routeName,
          path: Test1consentq4Widget.routePath,
          builder: (context, params) => Test1consentq4Widget(),
        ),
        FFRoute(
          name: Test1consentq5Widget.routeName,
          path: Test1consentq5Widget.routePath,
          builder: (context, params) => Test1consentq5Widget(),
        ),
        FFRoute(
          name: Hep31Widget.routeName,
          path: Hep31Widget.routePath,
          builder: (context, params) => Hep31Widget(),
        ),
        FFRoute(
          name: Hep4Widget.routeName,
          path: Hep4Widget.routePath,
          builder: (context, params) => Hep4Widget(),
        ),
        FFRoute(
          name: Tri1Widget.routeName,
          path: Tri1Widget.routePath,
          builder: (context, params) => Tri1Widget(),
        ),
        FFRoute(
          name: Trichomoniasis1Widget.routeName,
          path: Trichomoniasis1Widget.routePath,
          builder: (context, params) => Trichomoniasis1Widget(),
        ),
        FFRoute(
          name: Tri2Widget.routeName,
          path: Tri2Widget.routePath,
          builder: (context, params) => Tri2Widget(),
        ),
        FFRoute(
          name: Tri21Widget.routeName,
          path: Tri21Widget.routePath,
          builder: (context, params) => Tri21Widget(),
        ),
        FFRoute(
          name: Tri3Widget.routeName,
          path: Tri3Widget.routePath,
          builder: (context, params) => Tri3Widget(),
        ),
        FFRoute(
          name: Tri31Widget.routeName,
          path: Tri31Widget.routePath,
          builder: (context, params) => Tri31Widget(),
        ),
        FFRoute(
          name: Tri4Widget.routeName,
          path: Tri4Widget.routePath,
          builder: (context, params) => Tri4Widget(),
        ),
        FFRoute(
          name: Her5Widget.routeName,
          path: Her5Widget.routePath,
          builder: (context, params) => Her5Widget(),
        ),
        FFRoute(
          name: Tri5Widget.routeName,
          path: Tri5Widget.routePath,
          builder: (context, params) => Tri5Widget(),
        ),
        FFRoute(
          name: ConsentvideoWidget.routeName,
          path: ConsentvideoWidget.routePath,
          builder: (context, params) => ConsentvideoWidget(),
        ),
        FFRoute(
          name: VidboliWidget.routeName,
          path: VidboliWidget.routePath,
          builder: (context, params) => VidboliWidget(),
        ),
        FFRoute(
          name: TestebolisexWidget.routeName,
          path: TestebolisexWidget.routePath,
          builder: (context, params) => TestebolisexWidget(),
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
    StructBuilder<T>? structBuilder,
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
      structBuilder: structBuilder,
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
            return '/login';
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
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
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
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
