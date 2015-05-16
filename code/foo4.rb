#coding: utf-8
alunos = ["joão", "maria", "josé"]
alunos_capitalizados = []
n = 0
while n < alunos.size
	alunos_capitalizados << alunos[n].capitalize
	n = n + 1
end
puts alunos.join(", ")
puts alunos_capitalizados.join(", ")