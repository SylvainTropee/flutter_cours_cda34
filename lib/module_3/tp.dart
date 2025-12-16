class Subject {

  String name;
  List<double> notes;

  Subject({required this.name, required this.notes});

  //calculer la moyenne
  double getAverage(){

    double sum = 0.0;

    for(double note in notes){
      sum += note;
    }

    double average = sum / notes.length;
    print("La moyenne en $name est de $average");
    return average;
  }
}

void main(){

  List<Subject> subjects = [
    Subject(name: "Français", notes: [10, 12.68, 15, 2]),
    Subject(name: "Maths", notes: [7, 6.5, 3, 2]),
    Subject(name: "Informatique", notes: [19, 12.45, 15.5, 2])
  ];

  //somme des moyennes globales
  double sumTotal = 0.0;

  for(Subject s in subjects){
    sumTotal += s.getAverage();
  }

  var totalAverage = sumTotal / subjects.length;
  print("La moyenne générale est de $totalAverage");
}



