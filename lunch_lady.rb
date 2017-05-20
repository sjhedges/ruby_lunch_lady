require 'pry'

@total = []

@dish = [
  { dish: 'Pizza', price: 3 },
  { dish: 'Meatloaf', price: 2 },
  { dish: 'Hot dog', price: 4 }
]

@side = [
  { side: 'Parfait', price: 1 },
  { side: 'Fruit', price: 2 },
  { side: 'Carrots', price: 3 }
]

def main_dish_method
  puts """Hello! What you would like for lunch.\n ------------------"""
  @dish.each_with_index { |x, i| puts "#{i+1}. #{x[:dish]}...$#{x[:price]}" }
  @food = gets.strip.to_i - 1
  case @food
  when 0,1,2
    @total << @dish[@food]
    puts "#{@dish[@food][:dish]} was added to your cart."
    side_1_method
  else
    puts "I am sorry, that is invalid input, please try again."
    main_dish_method
  end
end

def side_1_method
  puts """Hello! What you would like for lunch.\n ------------------"""
  @side.each_with_index { |x, i| puts "#{i+1}. #{x[:side]}...$#{x[:price]}" }
  @side_1 = gets.strip.to_i - 1
  case @side_1
  when 0,1,2
    @total << @side[@side_1]
    puts "#{@side[@side_1][:side]} was added to your cart."
    side_2_method
  else
    puts "I am sorry, that is invalid input, please try again."
    side_1_method
  end
end

def side_2_method
  puts """Hello! What you would like for lunch.\n ------------------"""
  @side.each_with_index { |x, i| puts "#{i+1}. #{x[:side]}...$#{x[:price]}" }
  @side_2 = gets.strip.to_i - 1
  case @side_2
  when 0,1,2
    @total << @side[@side_2]
    puts "#{@side[@side_2][:side]} was added to your cart."
    total_method
  else
    puts "I am sorry, that is invalid input, please try again."
    side_2_method
  end
end

def total_method
  puts "Your order is #{@dish[@food][:dish]}, #{@side[@side_1][:side]} and #{@side[@side_2][:side]}."
  result_method
end

def result_method
  puts "Your total is: $#{@dish[@food][:price] + @side[@side_1][:price] + @side[@side_2][:price]}"
end

main_dish_method
