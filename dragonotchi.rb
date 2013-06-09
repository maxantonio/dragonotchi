class Dragon 

	def initialize nombre
		return "tu dragon a nacido"
	end

	def set_name nombre
		@nombre=nombre
	end
	def saluda
		return "Hola mi nombre es dragonochi"
	end

	def muerte
		return "estoy Muerto"
	end
	
end

require 'instrucciones'
puts Instruccion
puts Da_nombre
nombre=gets.chomp
bubu= Dragon.new("pepe")
puts bubu.saluda
