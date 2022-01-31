class Mars_rover
	def initialize(x,y, direction)
		@x = x,
		@y = y,
		@dirction = direction
	end

  def right_direction
    if @direction == 'S'
      @direction = 'W'
    elsif @direction == 'N'
      @direction = 'E'
    elsif @direction == 'W'
      @direction = 'N'
    else
      @direction = 'S'
    end
  end

	def left_direction
    if @direction == 'N'
      @direction = 'W'
    elsif @direction == 'W'
      @direction = 'S'
    elsif @direction == 'E'
      @direction = 'N'
    else
      @direction = 'E'
    end
  end

  def move
    if @direction == 'N'
      @y += 1
    elsif @direction == 'E'
      @x += 1
    elsif @direction == 'S'
      @y -= 1
    else
      @x -= 1
    end
	end
	
	def instructions(position)
    position.each do |input|
      if input == 'L'
        left
      elsif input == 'R'
        right
      else
        move
      end
    end
      puts "#{@x} #{@y} #{@direction}"
  end
end

first_mars_rover = Mars_rover.new(0,0,'N')
second_mars_rover = Mars_rover.new(1,1,'E')

first_mars_rover.instructions(['L','M','R','M','L','M','R','R','M'])
second_mars_rover.instructions(['M','M','R','M','M','R','M','R','R','M'])
