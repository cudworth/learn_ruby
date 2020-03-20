class Book
    def initialize 
        @title = 'none'
    end

    def title=(value)
        @title = titleize value
    end

    def title
        @title
    end

    private

    def titleize text
        little_words = ['and', 'or', 'over', 'the', 'in', 'of', 'a', 'an']
        text = text.split ' '
        text = text.map do |word|
            if (!little_words.index word)
                word.capitalize
            else
                word
            end
        end
        text[0] = text[0].capitalize
        text.join ' '
    end
end