# coding: utf-8
class Calculadora
	def soma(a,b)
		a + b
	end
end

calc = Calculadora.new
puts calc.soma(2,3)

# coding: utf-8
class Calculadora42 < Calculadora
	def soma(a,b)
		super + 42
	end
end

calc = Calculadora42.new
puts calc.soma(2,3)