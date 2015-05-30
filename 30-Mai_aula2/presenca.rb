# coding: utf-8
require 'rspec'

def inscrever(chamada, aluno)
	chamada << aluno unless chamada.include?(aluno)
end

class Chamada
	def initialize
		@alunos = []
	end
	def inscreve(aluno)
		@alunos << aluno unless @alunos.include?(aluno)
	end
	def aluno
		@alunos
	end
	def size
		@alunos.size
	end
end

RSpec.describe 'Inscrição' do
	describe 'quando um aluno se inscreve' do
		it 'é adicionado a lista de inscitos' do
			aluno = "1234567890"
			chamada = Chamada.new

			chamada.inscreve(aluno)

			expect(chamada.aluno).to include(aluno)
		end

		it 'é inscrito apneas uma vez' do
			aluno = "1234567890"
			chamada = Chamada.new
			
			chamada.inscreve(aluno)
			chamada.inscreve(aluno)
			expect(chamada.size).to eq(1)
		end

		it 'permite inscrever diferentes alunos' do
			aluno = "1234567890"
			outro_aluno = "0987654321"
			chamada = Chamada.new

			chamada.inscreve(aluno)
			chamada.inscreve(outro_aluno)

			expect(chamada.size).to eq(2)
		end

	end
end




# Inscrição de um aluno
# Listagem de inscritos
# Registrar a presença de um aluno
# Listagem de presentes