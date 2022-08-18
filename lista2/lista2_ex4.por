//Programa: Educado
programa
{
	cadeia nome, apelido, decisao
	
	funcao inicio()
	{
		escreva("Digite seu nome: ")
		leia(nome)
		limpa()
		escreva("Deseja usar um apelido no lugar de seu nome? Digite \"s\" minusculo em caso afirmativo, ou outro caractere em caso negativo\n")
		leia(decisao)
		limpa()
		se (decisao == "s")
		{
			escreva("Digite seu apelido: ")
			leia(apelido)
			limpa()
			escreva("Seja bem-vindo ", apelido, "!\n")
		}
		senao
		{
			escreva("Seja bem-vindo ", nome, "!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */