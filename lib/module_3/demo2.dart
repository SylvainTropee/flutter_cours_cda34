void main() {
  displayMessage("Yo !", 5);
  displayMessage2("coucou", number: 4);
  displayMessage3(number: 12, message: "Salut");
}

void displayMessage(String message, int number) {
  for (int i = 0; i < number; i++) {
    print(message);
  }
}

void displayMessage2(String message, {int number = 2}) {
  for (int i = 0; i < number; i++) {
    print(message);
  }
}

void displayMessage3({required String message, int number = 2}) {
  for (int i = 0; i < number; i++) {
    print(message);
  }
}
