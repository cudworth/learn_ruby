#write your code here
def echo text
    text
end

def shout text
    text.upcase
end

def repeat (text, num = 2)

    arr = []
    for i in 0..(num - 1)
        arr.push text
    end
    arr.join ' '
end

def start_of_word word, num
    word[0, num]
end

def first_word phrase
    phrase = phrase.split ' '
    phrase[0]
end

def titleize text
    little_words = ['and', 'or', 'over', 'the']
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