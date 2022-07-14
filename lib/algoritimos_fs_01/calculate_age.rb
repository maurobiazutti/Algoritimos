##Ok Passou
require 'date'

data = Time.new
# data.strftime('%d-%m-%Y') # => data formatada
# puts data.to_date # => só a data
# puts "Current Time :"+ data.inspect
# puts data.year    # => Year of the date
# puts data.month   # => Month of the date (1 to 12)
# puts data.day     # => Day of the date (1 to 31 )
# puts data.wday    # => 0: Day of week: 0 is Sunday
# puts data.yday    # => 365: Day of year
# puts data.hour    # => 23: 24-hour clock
# puts data.min     # => 59
# puts data.sec     # => 59
# puts data.usec    # => 999999: microseconds
# puts data.zone

dia_atual = data.day.to_i
mes_atual = data.month.to_i
ano_atual = data.year.to_i

nas_dia = 19
nas_mes = 9
nas_ano = 1987

def cal_idade(dia_atual, mes_atual, ano_atual, nas_dia, nas_mes, nas_ano)
  meses = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if nas_dia > dia_atual
    mes_atual = mes_atual - 1
    dia_atual = dia_atual + meses[nas_mes - 1]
  end

  if nas_mes > mes_atual
    ano_atual = ano_atual - 1
    mes_atual = mes_atual + 12
  end

  calc_dia = dia_atual - nas_dia
  calc_mes = mes_atual - nas_mes
  calc_ano = ano_atual - nas_ano

  puts "Idade"
  puts "Anos- #{calc_ano}, Mes- #{calc_mes}, Dia- #{calc_dia}"
end

cal_idade(dia_atual, mes_atual, ano_atual, nas_dia, nas_mes, nas_ano)


