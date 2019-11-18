require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@reversed = params[:name].reverse
		erb :reversename
	end

	get '/square/:number' do
		@squared = params[:number].to_i**2
		erb	:square
	end

	get '/say/:number/:phrase' do
		@repeat = params[:number].to_i
		@phrase = params[:phrase]
		erb	:say
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@string = params.map {|key, value| value }
		erb :make_string
	end

	get '/:operation/:number1/:number2' do
		case params[:operation]

		when "add"
			@result = params[:number1].to_i + params[:number2].to_i
		when "subtract"
			@result = params[:number1].to_i - params[:number2].to_i
		when "multiply"
			@result = params[:number1].to_f * params[:number2].to_i
		when "divide"
			@result = params[:number1].to_f / params[:number2].to_i
		end

		erb :operation
	end

end