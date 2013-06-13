class Player
  def initialize(game_window)
    @game_window= game_window
    @image = Gosu::Image.new(game_window, "imagenes/dragon.png", true)
    @x=180
    @y=180
    
  end

def draw
@image.draw(@x, @y, 2)  
end

def mover_izquierda
  if @x>-30
    @x=@x-10
  end
end

def mover_derecha
  if @x<500
    @x=@x+10
  end
end


end