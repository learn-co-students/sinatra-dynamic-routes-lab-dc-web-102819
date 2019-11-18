require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @phrases = params[:phrase] * params[:number].to_i
    "#{@phrases}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1] 
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @sum = (params[:number1].to_i + params[:number2].to_i)
    @difference = params[:number1].to_i - params[:number2].to_i
    @product = params[:number1].to_i * params[:number2].to_i
    @divide = params[:number1].to_i / params[:number2].to_i
    "#{@sum}, #{@difference}, #{@product}, #{@divide}"
  end
  

end