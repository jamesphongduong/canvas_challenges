class Vehicle
    def initialize(make,model)
    @make = make
    @model = model
    @fuel = 0
    end
    def refuel(litres)
        @fuel = @fuel + litres
    end
    def fuel_level
        puts "#{@fuel}L in the tank"
    end
end

class Car < Vehicle
    def refuel(litres)
    super
        if @fuel > 50
            @fuel = 50
        end
    end
    def wind_up_windows
        puts "windows are up"
    end
end

class Motorbike < Vehicle
    def refuel(litres)
        super
            if @fuel > 15
                @fuel = 15
            end
    end
    def wheelie 
        puts "woo!!"
    end
end

civic = Car.new('honda', 'civic')
civic.refuel(20)
civic.fuel_level
civic.refuel(20)
civic.fuel_level
civic.wind_up_windows
# civic = Car.new("Honda", "Civic")
# low_rider = Motorbike.new("Harley Davidson", "Low Rider") 