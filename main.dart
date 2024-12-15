import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的自傳應用',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MenuPage(), // 將 MenuPage 設為首頁
    );
  }
}

// 功能選單頁面
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('功能選單'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          MenuButton(title: '個人資料', content: '姓名：歐卉柔\n年齡：21歲\n學歷：國立高雄科技大學 資訊工程系'),
          MenuButton(title: '自傳', content: '我是一個快樂的大學生，平常喜歡和朋友相處，但內心卻也有著一點小小的社交恐懼。或許你會覺得這樣很矛盾，但這正是我的個性。有時候我期待著週末能夠和朋友一起出去逛街、聚餐或看電影，但真正到假日那天，我又會因為一點點的懶惰而選擇待在家裡，享受自己的小世界。也許我是個容易掙扎的人，但這種生活也讓我覺得很真實。平日裡，我最享受的時光就是和朋友聚在一起，點杯飲料、聊聊生活的瑣事，沒有壓力地度過幾個小時。雖然我不算是個外向的人，但只要和熟悉的朋友在一起，我總能笑得最開心。對我來說，這樣平凡又熱鬧的日子，就是人生中最幸福的時光。未來，我也希望這份快樂能夠一直保留，讓我在忙碌的生活中，依然找到能讓自己快樂的出口。'),
          MenuButton(title: '興趣', content: '我的興趣愛好簡單而純粹，主要包括聽音樂、看電影、吃薯條和打遊戲。對我來說，音樂是生活中不可或缺的一部分，無論是放鬆心情還是面對壓力，戴上耳機聽著自己喜歡的歌曲，總能讓我找到片刻的平靜。我特別喜歡抒情和輕快節奏的歌曲，它們能讓我放鬆，也能讓我開心。看電影則是我放鬆身心的另一個方式，尤其是喜劇或奇幻類的影片，讓我沉浸在精彩的故事裡，忘卻現實生活中的煩惱。而說到吃薯條，我更是無法抗拒，特別是剛炸出來、熱騰騰又酥脆的薯條，絕對是我人生中小小的快樂來源之一。最後，我也喜歡打遊戲，特別是和朋友組隊玩遊戲的時候，大家一起合作、互相鬧著玩，這種感覺特別快樂。這些小小的興趣構成了我日常生活中的快樂來源，讓我即使在平凡的日子裡，也能找到許多值得期待的事情。'),
          MenuButton(title: '未來目標', content: '我的未來目標很簡單，就是希望能找到一份穩定的工作，過上自己想要的生活。穩定的工作能帶給我生活上的安全感，讓我不必為了生計而焦慮。除此之外，我也希望能保留一些自由，能夠做自己真正想做的事情。生活中，我喜歡探索新鮮事物，也希望未來的自己能夠有時間和機會去旅行，看看世界各地不同的風景，品嚐當地的美食，認識更多有趣的人。這種自由的生活，對我來說才是真正的幸福。雖然現在的我還在學習和成長，但我相信，只要一步一步走得穩當，總有一天我會實現自己的理想生活。我也希望自己能夠在繁忙的工作中，找到屬於自己的生活節奏，不急不躁地追尋我所嚮往的自由。人生很短，我希望未來的自己能夠活得快樂、踏實，同時保留對生活的熱愛，讓每一天都過得有意義。'),
        ],
      ),
    );
  }
}

// 功能按鈕
class MenuButton extends StatelessWidget {
  final String title;
  final String content;

  const MenuButton({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          padding: const EdgeInsets.all(16),
        ),
        onPressed: () {
          // 點擊按鈕時導航到內容頁面
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(title: title, content: content),
            ),
          );
        },
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

// 詳細內容頁面
class DetailsPage extends StatelessWidget {
  final String title;
  final String content;

  const DetailsPage({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          content,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
