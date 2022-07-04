class IceCream
  # attr_reader :flavour #gives access to the @flavour variable
  # attr_writer
  #  attr_accessor :flavour 
   #(lets you do both reader and writer)
# bad practice? 

  VALID_FLAVOURS = [
    "Chocolate",
    "Coconut",
    "Strawberry & Basil"
  ]

  def valid?(flavour)
    return VALID_FLAVOURS.any?(flavour)
  end

  def initialize(flavour)
    raise "Get out of it you joker" unless valid?(flavour)
    binding.irb
    @flavour = flavour
  end

  def get_flavour
    return @flavour
  end

# get input and if not right, can throw error message. Can't do that with accessor.
  def add_flavour(flavour)
    raise "Get out of it you joker" unless valid?(flavour)
    @flavour = new_flavour  
  end
end

class Cone
  def initialize
    @scoops = []
  end

  def add_scoop(scoop)
    @scoops << scoop
  end

  def get_scoops
    return @scoops

  end

end

cone = Cone.new
scoop1 = IceCream.new("Strawberry & Basil")
scoop2 = IceCream.new("Chocolate")
scoop3 = IceCream.new("Coconut")
cone.add_scoop(scoop1)
cone.add_scoop(scoop2)
cone.add_scoop(scoop3)

binding.irb