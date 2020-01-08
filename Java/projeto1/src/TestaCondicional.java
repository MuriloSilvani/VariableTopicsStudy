
public class TestaCondicional {
	
	public static void main(String[] args) {
		System.out.println("sysout ctrl + space");
		
		int idade = 16;
		int quantidadePessoas = 3;
		
		if(idade >= 18) {
			System.out.println("É maior de idade!");
			System.out.println("Seja bem vindo");
		}else if(quantidadePessoas > 1){
			System.out.println("É menor mas pode entrar!");
		}else {
			System.out.println("Menor não entra sozinho!");
		}
		
		boolean testeBooleano = true;
		
		if(testeBooleano)
			System.out.println("Verdadeiro!!!");
		else
			System.out.println("Falso!!!");
		
		System.out.println("Aqui esta uma prase longa com"
				+ " quebra de linha automatica da IDE");
		
	}
}
