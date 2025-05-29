numbers = { A: 10, B: 30, C: 20, D: 25, E: 15 }

maior = numbers.max_by { |key, value| value }
puts maior
