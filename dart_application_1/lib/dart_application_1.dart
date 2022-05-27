class Man {
  String? name;
  int? age;
  int? numberPhone;
  String info() =>
      'Имя - $name, Возраст - $age , Номер - $numberPhone (minAge : $minAge)';
  int get minAge => 18;
  Man(this.name, this.age, this.numberPhone);

  Man.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.age = int.parse(map['age']) ;
    this.numberPhone = int.parse (map['numberPhone']);

  }
}

void main() {
  var man = Man('Roma', 18, 7546486);

  var man2 = Man.fromMap({'name': 'Bob', 'age' : '16', 'numberPhone' : '75456446' });
  print(man2.info());
  print(man.info());
}
