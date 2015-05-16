#coding: utf-8
alunos = ["joão", "maria", "josé"]

alunos_capitalizados = []
alunos_capitalizados = alunos.map do |aluno|
	aluno.capitalize
end

puts alunos.join(", ")
puts alunos_capitalizados.join(", ")