class Artist

require "pry"
    attr_accessor :name, :songs

    
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
       @@all << self
        
    end

    def self.find_or_create_by_name(name)

       find =  @@all.find{|artist| artist.name == name}
        if find == nil   
         self.new(name) 
        else
            find          
end
end




def self.all
        @@all
    end

def add_song(song)

  song.artist = self


end



def print_songs

    songs.each { |song| puts song.name }
    
end
end


