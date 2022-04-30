require 'digest'

puts "Введите слово или фразу для шифрования:"

word = gets.chomp

puts <<~END
  Каким способом зашифровать:
  1. MD5
  2. SHA1
  3. SHA2
END

user_choice = gets.to_i

until user_choice.between?(1, 3)
  puts "Выберите 1 или 2"
  user_choice = STDIN.gets.to_i
end

puts "Вот что получилось:"
case user_choice
when 1 then puts Digest::MD5.hexdigest(word)
when 2 then puts Digest::SHA1.hexdigest(word)
when 3 then puts Digest::SHA2.hexdigest(word)
end
