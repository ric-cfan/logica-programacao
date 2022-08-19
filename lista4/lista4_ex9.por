//Programa que realiza progressao aritmetica
programa
{
	real razao, valor[11]
	inteiro quantidadeValores = 11 ,i = 0
	
	funcao inicio()
	{
		escreva("Digite o primeiro termo da P.G. ou \"A1\":\n> ")
		leia(valor[0])
		escreva("Digite a razão ou \"R\":\n> ")
		leia(razao)

		limpa()
		escreva("Os ", (quantidadeValores - 1), " valores seguintes em uma sequencia PG assumindo A1 = ", valor[0], " e R = ", razao, ", são:\n")
		para(i = 1; i < quantidadeValores; i++) {
			valor[i] = valor[(i - 1)] * razao
			escreva("A", (i + 1), " = ", valor[i])

			se(i < (quantidadeValores - 1)) {
				escreva(", \n")
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
 * @POSICAO-CURSOR = 542; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */