void main(List<String> args) {
  for (int counter = 9; counter >= 1; counter = counter - 2) {
    print("Hello!");
  }

  print("==========================");

  int y = 5;
  while (y > 0) {
    print("Halo ke" + y.toString());
    y--;
  }
  print("==========================");

  int x = 5;
  do {
    print("Do Do Do ke " + x.toString());
    x += 1;
  } while (x < 5);

  int z, a;
  z = 10;
  a = z++;
  print(z.toString() + " - " + a.toString());

  int c, d;
  c = 10;
  d = ++c;
  print(c.toString() + " - " + d.toString());
}
