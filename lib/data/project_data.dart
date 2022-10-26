import 'package:flutter_demo/model/Project.dart';

final allProjects = <Project>[
  Project(
      ID: 1,
      name: "MealForU",
      content:
          "主要目的：解決家庭食材庫存的消耗難題\n\n應用：\n（1）根據輸入的食材，提供對應食譜供使用者選擇\n（2）透過食材比對，顯示各食譜對輸入的食材的消耗程度\n\n附加功能：\n（1）利用AutoML實現圖像辨識功能：解決使用者無法辨識食材的問題\n（2）備忘錄：記錄目前庫存或各餐預計使用食材\n（3）計時器\n\n成就：\n・入圍創意激發競賽\n・畢業專題競賽中取得佳作\n\n擔任角色：\n（1）前端基礎排版\n（2）完成後端編寫，包含資料讀寫及程式執行\n（3）領導團隊進度\n\n收穫：\n（1）學習資料爬蟲\n（2）了解FireBase資料庫\n（3）研究圖像辨識Google cloud AutoML",
      lang: ["JAVA", "Firebase"],
      time: "2020/02-2020/12"),
  Project(
      ID: 2,
      name: "資料庫學術模擬",
      content:
          "跨國學校合作專案\n使用：Oracle SQLDeveloper\n\n專案目的：以購物車為中心，建構資料庫、資料導入，消費者習慣分析、執行優化\n\n收穫：\n（1）技術方面：學習隨機產生資料、執行優化（Index、資料表分割)、密碼加密\n（2）人際方面：增強溝通能力、了解各國學生的習慣差異",
      lang: ["MYSQL"],
      time: "2022/01-2022/02"),
  Project(
      ID: 3,
      name: "Hey, It's U",
      content:
          "以自我介紹為主題，自學Flutter的應用方式。\n\n分類：\n（1）基本資料\n（2）專案經驗\n（3）工作經驗\n（4）自傳",
      lang: ["Flutter"],
      time: "2022/10")
];
