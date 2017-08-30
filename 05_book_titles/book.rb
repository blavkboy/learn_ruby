class Book
    attr_accessor :title
    def initialize
      @small_words = ["And", "Over", "It", "The", "Is", "Of", "In", "A", "An"]
    end
    def title
        #turns the string into an array and uses the capitalize method on each element.
        @title = @title.split(" ").map(&:capitalize)
        #use small_words array to look for small words and make them lowercase.
        @title.each do |book|
          if (@small_words.include? book)
            @title[@title.index(book)] = @title[@title.index(book)].downcase
          end
        end
        #capitalizes the first word.
        @title[0] = @title[0].capitalize
        return @title.join(" ")
    end
end