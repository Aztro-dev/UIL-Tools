import static java.lang.System.out;

import java.io.*;
import java.math.*;
import java.util.*;

public class Template {
  public static void solve(Scanner file) throws IOException {}
  public static void main(String[] args) throws IOException {
    Scanner file = new Scanner(new File("template.dat"));
    int t = file.nextInt();
    for (int i = 1; i <= t; i++) {
      solve(file);
    }
  }
}
