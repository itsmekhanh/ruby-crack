class BinaryTreeNode
    
    attr_accessor :data
    attr_accessor :right
    attr_accessor :left

    def initialize(data)
        @data = data
        @right = nil
        @left = nil
    end

end

class BinarySearchTree
        
    def initialize
        @root = nil
    end

    def insert(data)
        node = BinaryTreeNode.new(data)
        
        if @root.nil?
            @root = node
            return true
        else
            w = @root
            while !w.nil? do
                if data > w.data
                    if w.right.nil?
                        w.right = node
                        return true
                    else
                        w = w.right
                    end
                else
                    if w.left.nil?
                        w.left = node
                        return true
                    else
                        w = w.left
                    end
                end
            end
            return false
        end
    end

    def remove(data, node = nil, parent = nil)
        
        if node.nil?
            node = @root
        end

        if data == node.data        
            if !node.right.nil?
                
                parent = nil
                # go right, then all the way left
                w = node.right

                if !w.left.nil?
                    while !w.left.nil? do
                        parent = w
                        w = w.left
                    end
                    
                    if !w.right.nil?
                        parent.left = w.right
                    else
                        parent.left = nil
                    end

                    node.data = w.data
                else
                    node.data = w.data
                    node.right = w.right
                end

            elsif !node.left.nil?
                node.data = node.left.data
                node.left = node.left.left
            else
                if parent.left.data == data
                    parent.left = nil
                elsif parent.right.data == data
                    parent.right = nil
                end
            end
            return true
        elsif data > node.data
            if node.right.nil?
                return false
            else
                return self.remove(data, node.right, node)
            end
        else
            if node.left.nil?
                return false
            else
                return self.remove(data, node.left, node)
            end
        end
    end

    def print_tree

        require_relative "linked_list.rb"

        lists = []
        height = 0;
        lists[height] = [@root]

        while !lists[height].empty? do
            nodes = lists[height]

            lists[height+1] = []

            for i in 0..nodes.length-1
                node = nodes[i]
            
                printf "[#{node.data}]"

                if !node.left.nil?
                    lists[height+1] << node.left
                end

                if !node.right.nil?
                    lists[height+1] << node.right
                end
            end
            printf "\n"
            height += 1
        end
    end
end
