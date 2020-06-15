class User
    attr_accessor :username

    @@all = []
    
    def initialize(username)
        @username = username
        @@all << self
    end

end