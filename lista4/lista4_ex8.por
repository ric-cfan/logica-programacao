//Programa que realiza progressao aritmetica
programa
{
	real valorInicial, razao, valorResultante
	inteiro i = 0, quantidadeValores = 11
	
	funcao inicio()
	{
		escreva("Digite o primeiro termo da P.A. ou \"A1\":\n> ")
		leia(valorInicial)
		escreva("Digite a razão ou \"R\":\n> ")
		leia(razao)

		limpa()
		escreva("Os ", (quantidadeValores - 1), " valores seguintes em uma sequencia PA assumindo A1 = ", valorInicial, " e R = ", razao, ", são:\n")
		para(i = 2; i <= quantidadeValores; i++) {
			valorResultante = valorInicial + (i - 1) * razao
			escreva("A", i, " = ", valorResultante)
			se(i < quantidadeValores) {
				escreva(", ")
			}
			senao {
				escreva(".\n")
			}
				
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 599; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */