class Computer {
  void startUp() => print('Computer is Starting');

  void shutdown() => print('computer is Shutting down');

  String getOperatingSystem() => 'Windows';
}

void main() {
  var computer = Computer();
  computer.startUp();
  computer.shutdown();
  print(computer.getOperatingSystem());
}
