import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/investor/side_nav04_copy/side_nav04_copy_widget.dart';
import '/pages/navbar/ihome/ihome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'homepageinvestor_model.dart';
export 'homepageinvestor_model.dart';

class HomepageinvestorWidget extends StatefulWidget {
  const HomepageinvestorWidget({super.key});

  @override
  State<HomepageinvestorWidget> createState() => _HomepageinvestorWidgetState();
}

class _HomepageinvestorWidgetState extends State<HomepageinvestorWidget>
    with TickerProviderStateMixin {
  late HomepageinvestorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageinvestorModel());

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
                    Stack(
                      children: [
                        StreamBuilder<List<InvestorsRecord>>(
                          stream: queryInvestorsRecord(
                            queryBuilder: (investorsRecord) =>
                                investorsRecord.where(
                              'i_email',
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFFF1F4F8),
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<InvestorsRecord> columnInvestorsRecordList =
                                snapshot.data!;
                            final columnInvestorsRecord =
                                columnInvestorsRecordList.isNotEmpty
                                    ? columnInvestorsRecordList.first
                                    : null;

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 500.0,
                                    child: Stack(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.05, -1.0),
                                          child: Image.asset(
                                            'assets/images/timw.jpeg',
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
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(340.0, 20.0,
                                                          0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    icon: Icon(
                                                      Icons.search_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                          'search_investor');
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 24.0,
                                                          16.0, 44.0),
                                                  child: Text(
                                                    'Discover Tomorrow\'s Success Today.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                16.0),
                                                        topRight:
                                                            Radius.circular(
                                                                16.0),
                                                      ),
                                                    ),
                                                    child: Stack(
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
                                                                    'Start Investing ',
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
                                                                            Users1Record>>(
                                                                      stream:
                                                                          queryUsers1Record(),
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
                                                                        List<Users1Record>
                                                                            listViewUsers1RecordList =
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
                                                                              listViewUsers1RecordList.length,
                                                                          itemBuilder:
                                                                              (context, listViewIndex) {
                                                                            final listViewUsers1Record =
                                                                                listViewUsers1RecordList[listViewIndex];
                                                                            return Visibility(
                                                                              visible: (columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) || (columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) || (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize) || (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 12.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      'user_page_invpointov',
                                                                                      queryParameters: {
                                                                                        'userMail': serializeParam(
                                                                                          listViewUsers1Record.uEmail,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                        'inMail': serializeParam(
                                                                                          columnInvestorsRecord?.iEmail,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                        'invPIc': serializeParam(
                                                                                          columnInvestorsRecord?.iPic,
                                                                                          ParamType.String,
                                                                                        ),
                                                                                        'invName': serializeParam(
                                                                                          columnInvestorsRecord?.iDisplayName,
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
                                                                                        Expanded(
                                                                                          child: ClipRRect(
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              bottomLeft: Radius.circular(0.0),
                                                                                              bottomRight: Radius.circular(0.0),
                                                                                              topLeft: Radius.circular(12.0),
                                                                                              topRight: Radius.circular(12.0),
                                                                                            ),
                                                                                            child: Image.network(
                                                                                              listViewUsers1Record.uProfilePic,
                                                                                              width: double.infinity,
                                                                                              height: 124.0,
                                                                                              fit: BoxFit.contain,
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
                                                                                                    listViewUsers1Record.uDisplayName,
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
                                                                                                          listViewUsers1Record.cSector,
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
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      () {
                                                                                                        if ((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) && (columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) && (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize) && (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation)) {
                                                                                                          return '99%';
                                                                                                        } else if (((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) && (columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) && (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize)) || ((columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) && (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize) && (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation)) || ((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) && (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize) && (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation)) || ((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) && (columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) && (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation))) {
                                                                                                          return '60%';
                                                                                                        } else if (((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) && (columnInvestorsRecord?.invStage == listViewUsers1Record.cStage)) || ((columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) && (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize)) || ((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) && (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize)) || ((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) && (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation)) || ((columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) && (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation)) || ((columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation) && (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize))) {
                                                                                                          return '40%';
                                                                                                        } else if ((columnInvestorsRecord?.invSector == listViewUsers1Record.cSector) || (columnInvestorsRecord?.invStage == listViewUsers1Record.cStage) || (columnInvestorsRecord?.invSize == listViewUsers1Record.cSize) || (columnInvestorsRecord?.invLocation == listViewUsers1Record.cLocation)) {
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
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
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
                                                                    'invest Now',
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
                                                                        Users1Record>>(
                                                                  stream:
                                                                      queryUsers1Record(
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
                                                                    List<Users1Record>
                                                                        stackUsers1RecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    final stackUsers1Record = stackUsers1RecordList
                                                                            .isNotEmpty
                                                                        ? stackUsers1RecordList
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
                                                                              StreamBuilder<List<PostUserRecord>>(
                                                                            stream:
                                                                                queryPostUserRecord(),
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
                                                                              List<PostUserRecord> listViewPostUserRecordList = snapshot.data!;

                                                                              return ListView.builder(
                                                                                padding: EdgeInsets.zero,
                                                                                primary: false,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                itemCount: listViewPostUserRecordList.length,
                                                                                itemBuilder: (context, listViewIndex) {
                                                                                  final listViewPostUserRecord = listViewPostUserRecordList[listViewIndex];
                                                                                  return Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                    child: Container(
                                                                                      width: 117.0,
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
                                                                                                    width: 70.0,
                                                                                                    height: 70.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      listViewPostUserRecord.postUserPic,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                      child: Text(
                                                                                                        listViewPostUserRecord.postCompany,
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
                                                                                                        listViewPostUserRecord.postSector,
                                                                                                        textAlign: TextAlign.center,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Container(
                                                                                            decoration: const BoxDecoration(
                                                                                              shape: BoxShape.rectangle,
                                                                                            ),
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
                                                                                                      image: Image.network(
                                                                                                        listViewPostUserRecord.postImage,
                                                                                                        fit: BoxFit.contain,
                                                                                                      ),
                                                                                                      allowRotation: false,
                                                                                                      tag: listViewPostUserRecord.postImage,
                                                                                                      useHeroAnimation: true,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                              child: Hero(
                                                                                                tag: listViewPostUserRecord.postImage,
                                                                                                transitionOnUserGestures: true,
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.network(
                                                                                                    listViewPostUserRecord.postImage,
                                                                                                    width: 334.0,
                                                                                                    height: 200.0,
                                                                                                    fit: BoxFit.fill,
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
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        listViewPostUserRecord.upostDescription,
                                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              color: const Color(0xFF14181B),
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(150.0, 0.0, 0.0, 0.0),
                                                                                                                child: InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {
                                                                                                                    context.pushNamed(
                                                                                                                      'user_page_invpointov',
                                                                                                                      queryParameters: {
                                                                                                                        'userMail': serializeParam(
                                                                                                                          stackUsers1Record?.uEmail,
                                                                                                                          ParamType.String,
                                                                                                                        ),
                                                                                                                        'inMail': serializeParam(
                                                                                                                          columnInvestorsRecord?.iEmail,
                                                                                                                          ParamType.String,
                                                                                                                        ),
                                                                                                                        'invPIc': serializeParam(
                                                                                                                          columnInvestorsRecord?.iPic,
                                                                                                                          ParamType.String,
                                                                                                                        ),
                                                                                                                        'invName': serializeParam(
                                                                                                                          columnInvestorsRecord?.iDisplayName,
                                                                                                                          ParamType.String,
                                                                                                                        ),
                                                                                                                      }.withoutNulls,
                                                                                                                    );
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    height: 32.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: const Color(0xFF14181B),
                                                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                                                    ),
                                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        'view',
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                              color: Colors.white,
                                                                                                                              fontSize: 14.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Align(
                                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  '50k likes',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Manrope',
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 0.0),
                                                                                                              child: FlutterFlowIconButton(
                                                                                                                borderColor: const Color(0x009489F5),
                                                                                                                borderRadius: 20.0,
                                                                                                                borderWidth: 1.0,
                                                                                                                buttonSize: 46.0,
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
                                                                                                          ),
                                                                                                        ],
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -0.91, -0.99),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
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
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 30.0,
                                              ),
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const SideNav04CopyWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
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
                  model: _model.ihomeModel,
                  updateCallback: () => setState(() {}),
                  child: const IhomeWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
