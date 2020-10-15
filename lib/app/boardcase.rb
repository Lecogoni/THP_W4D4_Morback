require "pry"

class BoardCase

    attr_accessor :name, :value

# -- initalisation des boardcase

    def initialize(name, value)
        @name = name
        @value = value
    end
end
