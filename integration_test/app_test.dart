import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:startup_namer/main.dart' as app;
void main() {
  group('App Test', () {
    //Add Integration_Test_widget_Flutter_binding and .ensureInitialized
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('Sample App Test with intent of just tapping on screen', (tester) async {
          app.main();               //Execute app.main() function
          await tester.pumpAndSettle();   //Wait until The app has settled
          final infiniteFlow = find.byKey(Key("MainScreen_Widget_Infiniteflow"));
          await tester.tap(infiniteFlow);
          await tester.pumpAndSettle();
    });
  });
}
