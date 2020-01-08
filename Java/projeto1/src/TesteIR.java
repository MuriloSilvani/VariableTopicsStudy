
public class TesteIR {
	public static void main(String[] args) {

		double salario = 3300.0;

		if (salario >= 1900.0 && salario <= 2800.0) {
			System.out.println("A sua aliquota é de 7%");
			System.out.println("Você pode deduzir até R$ 142");
		} else if (salario >= 2800.01 && salario <= 3751.0) {
			System.out.println("A sua aliquota é de 15%");
			System.out.println("Você pode deduzir até R$ 350");
		} else if (salario >= 3751.01 && salario <= 4664.0) {
			System.out.println("A sua aliquota é de 22.5%");
			System.out.println("Você pode deduzir até R$ 636");
		}

		// ====================
		double ir;
		double declaracao;

		if (salario > 1900 && salario < 2800) {
			ir = 7.5;
			declaracao = 142;
		} else if (salario > 2800.01 && salario < 3751) {
			ir = 15;
			declaracao = 350;
		} else if (salario > 3751.01 && salario < 4664) {
			ir = 22.5;
			declaracao = 636;
		} else {
			System.out.println("Salario fora da margem de R$ 1900..4664");
			declaracao = 0;
			ir = 0;
		}

//		if(declaracao && ir)
		System.out.println("A sua aliquota é de " + ir + "% e " + "você pode deduzir até " + declaracao);
		// ====================
	}
}
