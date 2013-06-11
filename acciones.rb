class Acciones 
	attr_accesor :salir , :estomago

	def initialize 
		@salir=false 
		@estomago=1
		 puts "tu dragon baby dragon nacido"
		
	end

	def set_name 
		puts Da_nombre
		@nombre=gets.chomp
		
	end
	def saluda
		puts "Hola mi nombre dragon es"+@nombre
	end

	def morir
		puts "estoy Muerto"
	end

	

	def jugar
		while !@salir
			puts Pedir_orden
			@orden=gets.chomp
			if Metodos.include?(@orden)
				Dragon_acciones.send(@orden)
			else
				puts @nombre+"no sabe que significa"+@orden
			end
			

		end
		
	end
	
end