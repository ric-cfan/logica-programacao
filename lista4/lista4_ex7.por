//Programa que realiza tabuadas
programa
{
	inteiro n = 0, i = 0, resultado, tabuadaAte = 10
	
	funcao inicio()
	{
		escreva("Digite o número que você deseja saber a tabuada:\n> ")
		leia(n)
		
		limpa()
		escreva("A tabuada de ", n, " é:\n\n")
		para(i = -1; i < tabuadaAte; i++) {
			resultado = (n * (i + 1))
			escreva((i + 1), " x ", n, " = ", resultado)
			se(i < (tabuadaAte - 1)) {
				escreva(", \n")
			}
			senao {
				escreva(".\n\n")
			}
				
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 92; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */