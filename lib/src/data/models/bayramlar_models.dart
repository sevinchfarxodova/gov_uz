import 'dart:core';

class BayramlarModel {
  String day;
  String month;
  String description;

  String dateTime;
  String descrHoliday;
  String imgUrl;
  String dayDesc;

  BayramlarModel({
    required this.day,
    required this.month,
    required this.description,

    required this.dateTime,
    required this.descrHoliday,
    required this.imgUrl,
    required this.dayDesc,
  });


}
List<BayramlarModel> bayramlarList = [
  BayramlarModel(
    day: '08',
    month: "MAR",
    description: 'Xalqaro xotin-qizlar kuni',
    dateTime: '2025-03-08 ',
    descrHoliday: "O'zbekistonda ushbu bayram sevgi, mehribonlik va go'zallik bayrami sifatida nishonlanadi, shuningdek, onalar kuni sifatida ham taniqlidir.",
    imgUrl: "assets/images/8mar.png",
    dayDesc: "8-mart O'zbekistonda dam olish kuni deb belgilangan.",
  ),
  BayramlarModel(
    day: '21',
    month: "MAR",
    description: 'Navro‘z umumxalq bayrami',
    dateTime: '2025-03-21 ',
    descrHoliday: "Ushbu kun kecha bilan kunduzning tenglashgan paytidir. Ushbu bayramning kirib kelishi bilan ko'pgina O'zbek oilalar Sumalak, Xalim, Ko'k somsa, Osh kabi turli milliy taomlarni tayyorlaydilar. Mazkur taomlar odamzod organizmiga foydali bo'lgan ko'p vitaminlarga boydir.",
    imgUrl: "assets/images/nav.jpg",
    dayDesc: "Navro'z qadimiy milliy bayrami 21-mart kuni nishonlanadi.",
  ),
  BayramlarModel(
    day: '22',
    month: "MAR",
    description: 'Mahalla tizimi xodimlari kuni',
    dateTime: '2025-03-22 ',
    descrHoliday: """“Mahalla tizimi xodimlari kunini belgilash toʻgʻrisida“gi Qonun Prezident tomonidan imzolangan (OʻRQ–606-son, 02.03.2020-y.).""",
    imgUrl: "assets/images/22mar.jpg",
    dayDesc: "Navro'z qadimiy milliy bayrami 21-mart kuni nishonlanadi.",
  ),
  BayramlarModel(
    day: '15',
    month: "APR",
    description: 'Madaniyat va san’at xodimlari kuni',
    dateTime: '2025-04-15 ',
descrHoliday: """O‘zbekiston Respublikasi Prezidenti 2021-yil 7-iyun kuni «O‘zbekiston Respublikasi madaniyat va san'at xodimlari kunini belgilash to‘g‘risida"gi qonunni imzoladi.""",
    imgUrl: "assets/images/aprel.jpg",
    dayDesc: "Qonun bilan 15-aprel – O‘zbekiston Respublikasi madaniyat va san'at xodimlari kuni sifatida belgilandi..",
  ),
  BayramlarModel(
    day: '07',
    month: "MAY",
    description: 'Aloqachilar kasb bayrami kuni',
    dateTime: '2025-05-07 ',
    descrHoliday: """Aloqachilar kasb bayramini nishonlash uchun ushbu sana bejiz tanlanmagan. Ma’lumki, 1895-yil 7-may kuni Aleksandr Popov birinchi radiopriyomnikni loyihalashtirdi va simsiz aloqa asosida birinchi seansni amalga oshirdi. Ushbu sana yillar davomida aloqachilar kasb bayramini nishonlanishiga asos bo‘ldi. Aynan shu kun aloqachilar kuni deb e’lon qilindi. """,
    imgUrl: "assets/images/7may.jpeg",
    dayDesc: " 7 – may kuni soha xodimlari o‘z bayramlarini nishonlaydilar.",
  ),

  BayramlarModel(
    day: '09',
    month: "MAY",
    description: 'Xotiralar kuni',
    dateTime: '2025-03-21 ',
    descrHoliday: "Ushbu kun kecha bilan kunduzning tenglashgan paytidir. Ushbu bayramning kirib kelishi bilan ko'pgina O'zbek oilalar Sumalak, Xalim, Ko'k somsa, Osh kabi turli milliy taomlarni tayyorlaydilar. Mazkur taomlar odamzod organizmiga foydali bo'lgan ko'p vitaminlarga boydir.",
    imgUrl: "assets/images/nav.jpg",
    dayDesc: "Navro'z qadimiy milliy bayrami 21-mart kuni nishonlanadi.",
  ),
];
