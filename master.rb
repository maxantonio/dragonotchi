#!/usr/bin/env ruby
require 'rubygems' rescue nil
$LOAD_PATH.unshift File.join(File.expand_path(__FILE__), "..", "..", "lib")
require 'chingu'
include Gosu

#
# A minimalistic Chingu example.
# Chingu::Window provides #update and #draw which calls corresponding methods for all objects based on Chingu::Actors
#
# Image["picture.png"] is a deployment safe shortcut to Gosu's Image.new and supports multiple locations for "picture.png"
# By default current dir, media\ and gfx\ is searched. To add own directories:
#
# Image.autoload_dirs << File.join(self.root, "data", "my_image_dir")  
# 
class Game < Chingu::Window
  def initialize
    super(590,450,false)              # leave it blank and it will be 800,600,non fullscreen
    self.input = { :escape => :exit } # exits example on Escape
    self.caption = "Bienvenido a dragonoshi"
    
    @player = Player.create(:x => 200, :y => 200, :zorder=>2, :image => Image["dragoncito.png"])
    @background = Background.create(:x => 295, :y => 225, :zorder=>1, :image => Image["bosque.jpg"])
    @player.input = { :holding_left => :move_left, :holding_right => :move_right, 
                      :holding_up => :move_up, :holding_down => :move_down }
  end
  
  def update
    super
  end


end
class Background < Chingu::GameObject  
 
end

class Player < Chingu::GameObject  
  def move_left
    if @x>0
    @x -= 3
    end
   end
  def move_right; @x += 3; end
  def move_up
     @y -= 3
   end
  def move_down;  @y += 3; end
end


Game.new.show