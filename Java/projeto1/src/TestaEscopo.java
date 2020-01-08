
public class TestaEscopo {
	
	public static void main(String[] args) {
		
		int idade = 17;
		int pessoas = 3;
		
		boolean acompanhado;
		
		if(pessoas > 1) 
			acompanhado = true;			
		else
			acompanhado = false;		
				

		
		if(idade >= 18 || acompanhado) 
			System.out.println("Seja bem vindo");
		else 
			System.out.println("Menor não entra sozinho!");
		
		
		
	}
}
