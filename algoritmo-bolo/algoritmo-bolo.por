// Este programa simula a criacao de um bolo, como se o programa estivesse seguindo a receita por si, sem input do usuario
programa
{
	inclua biblioteca Util --> util

	real xicaraAcucar = 2.0, xicaraFarinha = 3.0, xicaraLeite = 1.5, colherMargarina = 4.0, colherFermento = 1.0, espacoSuperficieForma = 0.5, forma = 0.0, recipienteMistura = 0.0
	inteiro ovo = 3, gemaOvo = 0, claraOvo = 0, recipienteClara = 0, batedeira = 0, i = 0, mistura = 0, temperaturaForno = 0, minutosForno = 0, garfoFuraBolo = 40
	// Certifique-se de que todos os ingredientes estejam separados para uso, dando um valor para cada um, espacoSuperficieForma significa o quanto sera necessario para cobrir a forma com manteiga e farinha
	
	funcao inicio()
	{
		escreva("Todos os ingredientes e utensilios em mãos, pronto para começar!\n\n")

		xicaraFarinha -= espacoSuperficieForma
		colherMargarina -= espacoSuperficieForma
		forma = (espacoSuperficieForma * 2)
		escreva("Meia colher de margarina e meia xicara de farinha foram usadas para untar e farinhar a forma.\n\n")
		// Pegue uma forma e espalhe um pouco de farinha e margarina, de forma a cobri-la totalmente

		para(i = 0; i < ovo; i++) {
			ovo--
			claraOvo++
			gemaOvo++
		}
		para(i = 0; i < claraOvo; i++) {
			claraOvo--
			recipienteClara++
		}
		escreva("Os três ovos foram quebrados e suas gemas e as claras foram levadas ao recipiente.\n\n")
		// Quebre os ovos, separe as claras das gemas, coloque as claras em um recipiente

		batedeira = recipienteClara
		recipienteClara = 0
		recipienteClara = batedeira
		batedeira = 0
		escreva("Batendo claras em neve...\n\n")
		util.aguarde(1000)
		escreva("As claras foram batidas em neve.\n\n")
		// Bata as claras em neve

		escreva("Gemas, margarina e açúcar estão sendo despejados em um recipiente e sendo misturados.\n\n")
		recipienteMistura = (gemaOvo + colherMargarina + xicaraAcucar)
		para(mistura = 0; mistura < 6; mistura++) {
			escreva("Misturando...\n\n")
			util.aguarde(500)
			recipienteMistura--
			recipienteMistura++
			se(mistura == 2) {
				escreva("Massa ficou homogênea formar uma massa homogênea.\n\n")
				// Coloque as gemas, a margarina e o acucar em outro recipiente, misturando ate obter uma massa homogenea
			}
			se(mistura > 2) {
				escreva("Acrescentando leite e farinha durante mistura...\n\n")
				recipienteMistura += (xicaraFarinha/3)
				recipienteMistura += (xicaraLeite/3)
				xicaraFarinha -= (xicaraFarinha/3)
				xicaraLeite -= (xicaraLeite/3)
				// Acrescente o leite e a farinha de trigo na massa aos poucos, sem parar de bater
			}
		}
		escreva("Leite e farinha foram adicionados na mistura enquanto a mesma era batida.\n\n")

		forma += recipienteMistura
		recipienteMistura = 0.0
		escreva("A massa foi despejada na forma untada e farinhada.\n\n")
		// Despeje a massa na forma untada e farinhada

		escreva("Pre-aquecendo forno à 180ºC...\n\n")
		util.aguarde(500)
		temperaturaForno = 180
		escreva("Forno foi Pre-aquecendo, massa foi levada ao forno.\n\n")
		enquanto(minutosForno > 40 ou minutosForno < garfoFuraBolo) {
			escreva("Esperando massa no forno...\n\n")
			util.aguarde(100)
			forma = forma
			minutosForno++
		}
		minutosForno = 0
		temperaturaForno = 0
		escreva("A massa foi levada ao forno por 40 minutos.\n\nFinalmente, o bolo está pronto!!!\n\n")
		//Ponha a forma com a massa em um forno medio 180C, preaquecido, e asse por aproximadamente 40 minutos ou ate quando ao furar o bolo com um garfo, este saia limpo.

		escreva("         ,   ,   ,  \n")
		escreva("         |   |   |  \n")
		escreva("       @@@@@@@@@@@@@ \n")
		escreva("      | '  '   '  ' |\n")
		escreva("      |@@@@@@@@@@@@@|\n")
		escreva("      | '  '   '  ' |\n")
		escreva("      |@@@@@@@@@@@@@|\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3738; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */