# nome = 'BarceCeNas'


# print(nome.upper()) # todo Maijusculo
# print(nome.lower()) # todo minusculo
# print(nome.title()) # só primeira letra Maijusculo
# # print(nome.upper())
# # print(nome.upper())
# # print(nome.upper())

# texto =  ' Òla Mundo    '
# print(texto)

# print(texto.strip() + '.')
# print(texto.lstrip() + '.')
# print(texto.rstrip() + '.')

# menu = 'Python'
# print('####' + menu + '####')
# print(menu.center(14))
# print(menu.center(14, '#'))
# print('P-Y-T-H-O-N')
# print('-'.join(menu))



nome =  'Manuel'
idade = 30
professao = 'programador'
lenguagem = 'Python'

print('Òla me chamo %s. Eu tenho %d anos de idade, trabalho como %s e edtou matriculado no curso de %s.' 
    % (nome, idade, professao, lenguagem))


# metodo forma

print('Òla me chamo {}. Eu tenho {} anos de idade, trabalho como {} e edtou matriculado no curso de {}'.format(nome, idade, professao, lenguagem))

#Exemplo como a posição importa ele vai imprimir o resultado passado.
print('Òla me chamo {3}. Eu tenho {2} anos de idade, trabalho como {0} e edtou matriculado no curso de {1}'.format(nome, idade, professao, lenguagem))

# formato correto
print('Òla me chamo {0}. Eu tenho {1} anos de idade, trabalho como {2} e edtou matriculado no curso de {3}'.format(nome, idade, professao, lenguagem))

# outro metodo

print('Òla me chamo {nome}. Eu tenho {idade} anos de idade, trabalho como {professao} e edtou matriculado no curso de {lenguagem}'.format(nome=nome, idade=idade, professao=professao, lenguagem=lenguagem))

# outro metodo

pessoa = { 
    'nome': 'John', 
    'idade': '30', 
    'professao': 'programador', 
    'linguagem': 'Python' 
}

print('Òla me chamo {nome}. Eu tenho {idade} anos de idade, trabalho como {professao} e edtou matriculado no curso de {linguagem}'.format(**pessoa))

# outro metodo

pessoa = { 
    'nome': 'John', 
    'idade': '30', 
    'professao': 'programador', 
    'linguagem': 'Python' 
}
print(f'Òla me chamo {nome}. Eu tenho {idade} anos de idade, trabalho como {professao} e edtou matriculado no curso de {lenguagem}.')


pi = 3.14159

print(f'vaLOR DE pi: {pi:.2F}')
print(f'vaLOR DE pi: {pi:.10F}')
print(f'vaLOR DE pi: {pi:10.2F}')