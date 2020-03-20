#write your code here
def translate phrase
    vowels = 'aeiouy'
    words = phrase.split(' ')
    words = words.map do |word|
        while not vowels.index word[0]
            word = unshift_push word
        end
        if 'u' == word[0] and 'q' == word[-1]
            word = unshift_push word
        end
        word << 'ay'
    end
    p words.join ' '
end

def unshift_push word
    word = word[1,word.length] << word[0]
end