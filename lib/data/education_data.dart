import 'package:flutter_demo/model/Education.dart';

final allEducations = <Education>[
  Education(
      ID: 1,
      school: "國立高雄大學",
      logo: "NUK",
      faculty: "管理學院",
      duration: "2017/09-2022/10",
      experience: [
        "系排名(7/42)",
        "MealForU—創意激發競賽入圍、專題競賽佳作",
        "多種後端程式語言專案，如：Python、Java等。負責後端編寫",
        "金融科技競賽，Python結合行為財務學實證學術假說",
        "多元學習：跨系選修，日本松山大學移地教學",
        "基礎前端設計",
        "從系統分析、設計到實作，完整的開發經驗",
      ],
      review: "相較於管理課程，更享受從零到有以程式將概念實現的過程。豐富的專案經驗，具有一定的團隊溝通能力。"),
  Education(
      ID: 2,
      school: "斯洛伐克日利那大學",
      logo: "UNIZA_FRI",
      faculty: "資訊科學管理學院",
      duration: "2021/09-2022/08",
      experience: [
        "資料庫學術模擬研究",
        "SmartSoc商業企劃專案——數位政府",
        "Software engineering專案，應用程式分析、設計",
        "培養出縝密的思維",
        "隻身在外，自行解決問題能力大幅提升"
      ],
      review: "取得教育部學海飛颺補助前往斯洛伐克交換，體驗不同的學習及生活環境。")
];
