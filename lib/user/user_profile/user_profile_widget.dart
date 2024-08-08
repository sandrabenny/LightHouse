import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/company_details_display/detaildisplay/detaildisplay_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget>
    with TickerProviderStateMixin {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Users1Record>>(
      stream: queryUsers1Record(
        queryBuilder: (users1Record) => users1Record.where(
          'u_email',
          isEqualTo: currentUserEmail,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Scaffold(
            backgroundColor: Color(0xFF101213),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFF1F4F8),
                  ),
                ),
              ),
            ),
          );
        }
        List<Users1Record> userProfileUsers1RecordList = snapshot.data!;
        final userProfileUsers1Record = userProfileUsers1RecordList.isNotEmpty
            ? userProfileUsers1RecordList.first
            : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF101213),
            body: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                height: 950.0,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/profit_company_cinematic_shot_.jpeg',
                                    width: 405.0,
                                    height: 179.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 160.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 900.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          -1.0,
                                        ),
                                        spreadRadius: 8.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: 900.0,
                                            decoration: const BoxDecoration(),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.88),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 80.0,
                                                                  height: 80.0,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            100.0,
                                                                        decoration:
                                                                            const BoxDecoration(
                                                                          color:
                                                                              Color(0xFFF1F4F8),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(4.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(50.0),
                                                                            child:
                                                                                Image.network(
                                                                              userProfileUsers1Record!.uProfilePic,
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        userProfileUsers1Record
                                                                            .uDisplayName,
                                                                        'trn',
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                const Color(0xFF101213),
                                                                            fontSize:
                                                                                22.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        currentUserEmail,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Colors.black,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        70.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'post_image');
                                                                  },
                                                                  text: '+',
                                                                  icon: const Icon(
                                                                    Icons.image,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 81.0,
                                                                    height:
                                                                        32.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w800,
                                                                        ),
                                                                    elevation:
                                                                        5.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'Button pressed ...');
                                                                  },
                                                                  text: '',
                                                                  icon: const Icon(
                                                                    Icons.chat,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 74.0,
                                                                    height:
                                                                        30.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    elevation:
                                                                        5.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'post_video');
                                                                  },
                                                                  text: '+',
                                                                  icon: const Icon(
                                                                    Icons
                                                                        .videocam_sharp,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 87.0,
                                                                    height:
                                                                        30.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w800,
                                                                        ),
                                                                    elevation:
                                                                        5.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  ListView(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Container(
                                                        width: 401.0,
                                                        height: 1400.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    children: [
                                                                      Align(
                                                                        alignment: const Alignment(
                                                                            0.0,
                                                                            0),
                                                                        child:
                                                                            TabBar(
                                                                          labelColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          unselectedLabelColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          unselectedLabelStyle:
                                                                              const TextStyle(),
                                                                          indicatorColor:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                          padding:
                                                                              const EdgeInsets.all(4.0),
                                                                          tabs: const [
                                                                            Tab(
                                                                              text: 'Posts',
                                                                            ),
                                                                            Tab(
                                                                              text: 'About',
                                                                            ),
                                                                            Tab(
                                                                              text: 'Video ',
                                                                            ),
                                                                          ],
                                                                          controller:
                                                                              _model.tabBarController,
                                                                          onTap:
                                                                              (i) async {
                                                                            [
                                                                              () async {},
                                                                              () async {},
                                                                              () async {}
                                                                            ][i]();
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            TabBarView(
                                                                          controller:
                                                                              _model.tabBarController,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 15.0),
                                                                              child: StreamBuilder<List<PostUserRecord>>(
                                                                                stream: queryPostUserRecord(
                                                                                  queryBuilder: (postUserRecord) => postUserRecord
                                                                                      .where(
                                                                                        'com_email',
                                                                                        isEqualTo: currentUserEmail,
                                                                                      )
                                                                                      .orderBy('time_posted', descending: true),
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
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 8.0,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                          ),
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.white,
                                                                                              borderRadius: BorderRadius.circular(20.0),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsets.all(10.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Container(
                                                                                                              width: 50.0,
                                                                                                              height: 50.0,
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              decoration: const BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                              child: Image.network(
                                                                                                                listViewPostUserRecord.postUserPic,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          listViewPostUserRecord.postCompany,
                                                                                                                          'Nike',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              fontSize: 15.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        dateTimeFormat("relative", listViewPostUserRecord.timePosted!),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              color: const Color(0xFF787878),
                                                                                                                              fontSize: 10.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        const FaIcon(
                                                                                                          FontAwesomeIcons.ellipsisV,
                                                                                                          color: Color(0xFF787878),
                                                                                                          size: 16.0,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      decoration: const BoxDecoration(),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                                            child: Text(
                                                                                                              listViewPostUserRecord.upostDescription,
                                                                                                              textAlign: TextAlign.justify,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Outfit',
                                                                                                                    fontSize: 14.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            child: Image.network(
                                                                                                              listViewPostUserRecord.postImage,
                                                                                                              width: 353.0,
                                                                                                              height: 200.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            SizedBox(
                                                                                                              width: 40.0,
                                                                                                              child: Stack(
                                                                                                                children: [
                                                                                                                  Container(
                                                                                                                    width: 20.0,
                                                                                                                    height: 20.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: Colors.white,
                                                                                                                      shape: BoxShape.circle,
                                                                                                                      border: Border.all(
                                                                                                                        color: Colors.white,
                                                                                                                        width: 1.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    child: Container(
                                                                                                                      width: 20.0,
                                                                                                                      height: 20.0,
                                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                                      decoration: const BoxDecoration(
                                                                                                                        shape: BoxShape.circle,
                                                                                                                      ),
                                                                                                                      child: Image.network(
                                                                                                                        'https://picsum.photos/seed/711/600',
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Align(
                                                                                                                    alignment: const AlignmentDirectional(0.1, 0.0),
                                                                                                                    child: Container(
                                                                                                                      width: 20.0,
                                                                                                                      height: 20.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        shape: BoxShape.circle,
                                                                                                                        border: Border.all(
                                                                                                                          color: Colors.white,
                                                                                                                          width: 1.0,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      child: Container(
                                                                                                                        width: 20.0,
                                                                                                                        height: 20.0,
                                                                                                                        clipBehavior: Clip.antiAlias,
                                                                                                                        decoration: const BoxDecoration(
                                                                                                                          shape: BoxShape.circle,
                                                                                                                        ),
                                                                                                                        child: Image.network(
                                                                                                                          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                                                                                                          fit: BoxFit.cover,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                    child: Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                      children: [
                                                                                                                        const FaIcon(
                                                                                                                          FontAwesomeIcons.commentAlt,
                                                                                                                          color: Color(0xFF787878),
                                                                                                                          size: 12.0,
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 2.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            '21',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Manrope',
                                                                                                                                  fontSize: 10.0,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Icon(
                                                                                                                    Icons.favorite,
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    size: 16.0,
                                                                                                                  ),
                                                                                                                  Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 2.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      '212',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Manrope',
                                                                                                                            fontSize: 10.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        const Icon(
                                                                                                          Icons.bookmark_border_outlined,
                                                                                                          color: Color(0xFF333333),
                                                                                                          size: 16.0,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                ListView(
                                                                                  padding: EdgeInsets.zero,
                                                                                  shrinkWrap: true,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 100.0,
                                                                                      height: 1609.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 382.0,
                                                                                            height: 1086.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: ListView(
                                                                                              padding: EdgeInsets.zero,
                                                                                              scrollDirection: Axis.vertical,
                                                                                              children: [
                                                                                                wrapWithModel(
                                                                                                  model: _model.detaildisplayModel,
                                                                                                  updateCallback: () => setState(() {}),
                                                                                                  child: const DetaildisplayWidget(),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                                                                              child: StreamBuilder<List<PostUserVideoRecord>>(
                                                                                stream: queryPostUserVideoRecord(
                                                                                  queryBuilder: (postUserVideoRecord) => postUserVideoRecord
                                                                                      .where(
                                                                                        'com_email',
                                                                                        isEqualTo: currentUserEmail,
                                                                                      )
                                                                                      .orderBy('time_posted', descending: true),
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
                                                                                  List<PostUserVideoRecord> listViewPostUserVideoRecordList = snapshot.data!;

                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: listViewPostUserVideoRecordList.length,
                                                                                    itemBuilder: (context, listViewIndex) {
                                                                                      final listViewPostUserVideoRecord = listViewPostUserVideoRecordList[listViewIndex];
                                                                                      return Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 8.0,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                          ),
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.white,
                                                                                              borderRadius: BorderRadius.circular(20.0),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsets.all(10.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Container(
                                                                                                              width: 50.0,
                                                                                                              height: 50.0,
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              decoration: const BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                              child: Image.network(
                                                                                                                listViewPostUserVideoRecord.postUserPic,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          userProfileUsers1Record.uDisplayName,
                                                                                                                          'tdyhg',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              fontSize: 15.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          listViewPostUserVideoRecord.timePosted?.toString(),
                                                                                                                          '3213',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              color: const Color(0xFF787878),
                                                                                                                              fontSize: 10.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        const FaIcon(
                                                                                                          FontAwesomeIcons.ellipsisV,
                                                                                                          color: Color(0xFF787878),
                                                                                                          size: 16.0,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 7.0),
                                                                                                      child: Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          listViewPostUserVideoRecord.uVideoDescription,
                                                                                                          '132',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      decoration: const BoxDecoration(),
                                                                                                      child: FlutterFlowVideoPlayer(
                                                                                                        path: listViewPostUserVideoRecord.postVideo,
                                                                                                        videoType: VideoType.network,
                                                                                                        autoPlay: false,
                                                                                                        looping: true,
                                                                                                        showControls: true,
                                                                                                        allowFullScreen: true,
                                                                                                        allowPlaybackSpeedMenu: true,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            SizedBox(
                                                                                                              width: 40.0,
                                                                                                              child: Stack(
                                                                                                                children: [
                                                                                                                  Container(
                                                                                                                    width: 20.0,
                                                                                                                    height: 20.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: Colors.white,
                                                                                                                      shape: BoxShape.circle,
                                                                                                                      border: Border.all(
                                                                                                                        color: Colors.white,
                                                                                                                        width: 1.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    child: Container(
                                                                                                                      width: 20.0,
                                                                                                                      height: 20.0,
                                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                                      decoration: const BoxDecoration(
                                                                                                                        shape: BoxShape.circle,
                                                                                                                      ),
                                                                                                                      child: Image.network(
                                                                                                                        'https://picsum.photos/seed/711/600',
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Align(
                                                                                                                    alignment: const AlignmentDirectional(0.1, 0.0),
                                                                                                                    child: Container(
                                                                                                                      width: 20.0,
                                                                                                                      height: 20.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        shape: BoxShape.circle,
                                                                                                                        border: Border.all(
                                                                                                                          color: Colors.white,
                                                                                                                          width: 1.0,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      child: Container(
                                                                                                                        width: 20.0,
                                                                                                                        height: 20.0,
                                                                                                                        clipBehavior: Clip.antiAlias,
                                                                                                                        decoration: const BoxDecoration(
                                                                                                                          shape: BoxShape.circle,
                                                                                                                        ),
                                                                                                                        child: Image.network(
                                                                                                                          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                                                                                                          fit: BoxFit.cover,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                    child: Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                      children: [
                                                                                                                        const FaIcon(
                                                                                                                          FontAwesomeIcons.commentAlt,
                                                                                                                          color: Color(0xFF787878),
                                                                                                                          size: 12.0,
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 2.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            '21',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Manrope',
                                                                                                                                  fontSize: 10.0,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Icon(
                                                                                                                    Icons.favorite,
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    size: 16.0,
                                                                                                                  ),
                                                                                                                  Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 2.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      '212',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Manrope',
                                                                                                                            fontSize: 10.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        const Icon(
                                                                                                          Icons.bookmark_border_outlined,
                                                                                                          color: Color(0xFF333333),
                                                                                                          size: 16.0,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ],
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
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
                    Align(
                      alignment: const AlignmentDirectional(-0.99, 1.0),
                      child: Container(
                        width: 398.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  icon: Icon(
                                    Icons.notifications_active,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 15.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.book,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('mybookings_company');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  icon: Icon(
                                    Icons.home,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('homepageUser');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: 25.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  icon: const Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('user_profile');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  icon: Icon(
                                    Icons.settings_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('settingsuser');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
