
#drogonochi es una mascota virtual escrita en ruby
require 'gosu'
require './ins'
require './acciones'
require './game_window'
require './player'
puts Instruccion


Dragon_acciones= Acciones.new
Dragon_acciones.set_name



#jugar
Dragon_acciones.jugar


#salir de dragonochi
puts Exit

#
window = MyGameWindow.new
window.show
#window.draw
personaje=Player.new
personaje.draw