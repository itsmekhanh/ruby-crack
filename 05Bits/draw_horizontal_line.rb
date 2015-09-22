# draw_horizontal_line - draws a horizontal line given a byte[] array, width,
# x1,x2, and y values

def draw_horizontal_line(screen, width, x1, x2, y)

    start_index = (((y-1)*width+x1)/8).floor
    end_index = (((y-1)*width+x2)/8).floor
    
    if start_index == end_index
        screen[start_index] = (1<<(8-(x1%8))-1) | (~1^(1<<(8-(x2%8)-1)))
    else
        screen[start_index] = (1<<(8-(x1%8))-1)
        start_index += 1

        while start_index < end_index do
            screen[start_index] = ~1
        end
        screen[end_index] = ~1^(1<< (8-(x2%8)-1))
    end
end
