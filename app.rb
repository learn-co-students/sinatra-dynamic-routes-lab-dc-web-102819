require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse!
  end

  get '/square/:number' do
    @number = params[:number]
    @result = (@number.to_i)**2
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @repetitions = []
    @number.times do
       @repetitions << @phrase
    end
    @repetitions
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @sentence = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
    erb :five_words
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @add = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @subtract = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @multiply = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @divide = params[:number1].to_i / params[:number2].to_i
    end
    erb :operation
  end
end
