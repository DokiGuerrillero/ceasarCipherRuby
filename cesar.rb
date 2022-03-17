require 'pry-byebug'

def wrapper (range1,range2,num1, shift)
    num =  num1 + shift
    range = range2 - range1
    total = range1+((num-range1) % range)
    total.chr
end

def shifter (letter, number)
    num1 = letter.ord
    if (65..90).cover?(num1)
       return wrapper(65,91,num1,number)
    elsif (97..122).cover?(num1)
       return wrapper(97,123,num1,number)
    else
       return letter
   end          
end

def encoder (string, num)
    string.split("").map do 
        |item| 
        shifter(item,num) 
    end.join("")
end

p encoder("What a string!", 5)