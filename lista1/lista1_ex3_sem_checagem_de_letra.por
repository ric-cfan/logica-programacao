
/* CLIQUE NO SINAL DE "+", À ESQUERDA, PARA EXIBIR A DESCRIÇÃO DO EXEMPLO
 *  
 * Copyright (C) 2014 - UNIVALI - Universidade do Vale do Itajaí
 * 
 * Este arquivo de código fonte é livre para utilização, cópia e/ou modificação
 * desde que este cabeçalho, contendo os direitos autorais e a descrição do programa, 
 * seja mantido.
 * 
 * Se tiver dificuldade em compreender este exemplo, acesse as vídeoaulas do Portugol 
 * Studio para auxiliá-lo:
 * 
 * https://www.youtube.com/watch?v=K02TnB3IGnQ&list=PLb9yvNDCid3jQAEbNoPHtPR0SWwmRSM-t
 * 
 * Descrição:
 * 
 * 	Este exemplo utiliza a entrada de dados do Portugol para obter e armazenar 
 * 	o nome do usuário em um variável. Logo após, utiliza a saída de dados para
 *   exibir o nome digitado.
 * 
 * Autores:
 * 
 * 	Giordana Maria da Costa Valle
 * 	Carlos Alexandre Krueger
 * 	
 * Data: 01/06/2013
 */
 
programa
{
	real numeroUm, numeroDois, soma, subtracao, multiplicacao, divisao
	
	funcao inicio ()
	{

		escreva("Digite o primeiro numero: ")
		leia(numeroUm)

		escreva("Digite o segundo numero: ")
		leia(numeroDois)

		limpa()

		soma = numeroUm + numeroDois
		subtracao = numeroUm - numeroDois
		multiplicacao = numeroUm * numeroDois
          divisao = numeroUm / numeroDois

		escreva("A soma dos números ", numeroUm, " e ", numeroDois," é: ", soma, ".\n")
		escreva("A subtração dos números ", numeroUm, " e ", numeroDois," é: ", subtracao, ".\n")
		escreva("A multiplicação dos números ", numeroUm, " e ", numeroDois," é: ", multiplicacao, ".\n")

		se (numeroDois == 0)
		{
			escreva("Não é possível dividir por 0")
		}
		
		senao
		{
			escreva("A divisão dos números ", numeroUm, " e ", numeroDois," é: ", divisao)
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1595; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */