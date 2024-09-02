programa
{
	
	funcao inicio()
	{
      inteiro menu
      real saldo, saque, deposito
      cadeia extrato = ""
      cadeia controle

      menu = 0
      saldo = 0
      
      enquanto(menu != 4){
        escreva("|-----MENU-----|\n\n")
        escreva("|Saldo em R$: ", saldo , "\n")
        escreva("|1 - Saque\n")
        escreva("|2 - Deposito\n")
        escreva("|3 - Extrato\n")
        escreva("|4 - Sair\n")
        escreva("|Digite um número: ")
        leia(menu)
	   limpa()
	   escolha(menu){
	   	caso 1:
		   	escreva("Informe o valor para o saque: ")
		   	leia(saque)
		   	enquanto(saque <= 0){
		   		escreva("Valor Inválido! Digite novamente: ")
		   		leia(saque)
		   	}
		   	se(saque > saldo){
		   		escreva("Saldo Indisponível!\n")
		   	}
		   	senao{
		   		saldo = saldo - saque
                    extrato = extrato + "Saque -------------- R$" + saque + "\n"
		   		escreva("Saque realizado com sucesso!\n")
		   	}
	   	pare
	   	caso 2:
		   	escreva("Informe um valor para ser depositado: ")
		   	leia(deposito)
		   	enquanto(deposito < 0){
		   		escreva("Valor Inválido! Digite novamente: ")
		   		leia(deposito)	   		
		   	}
		   	saldo = saldo + deposito
               extrato = extrato + "Deposito -------------- R$" + deposito + "\n"
		   	escreva("Depostivo realizado com sucesso!\n")
	   	pare
	   	caso 3:
	          escreva(extrato)
	          escreva("Aperte ENTER para continuar")
	          leia(controle)
	          limpa()
	   	pare
	   }
      }
      
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
