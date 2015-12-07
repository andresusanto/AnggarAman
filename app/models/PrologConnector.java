package models;

import org.jpl7.*;

import java.util.Scanner;

public class PrologConnector {

    public static void main(String[] args) {
        JPL.init();

        Scanner scanner = new Scanner(System.in);
        System.out.print("Masukkan nama barang: ");
        String item = scanner.nextLine();
        System.out.print("Masukkan nama pengguna: ");
        String user = scanner.nextLine();

        String t0 = "consult('kbs/" + item + ".pl')";
        if (Query.hasSolution(t0)) {
            Variable X = new Variable("X");
            Query q1 = new Query("kelas", new Term[]{X, new Atom(user)});
            System.out.println(q1.oneSolution().get("X"));
            Query q2 = new Query("explanation", new Term[]{X});
            Term[] terms = Util.listToTermArray(q2.oneSolution().get("X"));
            for (Term term : terms) {
                System.out.println(term.toString().replace("'", ""));
            }
        } else {
            System.out.println("An error has occurred");
        }
    }

}
