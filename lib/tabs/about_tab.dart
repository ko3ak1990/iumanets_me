import 'package:flutter/material.dart';
import 'package:iumanets_me/config/assets.dart';
import 'package:iumanets_me/config/constants.dart';
import 'package:url_launcher/link.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                textAlign: TextAlign.center,
                Constants.PROFILE_NAME,
                textScaler: TextScaler.linear(
                  4.0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                Constants.PROFILE_DESCRIPTION_SHORT,
                style: Theme.of(context).textTheme.bodySmall,
                textScaler: const TextScaler.linear(
                  2.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Link(
                      uri: Uri.parse(Constants.PROFILE_LINKEDIN),
                      builder: (BuildContext ctx, FollowLink? openLink) {
                        return ElevatedButton.icon(
                          icon: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset(Assets.linkedin)),
                          label: const Text('Linkedin'),
                          onPressed: openLink,
                        );
                      }),
                ],
              ),
              const Padding(padding: EdgeInsets.all(16.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Link(
                    uri: Uri.parse(Constants.PROFILE_INSTAGRAM),
                    builder: (BuildContext ctx, FollowLink? openLink) {
                      return ElevatedButton.icon(
                        icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(Assets.instagram)),
                        label: const Text('Instagram'),
                        onPressed: openLink,
                      );
                    },
                  ),
                  const Padding(padding: EdgeInsets.all(16.0)),
                  Link(
                      uri: Uri.parse(Constants.PROFILE_FACEBOOK),
                      builder: (BuildContext ctx, FollowLink? openLink) {
                        return ElevatedButton.icon(
                          icon: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset(Assets.facebook)),
                          label: const Text('Facebook'),
                          onPressed: openLink,
                        );
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
