class MyGameWindow < Gosu::Window
  def initialize
   super(590, 450, false)
   self.caption = 'Dranoshi la tierra del dragon'
    @background_image = Gosu::Image.new(self, "imagenes/background.jpg", true)

  end

  def update
  end
  
  def draw
  # @background_image.draw(0, 0, 0)
  end
end

