import 'dart:html';

import 'package:googleapis/oauth2/v2.dart';
import 'package:googleapis_auth/auth_browser.dart';
import 'package:test_integration/shared.dart';

import 'web_shared.dart';

late final BrowserOAuth2Flow _flow;

final _textArea = querySelector('textarea') as TextAreaElement;

Future<void> main() async {
  _flow = await createImplicitBrowserFlow(
    clientId(),
    [Oauth2Api.userinfoProfileScope],
  );

  (querySelector('#hybrid_flow') as ButtonElement)
      .onClick
      .listen((_) => _hybridFlow());

  (querySelector('#login') as ButtonElement).onClick.listen((_) => _login());
}

Future<void> _hybridFlow() async {
  final creds = await _flow.runHybridFlow();

  _log([
    'cred json',
    prettyJsonEncode(creds.credentials),
    '',
    'auth code',
    creds.authorizationCode,
  ].join('\n'));
}

Future<void> _login() async {
  final creds = await _flow.obtainAccessCredentialsViaUserConsent(
    responseTypes: [
      ResponseType.code,
      ResponseType.idToken,
      ResponseType.permission
    ],
  );

  _log([
    'cred json',
    prettyJsonEncode(creds),
  ].join('\n'));
}

void _log(String value) {
  _textArea.text = value;
}
