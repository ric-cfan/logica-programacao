//Programa: Mais que mil
programa {
	inteiro i, j = 0, k, multiplos, checagemPrimos = 0, somaMultiplos = 0, somaPrimos = 0, resultadoFinal
	
	funcao inicio() {
		
		escreva("Os quatro primeiros multiplos de 4 acima de mil são:\n")
		
		para(i = 1; i >= 0; i++) {
			multiplos = (4 * i)
			
			se(multiplos > 1000) {
				escreva(multiplos, "\n")
				somaMultiplos += multiplos
				j++
			}
			
			se(j >= 4) {
				quebraLoop()
			}
		}

		escreva("\nOs quatro primeiros numeros primos aprtir de um são:\n")
		j = 0
		
		para(i = 1; i >= 0; i++) {
			para(k = 1; k <= i; k++) {
				se(i % k == 0) {
					checagemPrimos++
				}
			}
			se(checagemPrimos == 2) {
				escreva(i, "\n")
				somaPrimos += i
				checagemPrimos = 0
				j++
			}
			senao {
				checagemPrimos = 0
			}
			se(j >= 4) {
				quebraLoop()
			}
		}
			
		resultadoFinal = somaMultiplos - somaPrimos
		escreva("\nA soma dos multiplos de quatro maiores que mil é: ", somaMultiplos, "\nE a soma dos quatro primeiros numeros primos apartir de um é: ", somaPrimos, "\nEnquanto a subtracao de um pelo outro é: ", resultadoFinal, "\n")
	}

	funcao quebraLoop() {
		i = -2
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 866; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */