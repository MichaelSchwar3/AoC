

def day2(running_sum = 0, hash = nil)
    f = File.new("input.txt")
    arr = []
    hash ||= Hash.new(0)
    first = false


    f.each_line do |num|
        n = num.chomp.to_i
        running_sum +=n
        hash[running_sum] +=1
        first = running_sum if hash[running_sum] >=2
        break if first
    end
    puts hash[first] if first
    puts hash.select{|k,v| v>=2}
    return first if first
    day2(running_sum, hash)
end

p day2



