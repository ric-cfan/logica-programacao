//Programa de cupoms, cada cupom = 3 pontos
programa
{
	inteiro quantidadeCupons = -1, pontosTotais
	funcao inicio()
	{
		enquanto(quantidadeCupons < 0) {
			escreva("Digite quantos cupons você possui: ")
			leia(quantidadeCupons)
			limpa()
			pontosTotais = (quantidadeCupons * 3)
			se(quantidadeCupons < 0) {
				escreva("Não é possível ter um número negativo de cupons. \nPor favor digite um número igual ou maior a zero (0).\n\n")
			}
			senao {
				escreva("Seu saldo de pontos é: ", pontosTotais, ".\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 43; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */