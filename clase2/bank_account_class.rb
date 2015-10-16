class Bank_Account < Array
    include Comparable

    def <=> ( compare )
        t1 = total_val( self )
        t2 = total_val( compare )
        t1 <=> t2
    end

    def total_val( array = [] )
        t = 0
        array.each do |x|
            if x.kind_of? Numeric
                t += x.to_f
            end
        end
        t
    end
end

bank1 = Bank_Account.new( [ 500, -2000, 'asdasd', 0, 8] );
bank2 = Bank_Account.new( [ 10, 10, 0, 8] );
p 'Cuenta número 1'
p bank1
p bank1.total_val( bank1 )
p 'Cuenta número 2'
p bank2
p bank2.total_val( bank2 )
comparision = bank1 <=> bank2
if comparision < 0
    puts "La primera cuenta es la mayor"
elsif comparision > 0
    puts "La segunda cuenta es la mayor"
else
    puts "Las cuentas son iguales"
end
puts comparision
