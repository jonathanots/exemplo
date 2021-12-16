import 'package:puppeteer/puppeteer.dart';

import '../../../classes/activity.dart';

class PackageItemListElement extends Activity {
  final String tag = 'HomeInputPackageElement';

  final Page page;

  PackageItemListElement(this.page);

  @override
  void initState() async {
    print('$tag Started');
    super.initState();
  }

  @override
  void build() async {
    print('$tag Building');

    await page.click("""() => document.querySelector('a[href="/packages/puppeteer"]')""");

    await Future.delayed(Duration(seconds: 5));

    print("Clicked");

    super.build();
  }
}
