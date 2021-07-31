import 'dart:math';

void main(List<String> arguments) {
  var max = 26;
  var random = Random();
  var time = <String>['minutes', 'hours'];
  var text = <String>[
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  for (var i = 0; i < max; i++) {
    print('new Article(\n'
        'text: \'${returnString(text[i], 100)}\',\n'
        'domain: \'github.com/areee\',\n'
        'by: \'areee\',\n'
        'age: \'${random.nextInt(max)} ${time[random.nextInt(time.length)]}\',\n'
        'score: ${random.nextInt(max * 100)},\n'
        'commentsCount: ${random.nextInt(max * 10)},\n'
        '),');
  }
}

String returnString(String text, int amount) {
  var random = Random();
  return text * random.nextInt(amount);
}
