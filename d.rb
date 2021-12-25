# D - Count Interval
N,K = gets.chomp.split.map(&:to_i)
A =   gets.chomp.split.map(&:to_i)
#STDERR.puts "#{N} #{K} #{A}"

area = (0..N).to_a.combination(2).to_a
lcache = {}
rcache = {}

total = A.sum
N.times do |i|
  #STDERR.puts "0..#{i}  #{A[0..i].sum} / #{i+1}..#{N-i}  #{A[i+1..-1].sum}" 
  lcache[i] = A[0..i].sum
  if i >= N then
    rcache[i] = 0
  else
    rcache[i] = A[i+1..-1].sum
  end
end

pp rcache


cnt = 0

area.each do |a|
  puts "#{a}"
  pp lcache[a[0]]
  pp rcache[a[1]]
  w = total - lcache[a[0]] - rcache[a[1]] 
  cnt += 1 if w == K
end
puts cnt
