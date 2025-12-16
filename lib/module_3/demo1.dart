void main() {
  //typage classique
  String hello = "Hello world !";
  print(hello);

  //typage automatique
  var name = 'Michel';
  //name = 123;
  name = 'Sylvain';

  //type équivament à any
  dynamic test = 12;
  test = "kjdk";

  //constante
  const age = 18;
  // age = 456; pas possible

  //gestion du null
  String? city = null;

  print(city?.toUpperCase() ?? "Rennes");
  //print(city!.toUpperCase());





}
