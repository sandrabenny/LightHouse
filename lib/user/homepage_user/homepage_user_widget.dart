import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/navbar/home/home_widget.dart';
import '/user/side_nav04/side_nav04_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'homepage_user_model.dart';
export 'homepage_user_model.dart';

class HomepageUserWidget extends StatefulWidget {
  const HomepageUserWidget({super.key});

  @override
  State<HomepageUserWidget> createState() => _HomepageUserWidgetState();
}

class _HomepageUserWidgetState extends State<HomepageUserWidget>
    with TickerProviderStateMixin {
  late HomepageUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageUserModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 15.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(30.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(60.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(60.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        body: Stack(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 500.0,
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.05, -1.0),
                                  child: Image.asset(
                                    'assets/images/coin.jpeg',
                                    width: double.infinity,
                                    height: 500.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 500.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x8D090F13),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: StreamBuilder<List<Users1Record>>(
                                    stream: queryUsers1Record(
                                      queryBuilder: (users1Record) =>
                                          users1Record.where(
                                        'u_email',
                                        isEqualTo: currentUserEmail,
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0xFFF1F4F8),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<Users1Record>
                                          columnUsers1RecordList =
                                          snapshot.data!;
                                      final columnUsers1Record =
                                          columnUsers1RecordList.isNotEmpty
                                              ? columnUsers1RecordList.first
                                              : null;

                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 100.0, 16.0, 0.0),
                                              child: Text(
                                                'Bold Ideas, Bright Futures: Partner with Potential!',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                          fontSize: 36.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation1']!),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 32.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 611.0,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                  ),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      24.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Find investors',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              const Color(0xFF14181B),
                                                                          fontSize:
                                                                              24.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'textOnPageLoadAnimation2']!),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Top compatible ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          color:
                                                                              const Color(0xFF57636C),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'textOnPageLoadAnimation3']!),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        210.0,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: StreamBuilder<
                                                                        List<
                                                                            InvestorsRecord>>(
                                                                      stream:
                                                                          queryInvestorsRecord(),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return const Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: CircularProgressIndicator(
                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                  Color(0xFFF1F4F8),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<InvestorsRecord>
                                                                            listViewInvestorsRecordList =
                                                                            snapshot.data!;

                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          primary:
                                                                              false,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.horizontal,
                                                                          itemCount:
                                                                              listViewInvestorsRecordList.length,
                                                                          itemBuilder:
                                                                              (context, listViewIndex) {
                                                                            final listViewInvestorsRecord =
                                                                                listViewInvestorsRecordList[listViewIndex];
                                                                            return Visibility(
                                                                              visible: (columnUsers1Record?.cSector == listViewInvestorsRecord.invSector) || (columnUsers1Record?.cLocation == listViewInvestorsRecord.invLocation) || (columnUsers1Record?.cSize == listViewInvestorsRecord.invSize) || (columnUsers1Record?.cStage == listViewInvestorsRecord.invStage),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 12.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      'invprof_user_pov',
                                                                                      queryParameters: {
                                                                                        'investorEmail': serializeParam(
                                                                                          listViewInvestorsRecord.iEmail,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                        'userMail': serializeParam(
                                                                                          currentUserEmail,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                        'userName': serializeParam(
                                                                                          columnUsers1Record?.uDisplayName,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                        'userPic': serializeParam(
                                                                                          columnUsers1Record?.uProfilePic,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 270.0,
                                                                                    height: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.white,
                                                                                      boxShadow: const [
                                                                                        BoxShadow(
                                                                                          blurRadius: 8.0,
                                                                                          color: Color(0x230F1113),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            4.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                      border: Border.all(
                                                                                        color: const Color(0xFFF1F4F8),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                    ),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                          child: Container(
                                                                                            width: 90.0,
                                                                                            height: 90.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsets.all(2.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  await Navigator.push(
                                                                                                    context,
                                                                                                    PageTransition(
                                                                                                      type: PageTransitionType.fade,
                                                                                                      child: FlutterFlowExpandedImageView(
                                                                                                        image: CachedNetworkImage(
                                                                                                          fadeInDuration: const Duration(milliseconds: 500),
                                                                                                          fadeOutDuration: const Duration(milliseconds: 500),
                                                                                                          imageUrl: listViewInvestorsRecord.iPic,
                                                                                                          fit: BoxFit.contain,
                                                                                                        ),
                                                                                                        allowRotation: false,
                                                                                                        tag: listViewInvestorsRecord.iPic,
                                                                                                        useHeroAnimation: true,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                                child: Hero(
                                                                                                  tag: listViewInvestorsRecord.iPic,
                                                                                                  transitionOnUserGestures: true,
                                                                                                  child: ClipRRect(
                                                                                                    borderRadius: BorderRadius.circular(50.0),
                                                                                                    child: CachedNetworkImage(
                                                                                                      fadeInDuration: const Duration(milliseconds: 500),
                                                                                                      fadeOutDuration: const Duration(milliseconds: 500),
                                                                                                      imageUrl: listViewInvestorsRecord.iPic,
                                                                                                      width: 60.0,
                                                                                                      height: 60.0,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    listViewInvestorsRecord.iDisplayName,
                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          color: const Color(0xFF14181B),
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewInvestorsRecord.occupation,
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Manrope',
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    () {
                                                                                                      if ((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) && (listViewInvestorsRecord.invStage == columnUsers1Record?.cStage) && (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize) && (listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation)) {
                                                                                                        return '99%';
                                                                                                      } else if (((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) && (listViewInvestorsRecord.invStage == columnUsers1Record?.cStage) && (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize)) || ((listViewInvestorsRecord.invStage == columnUsers1Record?.cStage) && (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize) && (listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation)) || ((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) && (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize) && (listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation)) || ((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) && (listViewInvestorsRecord.invStage == columnUsers1Record?.cStage) && (listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation))) {
                                                                                                        return '60%';
                                                                                                      } else if (((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) && (listViewInvestorsRecord.invStage == columnUsers1Record?.cStage)) || ((listViewInvestorsRecord.invStage == columnUsers1Record?.cStage) && (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize)) || ((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) && (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize)) || ((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) && (listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation)) || ((listViewInvestorsRecord.invStage == columnUsers1Record?.cStage) && (listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation)) || ((listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation) && (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize))) {
                                                                                                        return '40%';
                                                                                                      } else if ((listViewInvestorsRecord.invSector == columnUsers1Record?.cSector) || (listViewInvestorsRecord.invStage == columnUsers1Record?.cStage) || (listViewInvestorsRecord.invSize == columnUsers1Record?.cSize) || (listViewInvestorsRecord.invLocation == columnUsers1Record?.cLocation)) {
                                                                                                        return '15%';
                                                                                                      } else {
                                                                                                        return '0%';
                                                                                                      }
                                                                                                    }(),
                                                                                                    '0%',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Outfit',
                                                                                                        color: const Color(0xFF23FF35),
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Feed',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              const Color(0xFF14181B),
                                                                          fontSize:
                                                                              24.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'textOnPageLoadAnimation4']!),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Investors',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          color:
                                                                              const Color(0xFF57636C),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'textOnPageLoadAnimation5']!),
                                                                ),
                                                                StreamBuilder<
                                                                    List<
                                                                        InvestorsRecord>>(
                                                                  stream:
                                                                      queryInvestorsRecord(
                                                                    singleRecord:
                                                                        true,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return const Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              Color(0xFFF1F4F8),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<InvestorsRecord>
                                                                        stackInvestorsRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    final stackInvestorsRecord = stackInvestorsRecordList
                                                                            .isNotEmpty
                                                                        ? stackInvestorsRecordList
                                                                            .first
                                                                        : null;

                                                                    return Stack(
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              24.0),
                                                                          child:
                                                                              StreamBuilder<List<PostInvestorRecord>>(
                                                                            stream:
                                                                                queryPostInvestorRecord(
                                                                              queryBuilder: (postInvestorRecord) => postInvestorRecord.orderBy('time_posted', descending: true),
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return const Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      valueColor: AlwaysStoppedAnimation<Color>(
                                                                                        Color(0xFFF1F4F8),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              List<PostInvestorRecord> listViewPostInvestorRecordList = snapshot.data!;

                                                                              return ListView.builder(
                                                                                padding: EdgeInsets.zero,
                                                                                primary: false,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                itemCount: listViewPostInvestorRecordList.length,
                                                                                itemBuilder: (context, listViewIndex) {
                                                                                  final listViewPostInvestorRecord = listViewPostInvestorRecordList[listViewIndex];
                                                                                  return Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                    child: Container(
                                                                                      width: 270.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        boxShadow: const [
                                                                                          BoxShadow(
                                                                                            blurRadius: 8.0,
                                                                                            color: Color(0x230F1113),
                                                                                            offset: Offset(
                                                                                              0.0,
                                                                                              4.0,
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        borderRadius: BorderRadius.circular(12.0),
                                                                                        border: Border.all(
                                                                                          color: const Color(0xFFF1F4F8),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                                  child: Container(
                                                                                                    width: 50.0,
                                                                                                    height: 50.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      listViewPostInvestorRecord.postInvPic,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                        child: Text(
                                                                                                          listViewPostInvestorRecord.postInvestorName,
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Outfit',
                                                                                                                fontSize: 20.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 185.0, 0.0),
                                                                                                        child: Text(
                                                                                                          listViewPostInvestorRecord.postOccupation,
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Manrope',
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Container(
                                                                                            decoration: const BoxDecoration(
                                                                                              shape: BoxShape.rectangle,
                                                                                            ),
                                                                                          ),
                                                                                          ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.network(
                                                                                              listViewPostInvestorRecord.postImage,
                                                                                              width: 326.0,
                                                                                              height: 200.0,
                                                                                              fit: BoxFit.fill,
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                listViewPostInvestorRecord.postDescription,
                                                                                                textAlign: TextAlign.justify,
                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: const Color(0xFF14181B),
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Align(
                                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(120.0, 10.0, 0.0, 0.0),
                                                                                                              child: FFButtonWidget(
                                                                                                                onPressed: () async {
                                                                                                                  context.pushNamed(
                                                                                                                    'invprof_user_pov',
                                                                                                                    queryParameters: {
                                                                                                                      'investorEmail': serializeParam(
                                                                                                                        stackInvestorsRecord?.iEmail,
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                      'userMail': serializeParam(
                                                                                                                        currentUserEmail,
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                      'userName': serializeParam(
                                                                                                                        stackInvestorsRecord?.iDisplayName,
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                      'userPic': serializeParam(
                                                                                                                        columnUsers1Record?.uProfilePic,
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                  );
                                                                                                                },
                                                                                                                text: 'view',
                                                                                                                options: FFButtonOptions(
                                                                                                                  height: 35.0,
                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                  color: const Color(0xFF101213),
                                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                        fontFamily: 'Manrope',
                                                                                                                        color: Colors.white,
                                                                                                                        fontSize: 14.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                  elevation: 3.0,
                                                                                                                  borderSide: const BorderSide(
                                                                                                                    color: Colors.transparent,
                                                                                                                    width: 1.0,
                                                                                                                  ),
                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                const Icon(
                                                                                                                  Icons.favorite_rounded,
                                                                                                                  color: Color(0xFFFF1631),
                                                                                                                  size: 24.0,
                                                                                                                ),
                                                                                                                Text(
                                                                                                                  '50k likes',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Manrope',
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(240.0, 0.0, 0.0, 0.0),
                                                                                                              child: FlutterFlowIconButton(
                                                                                                                borderColor: const Color(0x009489F5),
                                                                                                                borderRadius: 20.0,
                                                                                                                borderWidth: 1.0,
                                                                                                                buttonSize: 34.0,
                                                                                                                fillColor: const Color(0x009489F5),
                                                                                                                icon: Icon(
                                                                                                                  Icons.share,
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  size: 24.0,
                                                                                                                ),
                                                                                                                onPressed: () {
                                                                                                                  print('IconButton pressed ...');
                                                                                                                },
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation']!);
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.01, 1.0),
                                                          child: Container(
                                                            width: 416.0,
                                                            height: 70.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 158.0,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0x00EEEEEE),
                                                              ),
                                                              child: const Stack(
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.91, -0.99),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: const Color(0x009489F5),
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor: const Color(0x009489F5),
                                      icon: Icon(
                                        Icons.toc_outlined,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 30.0,
                                      ),
                                      onPressed: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: const SideNav04Widget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(-0.99, 1.0),
              child: Container(
                width: 398.0,
                height: 68.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).info,
                ),
                child: wrapWithModel(
                  model: _model.homeModel,
                  updateCallback: () => setState(() {}),
                  child: const HomeWidget(),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.4, -0.98),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(300.0, 10.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.search_outlined,
                    color: FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('search_user');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
