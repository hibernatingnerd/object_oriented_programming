class Cat



  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time

    if @meal_time < 12
      @meal_updated = "#{@meal_time} PM"
    elsif @meal_time == 12
      @meal_updated = "#{@meal_time} PM"
    else
      @meal_updated = "#{@meal_time - 12} AM"
    end

  end


  def eats_at
    @meal_updated
  end

  def meow
   p "My name is #{@name} and I like to eat #{@preferred_food} at #{@meal_updated}"
 end
end


kitty = Cat.new("kitty", "tuna", 6)
kitty2 = Cat.new("Sam", "bugs", 18)

kitty.meow
kitty2.meow
