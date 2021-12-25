# B - A Reverse
L,R = gets.chomp.split.map(&:to_i)
S = gets.chomp.chars
#STDERR.puts "#{L} #{R} #{S}"

HEAD = S[0...L-1]
TAIL = S[R..-1]
MID  = S[L-1..R-1]

result = HEAD + MID.reverse+TAIL
result.each do |c|
  print c
end
puts ""


