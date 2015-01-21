require File.dirname(__FILE__) + '/asker.rb'

def factorial(x)
    return 1 if x == 1
    return x * factorial(x-1)
end

factorial(@reply.to_i)