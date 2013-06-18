
class MyGameWindow < Gosu::Window
  def initialize
   super(590, 450, false)
   self.caption = 'Dranoshi la tierra del dragon'
    @background_image = Gosu::Image.new(self, "imagenes/background.jpg", true)
    @player=Player.new(self)
    @texto = Texto.new(self)

  end

  def update
  	   if button_down? Gosu::Button::KbLeft
  	   	@player.mover_izquierda
  	   end

  	   if button_down? Gosu::Button::KbRight
  	   	@player.mover_derecha
  	   end

  	   if button_down? Gosu::Button::KbI
  	   	@texto.dar_instrucciones
  	   end
  	   @texto.update
       @player.update
  end
  
  def draw
 @background_image.draw(0,0,1)
 @texto.draw
 @player.draw
  end
end

