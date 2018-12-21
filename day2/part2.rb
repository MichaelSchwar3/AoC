class Library

    attr_reader :dictionary
    
    def initialize
        @dictionary = []
        file = File.new("input.txt")

        file.each_line do |word|
            @dictionary << word.chomp
        end
        @boxes = find_boxes
    end

    def find_boxes
        arr = []
        i = 0
        while i < @dictionary.length
            j=i+1
            while j < @dictionary.length
                p word1 = @dictionary[i]
                p word2 = @dictionary[j]
                if compare_words(word1,word2)
                     arr = [word1, word2] 
                end
                break if arr.length >1
                j+=1
            end
            i+=1
        end
        arr
    end

    def compare_words(word1, word2)
        word1 = word1.chars
        word2 = word2.chars
        counter = 0
        idx = 0
        while idx < word1.length
            if word1[idx] != word2[idx]
                counter+=1
            end
            idx+=1
        end
        p counter
        return true if counter == 1
        false
    end

    def final_answer
        string = ""
        @boxes[0].chars.each_with_index do |ch1, idx|
            string +=ch1 if @boxes[0][idx] == @boxes[1][idx]
        end
        string
    end



end

