import 'dart:io';
import 'dart:math';

class Lucky {
  // helper function
  int? readFromEnv(String name) {
    String? env = Platform.environment[name];
    if (env == null) {
      return null;
    }
    return int.tryParse(env);
  }

  // Generate a random number between min and max
  int randomNumber(int min, int max) {
    Random random = Random();
    return min + random.nextInt(max + 1 - min);

  }
  // fields
  late int luckyNumber;
  // constructor
  Lucky() {
    int max = readFromEnv('MAX') ?? 10;
    int min = readFromEnv('MIN') ?? 1;
    // Generate the random lucky number between min and max
    luckyNumber = randomNumber(min, max);
  }
}
