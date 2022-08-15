programa
{
	inteiro i = 0
	real altura = 0.0, alturaMax = 0.0, alturaMin = 0.0
	
	funcao inicio()
	{
		para(i = 0; i < 15 ; i++) {
			perguntaAltura()
			se(i == 0) {
				alturaMax = altura
				alturaMin = altura //Colocando a primeira altura digitada como Maxima e Minima
			}
		}
		escreva("A altura maior altura do grupo é: ", alturaMax, "m.\nE a menor altura do grupo é: ", alturaMin, "m;\n")
	}

	funcao perguntaAltura() {
			escreva("Utilizando ponto (.) para separar os centimetros, digite uma altura: ")
			leia(altura)
			limpa()
			se(altura < 0) {
				escreva("Não existem alturas negativas. Por favor digite novamente.\n")
				perguntaAltura()
			}
			se(altura > alturaMax) {
				alturaMax = altura
			}
			se(alturaMin > altura) {
				alturaMin = altura
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */