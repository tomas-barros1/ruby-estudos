hash = {0 => 'zero', 1 => "um"}

selection_key = hash.select do |key, value|
  key > 0
end

puts selection_key