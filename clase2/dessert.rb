class Dessert
    attr_accessor :name, :calories
    def initialize(name, calories)
        @name = name
        @calories = calories
    end
    def delicious?
        true
    end
    def healty?
        @calories.to_f < 40
    end
end

class Cake < Dessert
    # No es necesario
    def initialize(name, calories)
        super
    end
end

class IceCream < Dessert
    def initialize(name, calories)
        super
    end
    def delicious?
        @name != 'zapote'
    end
end


dessert1 = Cake.new('Cheese cake', 150)
p dessert1.healty?
dessert2 = IceCream.new('zapote', 150)
p dessert2.delicious?
