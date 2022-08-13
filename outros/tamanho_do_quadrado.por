//Programa cria um quadrado com altura, largura e textura decididas pelo usuario
programa {
	inteiro i = 0, j = 0, altura = 0, largura = 0
	caracter textura
	
	funcao inicio() {
		enquanto(altura < 1 ou largura < 1) {
			escreva("Digite a altura desejada do quadrado: ")
			leia(altura)
			escreva("\n")
			escreva("Digite a largura desejada do quadrado: ")
			leia(largura)
			escreva("\n")
			escreva("Digite qual caractere deverá formar o quadrado (apenas o primeiro digitado será contado): ")
			leia(textura)
			escreva("\n")
			se((largura < 1) ou (altura < 1)) {
				limpa()
				escreva("O quadrado só pode ser criado com números inteiros maiores que zero (0). Por favor, tente novamente\n\n")
			}
		}

		se (largura > 0) {
			para(i = 1; i <= largura; i++) {
				escreva(textura, " ")
			}
		}
		para(i = 1; i <= (altura - 2); i++) { //(altura - 2) e usado pois dois espaços serao usados pelos lados de cima e baixo do quadrado
			escreva("\n", textura)
			para(j = 1; (j < (largura - 1) * 2); j++) { // -1 e usado por causa dos lados esquerdo e direto do quadrado, 1 é usado no lugar de 2, por causa da multiplicacao por 2 em seguida, que existe para ajustar o tamanho de espacos, uma vez que as linhas imprimidas em cima e baixo usam dois caracteres enquanto o "meio" imprime apenas um
				escreva(" ")	
			}
			se(largura > 1) {
				escreva(textura)
			}
		}
		escreva("\n")
		se(altura >= 2) {
			para(i = 1; i <= largura; i++) {
				escreva(textura, " ")
			}
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 57; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 3, 9, 1}-{j, 3, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */