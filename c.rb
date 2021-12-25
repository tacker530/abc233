# c.rb C - Product

N,X  = gets.chomp.split.map(&:to_i)
L = []
A = []
w = []
N.times do |i|
  w = gets.chomp.split.map(&:to_i)
  L[i] = w[0]
  A[i] = w[1..-1]
end

pp N,X 
pp L
pp A


cnt = 0
remain = X
N.times do |i|
  A[i].each do |ball|
    d,m = remain.divmod(ball)
    if m == 0 then
      remain = d
    end
    STDERR.puts "[#{i}] #{ball} : #{d} #{m}"
  end
  if remain == 1 then
    cnt += 1
  end
end
puts cnt