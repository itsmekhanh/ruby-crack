# makeZeroes(m) - takes a matrix m and sets the entire row and column to 0
# if the element in that column and row is 0.

def makeZeroes(m)

    cols = (1..m.length).to_a
    rows = (1..m[0].length).to_a

    for i in 0..m.length-1
        for j in 0..m[0].length-1
            if m[i][j] == 0
                rows[i] = 0
                cols[j] = 0
            end
        end
    end

    for i in 0..m.length-1
        for j in 0..m[0].length-1
            if rows[i] == 0 || cols[j] == 0
                m[i][j] = 0
            end
        end
    end

    # we're done, printing new array
    for i in 0..m.length-1
        for j in 0..m[0].length-1
            print "[#{m[i][j]}]"
        end
        print "\n"
    end
    return m
end

puts "Testing makeZeroes(m)"
puts "[0][2][0]"
puts "[4][5][6]"
puts "[7][8][9]"
puts "New array..."

makeZeroes([[0,2,0],[4,5,6],[7,8,9]])
