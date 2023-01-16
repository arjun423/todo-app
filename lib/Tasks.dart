class Task {
  String name;
  bool isc = false;
  Task(this.name, this.isc);
  void chng() {
    isc = !isc;
  }
}
