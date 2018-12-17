f = File.new("input.txt")
arr = []
f.each_line do |num|
    n = num.chomp.to_i
    arr << n
end

p arr.reduce(:+)
