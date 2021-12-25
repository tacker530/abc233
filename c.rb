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

cnt = 0
combi =  A[0].product(*A[1..-1])

combi.each do |c|
  w = c.inject(1) do |prod,i|
    prod *= i 
  end
  cnt += 1 if w == X 
end
puts cnt

