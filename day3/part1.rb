class Fabric
    attr_reader :file, :arr, :counter
    def initialize
        @fabric = Hash.new(0)
        @file = File.new("input.txt")
        @arr = []
        @counter = 0
        parse_input
    end

    def square_coordinates
        
    end

    def parse_square(arr)
        arr[0] = arr[0].delete(":")
        multiplier = arr[1].split("x")
        x_times = multiplier[1].to_i -1
        y_times = multiplier[0].to_i -1
        p starting_key = arr[0].split(",").map(&:to_i)
        @fabric[starting_key] +=1
        y_times.times do |y|
            starting_key[0] +=1
            x_times.times do |x|
                @fabric[starting_key]+=1
                starting_key[1] +=1
            end
        end


    end

    def parse_line(line)
        line = line.split(" ")
        arr = [line[-2], line[-1]]
        parse_square(arr)
        true
    end

    def parse_input
        @file.each_line do |word|
            @arr << word.chomp
        end
        @arr.each do |el|
            parsed = parse_line(el)
        end
        true
    end
end