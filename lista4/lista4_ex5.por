programa
{
	inteiro contadorPositivo = 0, contadorNegativo = 0, contadorGeral = 0
	real numero, mediaPar = 0.0, mediaGeral = 0.0
	
	funcao inicio()
	{
		limpa()
		escreva("Esse programa utiliza números maiores ou menores que zero (0), ao colocar zero, o programa irá exibir os resultados.\n\nDigite o ", (contadorGeral + 1), "º número: ")
		leia(numero)
		mediaGeral += numero
		
		se(numero > 0) {
			contadorPositivo++
			mediaPar += numero
			contadorGeral = contadorPositivo + contadorNegativo
			inicio()
		}
		senao se(numero < 0) {
			contadorNegativo++
			contadorGeral = contadorPositivo + contadorNegativo
			inicio()
		}
		senao se(numero == 0) {
			mediaPar = (mediaPar / contadorPositivo)
			mediaGeral = (mediaGeral / contadorGeral)
			limpa()
			escreva("\nA quantidade de numeros pares digitados é: ", contadorPositivo, "\nA quantidade de numeros impares digitados é: ", contadorNegativo, "\nA média dos valores pares é: ", mediaPar, "\nA média dos valores gerais é: ", mediaGeral, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 776; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */