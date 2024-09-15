
// imports the lucky class 
import 'package:exercise_2/lucky.dart'; 

// main function, it reads the command line arguments and prints a lucky number for each of the command arguments.
void main(List<String> arguments) {
  for (String name in arguments) {
    // create capitalized name string
    String name2 = name[0].toUpperCase() + name.substring(1);
    // create an object that has a lucky number
    Lucky lucky = Lucky();
    print('Hello $name2. Your lucky number is ${lucky.luckyNumber}.');
  }
}
