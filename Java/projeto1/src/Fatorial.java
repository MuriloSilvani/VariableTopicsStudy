
public class Fatorial {
	public static void main(String[] args) {

		int fatorial = 0;
		for (int i = 0; i <= 10; i++) {

			if (i == 0)
				fatorial = 1;
			else
				fatorial *= i;

			System.out.println(i + "! = " + fatorial);
		}

//		fatorial = 1;
//		for (int i = 1; i < 11; i++) {
//			fatorial *= i;
//			System.out.println("Fatorial de " + i + " = " + fatorial);
//		}

	}
}
