require "ruby_cowsay" 




passwords = ['SCORPION','FLOGGING','CROPPERS','MIGRAINE','FOOTNOTE','REFINERY','DIZZYING','VAULTING','CONTINUE','PROTECTS','DESCENTS','QUIZZING']

passwords.each{|k| p k}

tries = 4

correct_password = passwords.sample.chars


while tries > 0 

p "Guess (#{tries} left)"
correct_chars = 0

guess = gets.chomp
guess.upcase!
guess.chars.each_with_index {|char ,i| char == correct_password[i]? correct_chars+=1 : ''}

p "#{correct_chars}/8 correct"


if correct_chars == 8 
    steg = Cow.new({ :cow => 'stegosaurus' })
    puts steg.say("Welocome" , 'think')

break

else
    
    tries -= 1
   if tries == 0
    cow = Cow.new({ :face_type => 'paranoid'})
    puts cow.say("Access Denied!!")
    p "The correct password is #{correct_password.join}"
   end
end

end

