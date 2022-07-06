#Ok Passou
def is_pangram(str)

  letras_alfa = ('a'..'z').to_a  #criar array de 'a' a  'z'
  str.downcase.split('').each do |i| #por todas letras minusculas.
    letras_alfa.delete(i) if letras_alfa.include?(i)
  end

  if letras_alfa.empty?
    puts 'Esta string é um pangram'
  else
    puts 'Esta string não é um pangram'
  end

  puts letras_alfa.length
  puts letras_alfa
end

# str = 'The quick brown fox jumps over the lazy dog'
str = 'A rápida raposa marrom pula sobre o cachorro preguiçoso'

is_pangram(str)
