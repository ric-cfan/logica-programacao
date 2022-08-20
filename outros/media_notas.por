//Nao sei bem da onde surgiu isso, acho que era um exercicio de aula que salvei por cima de um da lista, pra nao perder salvei no outros
programa
{
	inclua biblioteca Matematica --> math

	inteiro numeroNotas = 0
	real soma = 0.0, media, nota
	caracter continuar
	
	funcao inicio()
	{
		limpa()
		escreva("Digite uma nota do aluno ", (numeroNotas + 1), ": ")
		leia(nota)
		
		numeroNotas++
		soma += nota
		
		escreva("\nDeseja adicionar outra nota? Digite \"s\" ou \"S\" em caso afirmativo, ou outro caractere caso negativo: ")
		leia(continuar)
		
		se (continuar == 's' ou continuar == 'S') {
			inicio()
		}	
		senao {
			limpa()
			media = (soma / numeroNotas)
			media = math.arredondar(media, 2)	
			se(numeroNotas == 1) {
				escreva("A média de ", numeroNotas, " única nota é ela mesma: ", media, ".\n")
			}
			senao {
				escreva("A média das ", numeroNotas, " notas é: ", media, ".\n")
			}
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 136; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */