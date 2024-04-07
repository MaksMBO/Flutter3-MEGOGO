import 'package:flutter/material.dart';

typedef Json = Map<String, dynamic>;

Json data = {
  'tv': [
    {
      'img': 'assets/img/csi.jpg',
      'title': 'Т/с "Csi: Місце злочину", 13 сезон, 9-11 с.',
      'firstSubTitle': 'Сьогодні, 11:00',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'img': 'assets/img/House.jpg',
      'title': 'Т/с "Доктор Хаус", 3 сезон, 12 с.',
      'firstSubTitle': 'Сьогодні, 11:00',
      'secondSubTitle': 'ПОКУПКА',
      'color': Color(0xFF00B2B2),
    },
    {
      'img': 'assets/img/griminalMinds.jpg',
      'title': 'Т/с "Мислити як вбивця"',
      'firstSubTitle': 'Сьогодні, 11:00',
      'secondSubTitle': 'БЕЗКОШТОВНО',
      'color': Color(0xFF979797),
    },
    {
      'img': 'assets/img/bbt.jpg',
      'title': 'Т/с "Теорія великого вибуху", 11 сезон, 7-9 с.',
      'firstSubTitle': 'Сьогодні, 11:00',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
  ],
  'onlyAudio': [
    {
      "id": "1",
      'img': 'assets/img/duna.jpg',
      'title': 'Дюна',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      "id": "2",
      'img': 'assets/img/1984.jpg',
      'title': '1984',
      'secondSubTitle': 'ПОКУПКА',
      'color': Color(0xFF00B2B2),
    },
    {
      "id": "3",
      'img': 'assets/img/tigrolovy.jpg',
      'title': 'Тигролови',
      'secondSubTitle': 'БЕЗКОШТОВНО',
      'color': Color(0xFF979797),
    },
    {
      "id": "4",
      'img': 'assets/img/neverStop.jpg',
      'title': 'Never Stop',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
  ],
  'films': [
    {
      'id': 1,
      'img': 'assets/img/OPENGAMER.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'id': 2,
      'img': 'assets/img/duna.jpg',
      'secondSubTitle': 'ПОКУПКА',
      'color': Color(0xFF00B2B2),
    },
    {
      'id': 3,
      'img': 'assets/img/gentlemen.jpg',
      'secondSubTitle': 'БЕЗКОШТОВНО',
      'color': Color(0xFF979797),
    },
    {
      'id': 4,
      'img': 'assets/img/johnWick.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'id': 5,
      'img': 'assets/img/deadpool.png',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'id': 6,
      'img': 'assets/img/soprano.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'id': 7,
      'img': 'assets/img/barbie.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'id': 8,
      'img': 'assets/img/res-dogs.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'id': 9,
      'img': 'assets/img/usual.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
  ]
};

final List<Json> cardDataList = [
  {
    'img': 'assets/img/chanelTv.jpg',
    'title': "ТЕЛЕКАНАЛИ",
    'subtitle':
        "Поглиблене занурення у світ телебачення: від ексклюзивних новин до захопливих шоу.",
    'increaseBy': 2.0,
  },
  {
    'img': 'assets/img/got.jpg',
    'title': "СЕРІАЛИ",
    'subtitle':
        "Інтригуючі історії, що тримають в напрузі - від епічних фентезі до захопливих детективів."
  },
  {
    'img': 'assets/img/1984.jpg',
    'title': "АУДІО",
    'subtitle':
        "Аудіоспектаклі, подкасти та звукові книги, які переносять вас у світ фантазії та знань."
  },
  {
    'img': 'assets/img/discovery.png',
    'title': "DISCOVERY+",
    'subtitle':
        "Відкрийте для себе найновіші відеоекспедиції та дослідження на платформі Discovery+."
  },
  {
    'img': 'assets/img/films.jpg',
    'title': "ФІЛЬМИ",
    'subtitle':
        "Шедеври кінематографу в вашому кишені: від класики до найсвіжіших прем'єр."
  },
  {
    'img': 'assets/img/cat.jpg',
    'title': "МУЛЬТФІЛЬМИ",
    'subtitle':
        "Світ магії, пригод та сміху для малюків та дорослих - у кожній мультяшці."
  },
  {
    'img': 'assets/img/show.jpg',
    'title': "ШОУ",
    'subtitle':
        "Вечір сміху, емоційне занурення та несподівані враження - це все про наші розважальні шоу."
  },
  {
    'img': 'assets/img/sport.jpg',
    'title': "СПОРТ",
    'subtitle':
        "Адреналін та емоції на максимумі: від найгостріших спортивних подій до ексклюзивних інтерв'ю."
  },
  {
    'img': 'assets/img/educate.jpg',
    'title': "ОСВІТА",
    'subtitle':
        "Вивчайте, досліджуйте та розвивайтеся: найкращі освітні ресурси та контент на вашій долоні."
  },
];

final List<Json> sections = [
  {'title': 'Зараз на ТБ', 'type': 'tv', 'data': data['tv']},
  {'title': 'Що зараз шукають', 'type': 'films', 'data': data['films']},
  {'title': 'Популярне', 'type': 'films', 'data': data['films']},
  {
    'title': 'Популярні аудіокниги',
    'type': 'onlyAudio',
    'data': data['onlyAudio']
  },
  {'title': 'Серіали НБО', 'type': 'films', 'data': data['films']},
  {'title': 'Фільми на слух', 'type': 'onlyAudio', 'data': data['onlyAudio']},
];

final List<Json> items = [
  {'title': 'RM-56 [ChromeCast]'},
  {'title': 'AATTM-34 [ChromeCast]'},
  {'title': 'BT-456 [ChromeCast]'},
];

const List<Color> myColors = [Colors.white, Color(0xFF757575)];
