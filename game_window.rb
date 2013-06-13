
class MyGameWindow < Gosu::Window
  def initialize
   super(590, 450, false)
   self.caption = 'Dranoshi la tierra del dragon'
    @background_image = Gosu::Image.new(self, "imagenes/background.jpg", true)
    @player=Player.new(self)

  end

  def update
  	   if button_down? Gosu::Button::KbLeft
  	   	@player.mover_izquierda
  	   end

  	   if button_down? Gosu::Button::KbRight
  	   	@player.mover_derecha
  	   end
  end
  
  def draw
 @background_image.draw(0,0,1)
 @player.draw
  end
end

