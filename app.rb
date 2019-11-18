require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @names = params[:name]
      "#{@names.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i
      "#{@square * @square}"
  end

  get '/say/:number/:phrase' do
    str = ''
    params[:number].to_i.times do |x|
      str += params[:phrase]
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @first_number = params[:number1].to_i
    @second_number = params[:number2].to_i
    @operations = params[:operation]
    if @operations == 'add'
      @first_number + @second_number
    end
  end

end