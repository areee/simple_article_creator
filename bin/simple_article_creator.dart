import 'dart:math';

void main(List<String> arguments) {
  var random = Random();
  var time = <String>['minutes', 'hours', 'days'];
  var alphabets = <String>[
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
    'z',
    'å',
    'ä',
    'ö'
  ];

  for (var i = 0; i < alphabets.length; i++) {
    print('new Article(\n'
        'text: \'${quiteRandomString(alphabets[i], alphabets.length)}\',\n'
        'domain: \'github.com/areee\',\n'
        'by: \'areee\',\n'
        'age: \'${random.nextInt(alphabets.length)} ${time[random.nextInt(time.length)]}\',\n'
        'score: ${random.nextInt(alphabets.length * 100)},\n'
        'commentsCount: ${random.nextInt(alphabets.length * 10)},\n'
        '),');
  }
}

String quiteRandomString(String alphabet, int amount) {
  var random = Random();
  var randomAmount = random.nextInt(amount);
  var returnedString = '';

  for (var i = 0; i < randomAmount; i++) {
    if (i % 5 == 0) {
      returnedString += alphabet * randomAmount + ' ';
    } else {
      returnedString += alphabet * randomAmount;
    }
  }

  return returnedString;
}
