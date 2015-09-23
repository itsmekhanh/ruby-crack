# Given two 32-bit integers, M and N, and bit positions i and j, write a method
# to insert M into N such that M starts at bit j and ends at bit i. You can
# assume that bits j through i have enough space to fit all of M.

def insert(m,n,i,j)
    mask = ~1 ^ (((1 << i+1)-1) << j)
    return (m & mask) | (n << j)   
end
