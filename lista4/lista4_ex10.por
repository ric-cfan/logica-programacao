//Programa realiza calculo atorial
programa {
	inteiro valorDigitado, fatorial, i = 0
	logico loop = verdadeiro
	
	funcao inicio() {
		enquanto(loop) {
			escreva("Digite o número o qual você deseja realizar o cálculo fatorial:\n> ")
			leia(valorDigitado)
			se(valorDigitado < 0) {
				limpa()
				escreva("Números negativos não são aceitos, por favor tente novamente com um número maior ou igual a zero.\n\n")
			}
			senao {
				loop = falso
			}
		}
		limpa()
		escreva(valorDigitado,"! = ", valorDigitado)
		fatorial = valorDigitado
		fatorando()
	}

	funcao fatorando() {
		se(valorDigitado > 1) {
			valorDigitado--
			fatorial = (fatorial * valorDigitado)
			escreva(" x ", valorDigitado)
			fatorando()
		}
		senao 
		escreva(" = ", fatorial)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */