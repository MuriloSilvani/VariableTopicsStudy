
public class TestaConversao {

	public static void main(String[] args) {
		// 
		double salario = 125.25;
		int valor = (int) salario; //casting

		System.out.println("Salario: " + salario);
		System.out.println("Valor: " + valor);
		
		// int - 32bits
		// double
		// long - int de 64bits
		// short - 16bits
		// byte - -128..127

		double valor1 = 0.2;
		double valor2 = 0.1;
		double valorTotal = valor1 + valor2;
		
		System.out.println(valorTotal);
	}
}
