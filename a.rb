# a.rb
X,Y = gets.chomp.split.map(&:to_i)
STDERR.puts "X=#{X},Y=#{Y}"
if X >= Y then
  puts "0"
else
  puts  (( Y - X ) / 10.0).ceil
end 