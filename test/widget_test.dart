import 'package:flutter_test/flutter_test.dart';
import 'package:easylab_client/main.dart';

void main() {
  testWidgets('app mounts', (WidgetTester tester) async {
    await tester.pumpWidget(const EasyLabApp());
    expect(find.byType(EasyLabApp), findsOneWidget);
  });
}