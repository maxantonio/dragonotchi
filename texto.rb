
class Texto
    def initialize(game_window)
    @game_window= game_window
    @font = Gosu::Font.new(game_window, Gosu::default_font_name, 20)
    @background_image = Gosu::Image.new(game_window, "imagenes/barra.png", true)
    @x=10
    @y=10
    @segundos=0
    @texto=0
    
  end

  def draw
@background_image .draw(0,0,2)
@font.draw(@texto.to_s+" horas de vida", 450, 5, 10, factor_x = 1, factor_y = 1, color = 0xffffffff, mode = :default)
end

def dar_instrucciones
  @texto="M para comer- S para salir"
  
end

def update
  @segundos=@segundos+1
  if @segundos%1000==0
   @texto=@texto+1
 end

  
end

end

