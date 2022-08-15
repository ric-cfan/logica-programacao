//Programa que confere o volume necessario de alcool e gel em cada garrafa
programa
{
	inclua biblioteca Matematica --> math
	
	logico funcionamento = verdadeiro
	real volumeGarrafa, volumeAlcool, volumeGel //Valores em litro(l)
	cadeia desejaContinuar = "s"
	
	funcao inicio()
	{
		enquanto(funcionamento == verdadeiro) {
			escreva("Utilizando apenas números e um ponto (.) para separar as casas decimais, digite o volume da garrafa em litros (l): ")
			leia(volumeGarrafa)
			volumeAlcool = (volumeGarrafa * 0.7)
			volumeGel = (volumeGarrafa * 0.3)

			volumeAlcool = math.arredondar(volumeAlcool, 3)
			volumeGel = math.arredondar(volumeGel, 3)
			limpa()
			
			se(volumeGarrafa <= 0) {
				escreva("Não existem garrafas com volume menor ou igual a zero (0). Por favor digite novamente.\n")
			}
			senao {
				escreva("Para uma garrafa de volume ", volumeGarrafa, "l são necessários:\n\n", volumeAlcool, "l de álcool.\n", volumeGel, "l de gel.\n\n")
				escreva("Deseja checar uma garrafa de outro volume? Digite a letra \"S\" em caso afirmativo, ou outra coisa para fechar o programa: ")
				leia(desejaContinuar)
				se((desejaContinuar == "s") ou (desejaContinuar == "S")) {
					limpa()
				}
				senao {
					escreva("\nFinalizando programa.\n\n")
					funcionamento = falso
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */