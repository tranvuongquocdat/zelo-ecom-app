import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'avatar_with_update_model.dart';
export 'avatar_with_update_model.dart';

class AvatarWithUpdateWidget extends StatefulWidget {
  const AvatarWithUpdateWidget({
    super.key,
    this.avatar,
    bool? updateEnable,
  }) : updateEnable = updateEnable ?? false;

  final String? avatar;
  final bool updateEnable;

  @override
  State<AvatarWithUpdateWidget> createState() => _AvatarWithUpdateWidgetState();
}

class _AvatarWithUpdateWidgetState extends State<AvatarWithUpdateWidget> {
  late AvatarWithUpdateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvatarWithUpdateModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.avatar != null && widget.avatar != '') {
        _model.avatarURL = widget.avatar;
        _model.updatePage(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 0.0),
        children: [
          ClipOval(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 22.0,
                    color: Color(0x0C000000),
                    offset: Offset(
                      0.0,
                      12.0,
                    ),
                  )
                ],
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(111.0),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeOutDuration: const Duration(milliseconds: 500),
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/netron-e-com-mobile-6rhojr/assets/l260dcr57pr2/user-default.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    if ((widget.avatar != null && widget.avatar != '') &&
                        (_model.avatarURL == null || _model.avatarURL == ''))
                      InkWell(
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
                                  imageUrl: widget.avatar!,
                                  fit: BoxFit.contain,
                                ),
                                allowRotation: false,
                                tag: widget.avatar!,
                                useHeroAnimation: true,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: widget.avatar!,
                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(111.0),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeOutDuration: const Duration(milliseconds: 500),
                              imageUrl: widget.avatar!,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    if (_model.isDataUploading)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(111.0),
                        child: Image.asset(
                          'assets/images/upload_image.gif',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (!_model.isDataUploading &&
                        (_model.avatarURL != null && _model.avatarURL != ''))
                      InkWell(
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
                                  imageUrl: _model.avatarURL!,
                                  fit: BoxFit.contain,
                                ),
                                allowRotation: false,
                                tag: _model.avatarURL!,
                                useHeroAnimation: true,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: _model.avatarURL!,
                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(111.0),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeOutDuration: const Duration(milliseconds: 500),
                              imageUrl: _model.avatarURL!,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          if (widget.updateEnable)
            Align(
              alignment: const AlignmentDirectional(1.05, 0.88),
              child: Container(
                width: 38.0,
                height: 38.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 12.0,
                      color: Color(0x1A000000),
                      offset: Offset(
                        0.0,
                        4.0,
                      ),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 10.0,
                  borderWidth: 1.0,
                  buttonSize: 38.0,
                  icon: Icon(
                    FFIcons.kimageDefault,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      maxWidth: 800.00,
                      imageQuality: 80,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      safeSetState(() => _model.isDataUploading = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      var downloadUrls = <String>[];
                      try {
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();

                        downloadUrls = (await Future.wait(
                          selectedMedia.map(
                            (m) async =>
                                await uploadData(m.storagePath, m.bytes),
                          ),
                        ))
                            .where((u) => u != null)
                            .map((u) => u!)
                            .toList();
                      } finally {
                        _model.isDataUploading = false;
                      }
                      if (selectedUploadedFiles.length ==
                              selectedMedia.length &&
                          downloadUrls.length == selectedMedia.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile =
                              selectedUploadedFiles.first;
                          _model.uploadedFileUrl = downloadUrls.first;
                        });
                      } else {
                        safeSetState(() {});
                        return;
                      }
                    }

                    if (_model.uploadedFileUrl != '') {
                      _model.avatarURL = _model.uploadedFileUrl;
                      _model.updatePage(() {});
                    }
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
