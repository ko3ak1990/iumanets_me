import 'package:iumanets_me/models/project_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  final Employer _project;
  final double _bottomPadding;
  const ProjectWidget(this._project, this._bottomPadding, {super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: onProjectClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  flex: 40,
                  child: Image.asset(
                    _project.image,
                    width: width * .15,
                    height: width * .15,
                  )),
              Expanded(
                flex: 4,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        textAlign: TextAlign.center,
                        _project.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .025,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        _project.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onProjectClick() {
    launchUrl(Uri.parse(_project.link));
  }
}
