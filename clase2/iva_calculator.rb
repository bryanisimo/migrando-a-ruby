puts 'Ingresa la cantidad para calcularle el IVA'
subtotal = gets().chomp.to_f
iva = 0.16
if subtotal < 0
    subtotal = 0
end
tax = subtotal * iva
total = tax + subtotal
puts "El IVA (#{iva * 100}%) para $#{subtotal} es $#{tax}, el total con IVA es $#{total}"
