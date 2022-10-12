require_relative 'chef'

class Amateur < Chef
  def cook_food
    puts "Amateur: Read the recipe"
    # super will call the parent class cook_food method - calling the chef to make food
    # super is a method, you can pass arguments to it, if the parent class accepts it
    super
    puts "Amateur: Clean the mess"
  end
end
