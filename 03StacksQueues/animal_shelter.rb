# AnimalShelter is a class that follows the rules below:
# It can only hold dogs and cats, and operates on a strictly "first in,
# first out" basis. People must adopt either the "oldest" of all
# animals in the shelter or they can select whether they would prefer
# a dog or a cat (and will receive the oldest animal of that type).
# They cannot select which specific animal they would like. Implement
# a class to maintain this system with operations such as enqueue,
# dequeueAny, dequeueDog, and dequeueCat.

require "../classes/linked_list.rb"

class Animal
    attr_accessor :age
    
    def initialize(age)
        @age = 0;
    end
end

class Dog < Animal
end

class Cat < Animal
end

class AnimalShelter
    
    def initialize
        @cats = nil
        @dogs = nil
    end

    def enqueue(animal)
        node = LinkedListNode(animal)
        
        if animal.is_a?(Dog)
            if @dogs.nil?
                @dogs = node
                return true
            else
                w = @dogs
            end
        else
            if @cats.nil?
                @cats = node
                return true
            else
                w = @cats
            end
        end
        
        while w.data.age > animal.age do
            w = w.next;
        end

        node.next = w
        w.data = node.data
        w.next = node.next
        return true
    end

    def dequeueAny
        if @dogs.data.age > @cats.data.age
            return self.dequeueDog
        else
            return self.dequeueCat
        end
    end

    def dequeueDog
        if !@dog.nil?
            animal = @dog.data
            @dog = @dog.next
            return animal
        else
            return nil
        end
    end

    def dequeueCat
        if !@cat.nil?
            animal = @cat.data
            @cat = @cat.next
            return animal
        else
            return nil
        end
end

