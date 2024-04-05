import 'package:collection/collection.dart';
import 'package:demoapp/models/Cartitem.dart';
import 'package:demoapp/models/food.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class Resturant extends ChangeNotifier {
  //list of menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.burgers),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.burgers),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.burgers),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.burgers),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.burgers),

    //salads
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/salads/transparent-salad-vegan-restaurant-in-london-vantra-loungevity5da70c6e96e255.201838421571228782618.jpg",
        price: 60.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.salads),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.salads),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.salads),

    //sides
    Food(
        name: "Caesar Salad Starters",
        description: "An Yummy Classic Burger",
        imagePath: "lib/images/sides/Homemade-Caesar-Salad-Dressing.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.sides),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.sides),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.sides),

    //desserts
    Food(
        name: "Filipino Dessert",
        description: "An Yummy Filipino Dessert",
        imagePath: "lib/images/desserts/download.jpg",
        price: 80.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.desserts),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.desserts),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.desserts),

    //drinks
    Food(
        name: "Dulce De Leche",
        description: "An Yummy Dulce De Leche",
        imagePath: "lib/images/drinks/IMG_5282_-769x1024-1.jpg",
        price: 110.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.drinks),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.drinks),
    Food(
        name: "Classic Burger",
        description: "An Yummy Classic Burger",
        imagePath:
            "lib/images/burgers/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
        price: 75.00,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 20),
          Addon(name: "Bacon", price: 35),
          Addon(name: "Avocado", price: 50)
        ],
        caterory: FoodCaterory.drinks),
  ];

  //user cart
  final List<CartItem> _cart = [];

  //delivery address
  String _deliiveryaddress = '678621,Palakkad Kerala';

  //getters

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryaddress => _deliiveryaddress;

  //operation ///

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see there is a cart item already with same food and add ons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check is food items are same
      bool isSameFood = item.food == food;

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item exist increse its quantity

    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise, new cart item
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  //remove cart
  void removeFromCart(CartItem cartItem) {
    // int cartIndex = _cart.indexWhere((item) =>
    //     item.food == cartItem.food &&
    //     const ListEquality()
    //         .equals(item.selectedAddons, cartItem.selectedAddons));
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
  //get total no of item cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newaddress) {
    _deliiveryaddress = newaddress;
    notifyListeners();
  }

  //helpers

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's Your receipt");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("--------");

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons:  ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln(" -------");
    receipt.writeln("");
    receipt.writeln(" Total Items: ${getTotalItemCount()}");
    receipt.writeln(" Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

//format

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format add on
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
