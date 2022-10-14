class QuestionModel {
  String quistion;
  String option1;
  String option2;
  String option3;
  String option4;
  int TrueAnswer = 1;
  QuestionModel({
    required this.quistion,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.TrueAnswer,
  });

  static final questions = [
    QuestionModel(
      quistion: "Hozirda apl da Qaysi jamoa birinchi o'rinda ?",
      option1: "Manchester City",
      option2: "Arsenal",
      option3: "Chelse",
      option4: "Levirpool", TrueAnswer: 2,
    ),
    QuestionModel(
      quistion: "Manchester Cityning formasi Qanaqa Rang ?",
      option1: "Yashil",
      option2: "Ko'k",
      option3: "Qizil",
      option4: "Sariq", TrueAnswer: 2,
    ),
    QuestionModel(
      quistion: "Ranolda kecha urgan goli bilan Jami nechta gol urdi Faoliyati davomida",
      option1: "700",
      option2: "400",
      option3: "800",
      option4: "900", TrueAnswer: 1,
    ),
    QuestionModel(
      quistion: "Eldor Shomurodov qaysi Jamoada o'ynaydi ? ",
      option1: "Barselona",
      option2: "Real madrid",
      option3: "Roma",
      option4: "Bunyodkor", TrueAnswer: 3,
    ),
  ];
  static final questions1 = [
    QuestionModel(
      quistion: "Qaysi davlatdan?",
      option1: "Manchester City",
      option2: "Brazil",
      option3: "Uzbekistan",
      option4: "England", TrueAnswer: 4,
    ),
    QuestionModel(
      quistion: "Qaysi davlatdan ?",
      option1: "Misr",
      option2: "Iroq",
      option3: "Suriya",
      option4: "Eron", TrueAnswer: 1,
    ), // Misr
    QuestionModel(
      quistion: "Qaysi davlatdan ?",
      option1: "Germaniya",
      option2: "Rossiya",
      option3: "Belgiya",
      option4: "Tojikiston", TrueAnswer: 3,
    ),  // Belgiya
    QuestionModel(
      quistion: "Qaysi davlatdan ?",
      option1: "Chili",
      option2: "Ekvador",
      option3: "Ispaniya",
      option4: "Avg'oniston", TrueAnswer: 1,
    ),// Chili
  ];
  static final questions2 = [
    QuestionModel(
      quistion: "Dartda necht Typelari bor ?",
      option1: "3",
      option2: "4",
      option3: "2",
      option4: "5", TrueAnswer: 2,
    ),
    QuestionModel(
      quistion: "Pythonda print qanday yoziladi",
      option1: "print(());",
      option2: "Print();",
      option3: "print()",
      option4: "print();", TrueAnswer: 3,
    ), // Misr
    QuestionModel(
      quistion: "1++ qanday ishlaydi",
      option1: "bilmasam",
      option2: "Birinchi qo'shadi",
      option3: "Keyin qo'shadi",
      option4: "To'g'ri javob yuq", TrueAnswer: 3,
    ),  // Belgiya
    QuestionModel(
      quistion: "OOP  Konsipsiyalari nechta ?",
      option1: "1",
      option2: "10",
      option3: "3",
      option4: "4", TrueAnswer: 4,
    ),// Chili
  ];
}
