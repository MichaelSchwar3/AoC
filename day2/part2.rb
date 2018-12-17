class Library
    def initialize
        @dictionary = File.new("input.txt")
        @boxes = find_boxes
    end

    def find_boxes
        arr = []
        @dictionary.each_line do |word1|
            @dictionary.each_line do |word2|
                arr = [word1, word2] if compare_words(word1,word2)
                break if arr.length
            end
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

