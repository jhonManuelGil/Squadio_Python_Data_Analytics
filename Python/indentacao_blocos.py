# def sacar (self, valor: float){
    
#     if self.saldo >= valor:
#         self.saldo -= valor
# }

def sacar(valor):
    saldo = 400
    if saldo >= valor:
        print('Valor sacado: ', valor)
     

sacar(200)

def deposito(valor):
    saldo = 500
    saldo += valor
sacar(100) 