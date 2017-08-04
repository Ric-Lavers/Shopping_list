shoppingOne=[
  "water", "butter", "pumkin", "tea"
]
shoppingTwo=[
  "apple", "butter", "coffee", "cordial", "pumkin"
]

def listNoDouble(listOne, listTwo)
  puts "The following are duplicates and will be deleted"
  puts listOne & listTwo
  
  final_list=[]
  final_list=listOne
  listTwo.each{|i|
    if final_list.include? i
      x="nothing"
    else
      final_list.push(i)
    end

  }
  go=true
  while go==true
    puts "What do you want to add to your list?"
    item=gets.chomp
    if item == "no"
      go =false
    else
      final_list<<item
    end
    stop = false
    while stop==false
      puts "anything more? [yes or no]"
      response = gets.chomp.downcase
      if response == "no"
        go=false
        stop=true
      elsif response =="yes"
        go =true
        stop= true
      else
        go = true
        stop = false
        puts "yes or no please"
      end
    end
  end
  return final_list
end

puts listNoDouble(shoppingOne, shoppingTwo)
