class Player
  def initialize(game_window)
    @game_window= game_window
    @image = Gosu::Image.new(game_window, "imagenes/dragon.png", true)
    @tiempo=0
    @nivel_a=60
    @grafico_nivel_alimenticio = Gosu::Image.new(@game_window, "imagenes/"+@nivel_a.to_s+".png", true)
    @x=180
    @y=180
    
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

def imprimir_nivel_alimenticio
  if @tiempo%2000==0
    @nivel_a=@nivel_a-20
    @grafico_nivel_alimenticio = Gosu::Image.new(@game_window, "imagenes/"+@nivel_a.to_s+".png", true)
  end

  @grafico_nivel_alimenticio.draw(500, 0, 3)  
end

def draw
@image.draw(@x, @y, 2) 
self.imprimir_nivel_alimenticio 

end

def update
  @tiempo=@tiempo +1 
  

end


end