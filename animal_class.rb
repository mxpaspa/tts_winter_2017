class Animal

  attr_accessor :type, :origin, :weight

  def initialize(name,type)

    @name = name
    @type = type

  end

  def introduction
    puts "#{@name} is a #{@type}"
  end
end

german_shepard = Animal.new('Moe','dog')
german_shepard.introduction
