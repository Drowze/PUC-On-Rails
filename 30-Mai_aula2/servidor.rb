require 'sinatra'
require './presenca'

chamada = Chamada.new

get '/' do
	<<-HTML
		<form action="/inscricao" method="POST">
			<input name="aluno" type="text" />
			<input type="submit" />
		</form>
		<a href="/alunos">Lista de inscritos</a>
	HTML
end			

post '/inscricao' do
	chamada.inscreve(params[:aluno])
	redirect '/'
end


get '/alunos' do
	chamada.aluno.join(', ')	
end

# get '/alunos' do
# 	lista = chamada.alunos.map do |aluno|
# 		"<li>#{aluno}</li>"
# 	end.join
# 	<<-HTML
# 	<ul>
# 	#{lista}
# 	</ul>
# 	HTML
# end