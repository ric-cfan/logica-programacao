programa
{
	inclua biblioteca Tipos --> tipo
	
	inteiro contadorPar = 0, contadorImpar = 0, contadorGeral = 0, numero
	real mediaPar = 0.0, mediaGeral = 0.0, numeroReal
	
	funcao inicio()
	{
		limpa()
		escreva("Esse programa utiliza números maiores que zero (0), ao colocar um número igual a zero (0), o programa irá exibir os resultados.\n\nDigite o ", (contadorGeral + 1), "º número: ")
		leia(numero)
		numeroReal = tipo.inteiro_para_real(numero)
		mediaGeral += numeroReal

		se(numero < 0) {
			limpa()
			escreva("O programa não aceita números negativos. Por favor, tente novamente.\n\n")
			inicio()
		}
		senao se(numero == 0) {
			mediaPar = (mediaPar / contadorPar)
			mediaGeral = (mediaGeral / contadorGeral)
			limpa()
			escreva("\nA quantidade de numeros pares digitados é: ", contadorPar, "\nA quantidade de numeros impares digitados é: ", contadorImpar, "\nA média dos valores pares é: ", mediaPar, "\nA média dos valores gerais é: ", mediaGeral, "\n")
		}
		senao se(numero % 2 == 0) {
			contadorPar++
			mediaPar += numeroReal
			contadorGeral = contadorPar + contadorImpar
			inicio()
		}
		senao se(numero % 2 != 0) {
			contadorImpar++
			contadorGeral = contadorPar + contadorImpar
			inicio()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 783; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */