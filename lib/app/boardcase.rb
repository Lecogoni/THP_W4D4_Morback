require "pry"


class BoardCase

    attr_accessor :name, :value, :myhash
    
    def initialize(name, value)
        #@myhash = {}
        @name = name
        @value = value
        #@myhash.store(name, value)
    end
end
