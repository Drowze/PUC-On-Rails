# coding: utf-8
alunos = []
open("alunos") do |file|
	file.lines do |line|
		alunos << line
	end
end

alunos_capitalizados = alunos.map do |aluno|
	aluno.capitalize
end

puts alunos.join(", ")