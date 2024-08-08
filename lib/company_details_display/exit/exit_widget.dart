import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'exit_model.dart';
export 'exit_model.dart';

class ExitWidget extends StatefulWidget {
  const ExitWidget({super.key});

  @override
  State<ExitWidget> createState() => _ExitWidgetState();
}

class _ExitWidgetState extends State<ExitWidget> {
  late ExitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExitModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

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
        List<Users1Record> card58TransferLargeUsers1RecordList = snapshot.data!;
        final card58TransferLargeUsers1Record =
            card58TransferLargeUsers1RecordList.isNotEmpty
                ? card58TransferLargeUsers1RecordList.first
                : null;

        return Container(
          width: 500.0,
          constraints: const BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: const Color(0xFFE5E7EB),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exit Strategy',
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: const Color(0xFF15161E),
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].divide(const SizedBox(height: 4.0)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FlutterFlowIconButton(
                          borderColor: const Color(0x009489F5),
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 53.0,
                          fillColor: const Color(0x009489F5),
                          icon: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).error,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 2.0,
                  thickness: 1.0,
                  color: Color(0xFFE5E7EB),
                ),
                Container(
                  decoration: const BoxDecoration(),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1705730459203.json',
                    width: 137.0,
                    height: 113.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ),
                const Divider(
                  height: 2.0,
                  thickness: 1.0,
                  color: Color(0xFFE5E7EB),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
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
                              'Company\'s Exit plan',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Exit strategy : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      card58TransferLargeUsers1Record
                                          ?.exitStrategy,
                                      'gtve',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Proposed timeline:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      card58TransferLargeUsers1Record
                                          ?.proposedTimeline,
                                      'eg',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            const FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/adidas.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(height: 4.0)).addToEnd(const SizedBox(height: 12.0)),
            ),
          ),
        );
      },
    );
  }
}
