void main() {
  var gifts = {
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,  
  'nama': 'Ivan',
  'nim': 2341720126,
  };

  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  'nama' : 'Ivan',
  'nim' : 2341720126,
  };

  print(gifts);
  print(nobleGases);


  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Ivan';
  gifts['nim'] = '2341720126';

  var mhs2 = <String, String>{};
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases['nama'] = 'Ivan';
  nobleGases['nim'] = '2341720126';

  print(mhs1);
  print(mhs2);
}