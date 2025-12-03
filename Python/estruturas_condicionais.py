# saldo = 2604
# saque = float(input('Informe o valor do saque: '))

# if saldo >= saque:
#     print('realizando sauqe')
# else:
#     print('Saldo insuficiente! 😥')
    
opcao = int(input('Informe un opção: [1] sacar \n[2] Extraer: '))
if opcao == 1:
    valor = float(input('informe la quantia para saque: '))
elif opcao == 2:
    print('exibiendo o extrato: ')
else:
    Sys.exit('Opçao invalida')
    
    