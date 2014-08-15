require 'pry'

class Person


def initialize
  @alive = true
  @age = 0
  @name = nil
  @memories = []
end

def alive?
  @alive
end

def age
  @age
end

def age!
  @age += 1
end

def name
  @name
end

def name=(name)
  @name = name
end

def brain
  {
    :memories => true,
    :love_ones => true,
    :interests => true
  }
end

def memories
  if @age >= 3
    @memories

  end
end

def remember(memory)
  @memories.push({age: 3, memory: "going to the bathroom under the piano"})
end

def get_interested_in(sport)

end

def interests

end




end #class ends
