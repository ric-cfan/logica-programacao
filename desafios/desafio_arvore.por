//Arvore
programa {
	inclua biblioteca Util --> util
	inteiro i = 0, j = 0, altura, alturaFolhagem, alturaTronco
	logico funcionando = verdadeiro
	cadeia decisao
	
	funcao inicio() {
		enquanto(funcionando == verdadeiro) {
			altura = 0
			enquanto(altura < 3) {
				escreva("Digite um número maior ou igual a 3 para a altura da árvore a ser impressa: ")
				leia(altura)
				se(altura < 3) {
					limpa()
					escreva(altura, " não é um número maior ou igual a 3. \n\nPor favor aguarde e digite outro número quando o prompt reaparecer.")
					util.aguarde(5000)
					limpa()
				}
			}
			
			alturaFolhagem = altura * 80 / 100
			alturaTronco = altura - alturaFolhagem
	
			limpa()
			escreva("Árvore de altura ", altura, ":\n\n")
			imprimeFolhagem(alturaFolhagem, 1)
			imprimeTronco()
			escreva("Deseja imprimir outra árvore? Digite \"S\" caso afirmativo, ou digite outra coisa para finalizar o programa: ")
			leia(decisao)
			se(decisao == "s" ou decisao == "S") {
				limpa()
			}
			senao {
				escreva("\nFinalizando o programa.\n")
				funcionando = falso
			}
		}
	}

	funcao imprimeFolhagem(inteiro contagemEspaco, inteiro contagemAsterisco) {
		para(i = 0; i < alturaFolhagem; i++) {
			para(j = 0; j < contagemEspaco; j++) {
				escreva(" ")
			}
			para(j = 0; j < contagemAsterisco; j++) {
				escreva("*")
			}
			contagemEspaco--
			contagemAsterisco += 2
			
			escreva("\n")
		}
	}
	
	funcao imprimeTronco() {
		inteiro contagemEspaco, contagemAsterisco

		contagemAsterisco = (1 + 2 * alturaFolhagem) * 25 / 100
		se(contagemAsterisco % 2 == 0) {
			contagemAsterisco++
		}
		contagemEspaco = ((1 + 2 * alturaFolhagem) - contagemAsterisco )/ 2
		
		para(i = 0; i < alturaTronco; i++) {
			para(j = 0; j < contagemEspaco; j++) {
				escreva(" ")
			}
			para(j = 0; j < contagemAsterisco; j++) {
				escreva("*")
			}
			escreva("\n")
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 469; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */