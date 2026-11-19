class BusCard {
  String _owner = '';
  int _balance = 0;

  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  String get owner {
    return _owner;
  }

  // TODO 1: getter for balance
  int get balance {
    return _balance;
  }

  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
    return;
  }

  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
    return;
  }

  // TODO 2: top up
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
    return;
  }

  // TODO 3: pay bus fare
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
    return;
  }
}

class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
    return;
  }

  // TODO 4: override pay
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
    return;
  }
}

void main() {
  // My numbers: D = 02, L = 2
  // Starting balance = 1020 RWF, Bus fare = 202 RWF, Discount = 12%

  BusCard card = BusCard('Tumusifu Ombe Christophe', 1020);
  card.owner = 'Al';
  card.showInfo();

  // TODO 5
  card.owner = 'Tumusifu Ombe Christophe';
  card.showInfo();

  // TODO 6
  card.topUp(100);
  card.topUp(2000);

  // TODO 7
  card.pay(202);
  card.pay(202);
  card.showInfo();

  // TODO 8
  StudentCard studentCard = StudentCard(
    'Tumusifu Ombe Christophe',
    1020,
    12,
  );

  // TODO 9
  studentCard.pay(202);
  studentCard.showInfo();
  return;
}
