// Named Parameter
String say(String from, String Message, {String to, String appName}) {
  return from +
      " say " +
      Message +
      ((to != null) ? " to " + to : "") +
      ((appName != null) ? " via " + appName : "");
}

void main(List<String> args) {
  print(say("Jojon", "Halo Bro mau pinjam duit dong!", appName: "WhatsApp"));
  print(say("Orin", "Date yuk malam ini", appName: "Instagram"));
}
