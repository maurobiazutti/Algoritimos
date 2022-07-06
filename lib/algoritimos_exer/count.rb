##Ok Passou
def count(str)
  upcase = 0
  downcase = 0
  numero = 0
  especial = 0

  str.each_char do |i|
    if i >= "A" && i <= "Z"
      upcase += 1
    elsif i >= "a" && i <= "z"
      downcase += 1
    elsif i >= "0" && i <= "9"
      numero += 1
    else
      especial += 1
    end
  end
  puts "Upecase = #{upcase}"
  puts "Downcase = #{downcase}"
  puts "Numero = #{numero}"
  puts "Especial = #{especial}"
end
str = "#GeeKs01fOr@gEEks07"
count(str)

# Saida Esperada
# Letras maiúsculas: 5
# Letras minúsculas: 8
# Número 4
# Caracteres especiais: 2

# str = "GeeKs01fOr@gEEks07"
# str.each_char do |i| puts i
# end
