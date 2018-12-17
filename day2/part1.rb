class Library
    def initialize
        @dictionary = File.new("input.txt")
        @two = 0
        @three = 0
        build_count
    end

    def count(word)
        hash = Hash.new(0)
        word.chars.each do |ch|
            hash[ch] +=1
        end
        @two += 1 if hash.select{|k,v| v == 2}.count >= 1
        @three += 1 if hash.select{|k,v| v == 3}.count >= 1
    end

    def build_count
        @dictionary.each_line do |word|
            count(word.chomp)
        end
    end



    def checksum
        return @two * @three
    end


end

