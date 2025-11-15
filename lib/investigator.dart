import 'dart:developer';

class InvestigatorHelper {
  static List<Investigator>? investigators = [];
  static Map<String, Investigator> investigatorMap = {};

  //const InvestigatorHelper(List<Investigator>? investigators) : investigators = investigators ?? const [];
  //const InvestigatorHelper() : investigators = const [];
  const InvestigatorHelper();

  void populateInvestigators() {
    Investigator agnes = Investigator("Agnes Baker", 3, 6, 6, 6, 6);
    Investigator calvin = Investigator("Calvin Wright", 0, 6, 6, 6, 6);
    Investigator daniela = Investigator("Daniela Reyes", 3, 7, 7, 5, 5);
    Investigator dexter = Investigator("Dexter Drake", 2, 5, 5, 7, 7);
    Investigator jenny = Investigator("Jenny Barnes", 5, 7, 7, 5, 5);
    Investigator marie = Investigator("Marie Lambeau", 0, 5, 5, 7, 7);
    Investigator michael = Investigator("Michael McGlen", 3, 8, 8, 4, 4);
    Investigator minh = Investigator("Minh Thi Phan", 0, 6, 6, 6, 6);
    Investigator norman = Investigator("Norman Withers", 1, 5, 5, 7, 7);
    Investigator rex = Investigator("Rex Murphy", 3, 7, 7, 7, 7);
    Investigator tommy = Investigator("Tommy Muldoon", 0, 7, 7, 5, 5);
    Investigator wendy = Investigator("Wendy Adams", 1, 5, 5, 7, 7);

    investigatorMap["agnes"]=agnes;
    investigatorMap["calvin"]=calvin;
    investigatorMap["daniela"]=daniela;
    investigatorMap["dexter"]=dexter;
    investigatorMap["jenny"]=jenny;
    investigatorMap["marie"]=marie;
    investigatorMap["michael"]=michael;
    investigatorMap["minh"]=minh;
    investigatorMap["norman"]=norman;
    investigatorMap["rex"]=rex;
    investigatorMap["tommy"]=tommy;
    investigatorMap["wendy"]=wendy;

    log("${investigatorMap.length.toString()} investigators added to the roster");
    
  }

  void changeHealth(String name, int value){
    investigatorMap[name]?.adjustHealth(value);
  }

  void printInvestigators() {
    //log(investigator_map["minh"]!.name);
    //print(investigator_map["minh"]!.name);
    int counter = 1;
    for (var i in investigatorMap.values) {
      log("Investigator: $counter\nName: ${i.name}\nMoney: ${i.money}\nHealth: ${i.currentHP}/${i.maxHP}\nSanity: ${i.currentSanity}/${i.maxSanity}");
      //log("Name: ${i.name}");
      //log("Money: ${i.money}");
      //log("Health: ${i.currentHP}/${i.maxHP}");
      //log("Sanity: ${i.currentSanity}/${i.maxSanity}");
      log("|========================|\n");
      counter++;
    }
  }
}

class Investigator {
  String name;
  int maxHP;
  int maxSanity;
  int currentHP;
  int currentSanity;
  int money;

  void adjustHealth(int value){
    if (currentHP + value > maxHP){
      currentHP = maxHP;
    } else if (currentHP + value < 0){
      currentHP = 0;
    } else {
      currentHP += value;
    }

    if (value > 0){
      log("$name recovered $value health");
    } else if (value < 0){
      log("$name suffered $value damage to health");
    }

    currentHP += value;
    
  }

  Investigator(
    this.name,
    this.money,
    this.maxHP,
    this.currentHP,
    this.maxSanity,
    this.currentSanity,
  );
}

class Example {
  final List<String> myFirstList;
  final List<String> mySecondList;

  const Example({List<String>? myFirstList, List<String>? mySecondList})
    : myFirstList = myFirstList ?? const [],
      mySecondList = mySecondList ?? const [];
}
