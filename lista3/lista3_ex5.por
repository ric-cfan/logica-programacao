//Programa mini departamento pessoal
programa
{
	inclua biblioteca Matematica --> math
	
	real horasTrabalhadasMes = -1.0, valorRecebidoHora = -1.0, percentualDesconto = -1.0, salarioBruto, valorDesconto, salarioLiquido
	
	funcao inicio()
	{
		enquanto ((horasTrabalhadasMes < 0) ou (valorRecebidoHora < 0) ou (percentualDesconto < 0) ou (percentualDesconto > 1)) {
			escreva("Em cada um dos prompts, caso deseje usar números decimais, utilize ponto (.) ao invés de vírgula (,).\n\nDigite sua quantidade de horas trabalhadas por mês: ")
			leia(horasTrabalhadasMes)
			escreva("Digite quantos reais você ganha por hora trabalhada: ")
			leia(valorRecebidoHora)
			escreva("Utilizando o formato 0.xx (Exemplo: 0% = 0.00, 50% = 0.50 e 100% = 1.00).\nDigite o percentual de desconto do INSS: ")
			leia(percentualDesconto)
	
			salarioBruto = (horasTrabalhadasMes * valorRecebidoHora)
			valorDesconto = (salarioBruto * percentualDesconto)
			salarioLiquido = (salarioBruto - valorDesconto)
			
			salarioBruto = math.arredondar(salarioBruto, 2)
			valorDesconto = math.arredondar(valorDesconto, 2)
			salarioLiquido = math.arredondar(salarioLiquido, 2)
			
			limpa()

			se ((horasTrabalhadasMes < 0) ou (valorRecebidoHora < 0) ou (percentualDesconto < 0) ou (percentualDesconto > 1)) {
				escreva("Não são aceitos números negativos, e no caso do desconto, não são aceitos também valores acima de um (1).\nPor favor, tente novamente.\n\n")
			}
			senao {
				escreva("Seu salário bruto é: R$ ", salarioBruto, "\nO valor do desconto para o INSS é: R$", valorDesconto, "\nO seu salário líquido é: R$", salarioLiquido, "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 315; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */