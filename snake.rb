require 'ruby2d'
set background: Image.new("snake-skin.jpg",width:640,height:480)
set fps_cap: 1
GRID_SIZE = 20
class Snake
    def initialize
        @positions=[[2,0],[2,1],[2,2],[2,3]]
        @direction='down'
    end

    def draw
        @positions.each do |position|
            Square.new(x: position[0]*GRID_SIZE, y: position[1]*GRID_SIZE, size: GRID_SIZE-1, color: 'white')

        end
    end

    def move
        @positions.shift
        case @direction
        when 'down'
            @positions.push([head[0],head[1]+1])
        end
    end

    def head
        @positions.last
    end
end
snake= Snake.new

update do
    clear
    set background: Image.new("snake-skin.jpg",width:640,height:480)
    snake.move
    snake.draw
end

show