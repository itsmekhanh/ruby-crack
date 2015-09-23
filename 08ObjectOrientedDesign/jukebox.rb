# implement a class for a jukebox

class Song
    attr_accessor :title, :artist

    def initialize(title, artist)
        @title = title
        @artist = artist
    end
end

class Albums
    
    attr_accessor :title, :artist, :songs

    def initialize(title, artist, songs)
        @title = title
        @artist = artist
        @songs = songs
    end
end

class Jukebox

    def initialize(albums)
        @albums = albums
        @playlists = []
        
        @current_playlist = albums[0]
        @playlist = @current_playlist.songs
        
        @current_song = 0
        @active = false
    end

    def next_song
        if @current_song+1 < @current_playlist.songs.length
            @current_song += 1
        else
            @current_song = 0
        end
        self.play(@current_playlist.songs[@current_song])
    end

    def prev_song
        if @current_song-1 >= 0
            @current_song -= 1
        else
            @current_song = @current_playlist.songs.length-1
        end
        self.play(@current_playlist.songs[@current_song])
    end

    def play(song)
        if song.nil?
            song = @current_playlist.songs[@current_song]
        end
        @active = true
    end

    def pause
        @active = false
    end
end
