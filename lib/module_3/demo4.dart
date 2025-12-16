Future<String> waitAndGetName() async {
  return "Michel";
}

Future<void> main() async {
  print("Hello");
  // waitAndGetName().then((name) => print(name));
  var name = await waitAndGetName();
  print(name);
  print("Bye bye");
}
