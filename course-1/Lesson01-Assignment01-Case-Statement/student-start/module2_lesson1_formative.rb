some_var = "false"
another_var = "nil"

case 
when some_var == "pink elephant"
  puts "Don't think about the pink elephant!"

when another_var.nil? #another_var is "nil", NOT nil
  puts "Question mark in the method name?"

when some_var == false #some_var is a string, NOT false
  puts "Looks like this one should execute"

when true
  puts "I guess nothing matched... But why?"    
end