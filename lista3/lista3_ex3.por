//Programa de comandas em um restaurante self-service
programa
{
	inclua biblioteca Tipos --> tipos
	inclua biblioteca Matematica --> math
	
	const inteiro pesoPrato = 465
	inteiro pesoConsumido, pesoTotal = 0 //Peso em gramas
	real precoCemGramas, precoQuilo = 0.0, precoTotal, pesoConsumidoReal //Preco em real
	const cadeia nomeRestaurante = "Self-service"
	
	funcao inicio()
	{
		enquanto((pesoTotal < 465) ou (precoQuilo <= 0)) {
			escreva("Usando ponto \".\" para separar o real dos centavos, digite o preço do quilo de comida: R$")
			leia(precoQuilo)
			escreva("\nDigite o peso total da refeição em gramas: ")
			leia(pesoTotal)
			
			se((pesoTotal < 465) ou (precoQuilo <= 0)) {
				limpa()
				escreva("Não é possível que o prato com comida pese menos que o prato vazio, nem que o preço seja um número menor ou igual a zero (0). \nPor favor, tente novamente.\n\n")
			}
			senao {
				limpa()
				criaComanda()
			}
		}
	}
	
	funcao criaComanda() {
		precoCemGramas = (precoQuilo / 10)
		pesoConsumido = (pesoTotal - pesoPrato)
		
		pesoConsumidoReal = tipos.inteiro_para_real(pesoConsumido)	
		precoTotal = (pesoConsumidoReal * precoCemGramas / 100)
		
		precoCemGramas = math.arredondar(precoCemGramas, 2)
		precoTotal = math.arredondar(precoTotal, 2)
		
		escreva("Restaurante ", nomeRestaurante, "\n\n\n")
		escreva("Nossos pratos pesam ", pesoPrato, " g\n")
		escreva("Cobramos R$", precoCemGramas, " para cada 100g de comida\n")
		escreva("Total consumido: ", pesoConsumido, "g\n")
		escreva("Preço total: R$", precoTotal, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1437; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */