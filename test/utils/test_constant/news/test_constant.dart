import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';

class NewsTestConstant {
  static const tNewsModel = NewsModel(
    page: "1",
    source: [
      "bbc",
      "cnn",
    ],
    total: 1,
    data: [
      tNewsItemModel,
    ],
  );

  static const tNewsModelWithNull = NewsModel(
    page: null,
    source: null,
    total: null,
    data: null,
  );

  static const tNewsItemModel = NewsItemModel(
    title: "म्यानमारमा सैनिक ‘कू’, एक वर्ष संकटकाल घोषणा",
    link: "https://www.onlinekhabar.com/2021/02/928042",
    category: "अन्तराष्ट्रिय समाचार",
    publishedDate: "Mon, 01 Feb 2021 03:32:53",
    guid: "https://www.onlinekhabar.com/?p=928042",
    image:
        "https://www.onlinekhabar.com/wp-content/uploads/2021/02/Aang-Sang-Suki.jpg",
    description:
        "१९ माघ, काठमाडौं । म्यानमारमा सैनिक ‘कू’ भएको छ । त्यहाँको सेनाले सत्ता हातमा लिँदै एक वर्ष संकटकाल लगाएको घोषणा गरेको छ । राष्ट्रपति विन मिन्ट, स्टेट काउन्सिलर आङ सान सुकी र सुकीको पार्टी  नेशनल लिग फर डेमोक्रेसीका बरिष्ठ नेताहरुलाई हिरासतमा लिँदै सेनाले सत्ता कब्जा गरेको हो । सैनिक टेलिभिजनमा प्रसारित एक सन्देशमा भनिएको छ",
    source: "onlinekhabar",
  );

  static const tNewsItemModelWithNull = NewsItemModel(
    title: null,
    link: null,
    category: null,
    publishedDate: null,
    guid: null,
    image: null,
    description: null,
    source: null,
  );
}
