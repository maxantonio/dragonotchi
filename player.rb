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


end