class Items {

  String? itemname;
  int quantity;
  int Price;

  Items({
    required this.itemname,
    required this.quantity,
    required this.Price,
  });

  static int AllTotal = 0;
  static int Total = 0;

  int get total => quantity! * Price!;
}

