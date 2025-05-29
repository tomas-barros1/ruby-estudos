# Define a lambda que capitaliza e imprime o nome
capitalize_lambda = ->(name) { puts name.capitalize }

# Define o método que recebe a lambda como argumento
def capitalize_name(lambda_function)
  lambda_function.call("joão")
  lambda_function.call("maria")
end

# Chama o método passando a lambda
capitalize_name(capitalize_lambda)