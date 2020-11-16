import 'package:flutter/material.dart';
import 'package:mobile/blocs/announcements_bloc.dart';
import 'package:mobile/injections/app_module.dart';
import 'package:mobile/models/announcements_dto.dart';
import 'package:mobile/screens/main/widgets/announcement_card_widget.dart';
import 'package:mobile/screens/main/widgets/search_view_widget.dart';
import 'package:mobile/widgets/loading.dart';
import 'package:mobile/widgets/no_data.dart';

class AnnouncementSearchView extends StatefulWidget {
  @override
  _AnnouncementSearchViewState createState() => _AnnouncementSearchViewState();
}

class _AnnouncementSearchViewState extends State<AnnouncementSearchView> {

  AnnouncementsBloc _announcementsBloc;

  @override
  void initState() {
    super.initState();
    _announcementsBloc = AppModule.injector.getBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 0,
            child: SearchViewWidget()
        ),
        Expanded(
            flex: 2,
            child:
            Listener(
              onPointerUp: (_) {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
                  currentFocus.focusedChild.unfocus();
                }
              },
              child: Stack(
                children: [
                  StreamBuilder<bool>(
                      stream: _announcementsBloc.isLoadingObservable,
                      initialData: false,
                      builder: (context, snapshotLoading) {
                        return Visibility(
                          child: LoadingWidget(),
                          visible: snapshotLoading.data,
                        );
                      }
                  ),
                  Container(
                    child: StreamBuilder<List<AnnouncementsDto>>(
                        stream: _announcementsBloc
                            .announcementsResponseObservable,
                        builder: (context, snapshotData) {
                          if (!snapshotData.hasData) {
                            return Container();
                          }
                          else {
                            if (snapshotData.data.length > 0) {
                              return ListView.builder(
                                  itemCount: snapshotData.data.length,
                                  itemBuilder: (_, index) =>
                                      AnnouncementCardWidget(
                                          data: snapshotData.data[index])
                              );
                            } else {
                              return NoDataWidget();
                            }
                          }
                        }
                    ),
                  ),
                ],
              ),
            )
        )
      ],
    );
  }
}