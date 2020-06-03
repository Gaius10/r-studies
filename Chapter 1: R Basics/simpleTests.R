
# Vetor de testes
a <- c(0, 1, 2, -4, 5)
x = 50

# Expressões condicionais
# if (a > 0) {
#     # result = 1 / a
#     print(1 / a)
# } else {
#     # result = 'Invalido'
#     print('Invalido')
# }

# Operação ternária
ifelse(a > 0, 1 / a, 'Invalido')

# Definindo funções
media = function(x) {
    sum(x) / length(x)
}

percentual = function(x, total = 100) {
    x / total
}

# For loops
# for(i in a) {
#     print(i)
# }

# Exemplo no livro-texto https://rafalab.github.io/dsbook/programming-basics.html
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}

m <- 25
s_n <- vector(length = m) # create an empty vector
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}

n <- 1:m
plot(n, s_n)
print(s_n)


# Vetorização com a função sapply
s_n = sapply(n, compute_s_n)
print(s_n)

# Saída dos testes
print(media(a))
print(x)