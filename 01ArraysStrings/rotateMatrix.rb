=begin

rotateMatrix(m) takes an NxN array m and rotates the elements by 90 degrees

=end

def rotateMatrix(m)
    length = m.length
    for i in 0..length/2-1
        for j in 0..length-2-i
            temp = m[i][j]
            m[i][j] = m[j][length-1-i]
            m[j][length-1-i] = m[length-1-i][length-1-j]
            m[length-1-i][length-1-j] = m[length-1-j][i]
            m[length-1-j][i] = temp
        end
    end

    for i in 0..length-1
        for j in 0..length-1
            print "[#{m[i][j]}]"
        end
        print "\n"
    end
    return m
end

puts "Testing rotateMatrix"
puts "With matrix..."
puts "[1][2][3]"
puts "[4][5][6]"
puts "[7][8][9]"
puts "Rotated matrix..."

arr = [[1,2,3],[4,5,6],[7,8,9]]

rotateMatrix(arr)
