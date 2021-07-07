require_relative 'config/environment'

class App < Sinatra::Base
    get '/reversename/:name' do
        @name = params[:name].reverse
        "#{@name}"
    end
    get '/square/:number' do
        @square = params[:number].to_i ** 2
        "#{@square}"
    end
    get '/say/:number/:phrase' do
        @num = params[:number].to_i
        @phrase = (params[:phrase] * @num).to_s
        "#{@phrase}"
        # @num.times do
        #     "#{@phrase}"
        # end
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
        @operation = params[:operation]
        case @operation
        when "add"
            @result = (params[:number1].to_i + params[:number2].to_i)
            "#{@result}"
        when "subtract"
            @result = (params[:number1].to_i - params[:number2].to_i)
            "#{@result}"
        when "multiply"
            @result = (params[:number1].to_i * params[:number2].to_i)
            "#{@result}"
        when "divide"
            @result = (params[:number1].to_i / params[:number2].to_i)
            "#{@result}"
        else
            "Sorry we don't speak that math language!"
        end
    end
end
