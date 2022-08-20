programa
{
	inclua biblioteca Tipos --> tipo
	
	inteiro contadorGeral = 0, contadorPositivo = 0, contadorNegativo = 0, valor
	real media = 0.0, contadorGeralReal, contadorPositivoReal, contadorNegativoReal, porcentagemPositivo = 0.0, porcentagemNegativo = 0.0
	
	funcao inicio()
	{
		limpa()
		escreva("Digite o ", (contadorGeral + 1), "º valor, ou zero (0) para exibir os resultados: ")
		leia(valor)
		
		contadorGeral++
		media += valor
		se(valor == 0) {
			contadorGeral--
			limpa()
			
			contadorGeralReal = tipo.inteiro_para_real(contadorGeral)
			contadorPositivoReal = tipo.inteiro_para_real(contadorPositivo)
			contadorNegativoReal = tipo.inteiro_para_real(contadorNegativo)
			se(contadorPositivo != 0) {
				porcentagemPositivo = (contadorPositivoReal / contadorGeralReal* 100)
			}
			se(contadorNegativo != 0) {
				porcentagemNegativo = (contadorNegativoReal / contadorGeralReal * 100)
			}
			media = (media / contadorGeralReal)

			escreva("A média dos valores digitados foi: ", media, "\nA quantidade de valores positivos digitados foi: ", contadorPositivo, "\nA quantidade de valores negativos digitados foi: ", contadorNegativo, "\nA porcentagem de valores positivos foi: ", porcentagemPositivo, "%\nA porcentagem de valores negativos foi: ", porcentagemNegativo, "%\n\n")
		}
		senao se(valor < 0) {
			contadorNegativo++
			inicio()
		}
		senao {
			contadorPositivo++
			inicio()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */