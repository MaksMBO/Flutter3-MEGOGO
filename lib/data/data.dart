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
      'img': 'assets/img/duna.jpg',
      'title': 'Дюна',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'img': 'assets/img/1984.jpg',
      'title': '1984',
      'secondSubTitle': 'ПОКУПКА',
      'color': Color(0xFF00B2B2),
    },
    {
      'img': 'assets/img/tigrolovy.jpg',
      'title': 'Тигролови',
      'secondSubTitle': 'БЕЗКОШТОВНО',
      'color': Color(0xFF979797),
    },
    {
      'img': 'assets/img/neverStop.jpg',
      'title': 'Never Stop',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
  ],
  'films': [
    {
      'img': 'assets/img/OPENGAMER.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'img': 'assets/img/duna.jpg',
      'secondSubTitle': 'ПОКУПКА',
      'color': Color(0xFF00B2B2),
    },
    {
      'img': 'assets/img/gentlemen.jpg',
      'secondSubTitle': 'БЕЗКОШТОВНО',
      'color': Color(0xFF979797),
    },
    {
      'img': 'assets/img/johnWick.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'img': 'assets/img/deadpool.png',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'img': 'assets/img/soprano.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
    {
      'img': 'assets/img/barbie.jpg',
      'secondSubTitle': 'МАКСИМАЛЬНА',
      'color': Colors.deepOrangeAccent,
    },
  ]
};

final List<Json> cardDataList = [
  {
    'img': 'assets/img/chanelTv.jpg',
    'title': "ТЕЛЕКАНАЛИ",
    'increaseBy': 2.0,
  },
  {
    'img': 'assets/img/got.jpg',
    'title': "СЕРІАЛИ",
  },
  {
    'img': 'assets/img/1984.jpg',
    'title': "АУДІО",
  },
  {
    'img': 'assets/img/discovery.png',
    'title': "DISCOVERY+",
  },
  {
    'img': 'assets/img/films.jpg',
    'title': "ФІЛЬМИ",
  },
  {
    'img': 'assets/img/cat.jpg',
    'title': "МУЛЬТФІЛЬМИ",
  },
  {
    'img': 'assets/img/show.jpg',
    'title': "ШОУ",
  },
  {
    'img': 'assets/img/sport.jpg',
    'title': "СПОРТ",
  },
  {
    'img': 'assets/img/educate.jpg',
    'title': "ОСВІТА",
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
