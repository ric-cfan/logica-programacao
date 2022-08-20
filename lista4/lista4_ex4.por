programa
{
	inteiro numero, numeroInputs = 0, intervaloUm = 0, intervaloDois = 0, intervaloTres = 0, intervaloQuatro = 0
	
	funcao inicio()
	{
		escreva("Serão aceitos apenas números de 0 a 100 a lista. Ao selecionar um número negativo os resultados serão exibidos.\n\nDigite o ", (numeroInputs + 1), "º número: ")
		leia(numero)
		limpa()

		numeroInputs++
		
		se(numero < 0) {
			limpa()
			escreva("Foram digitados ", (numeroInputs - 1)," numero(s), dentre ele(s):\n\n", intervaloUm, " número(s) no intervalo de [0-25]\n", intervaloDois, " número(s) no intervalo de [26-50]\n", intervaloTres, " número(s) no intervalo [51-75]\n", intervaloQuatro, " número(s) no intervalo [76-100]\n")
		}
		senao se(numero < 26) {
			intervaloUm++
			inicio()
		}
		senao se(numero < 51) {
			intervaloDois++
			inicio()
		}
		senao se(numero < 76) {
			intervaloTres++
			inicio()
		}
		senao se(numero < 101) {
			intervaloQuatro++
			inicio()
		}
		senao se(numero > 100) {
			escreva(numero, " é maior que 100, logo não será contado nos resultados.\n\n")
			numeroInputs--
			inicio()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */