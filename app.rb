require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @eman = params[:name].reverse
    "#{@eman}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_by_times = []
    @number.times do
      @phrase_by_times << @phrase
    end
    @phrase_by_times.each {|phrase|
      "#{phrase}"
    }
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
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    operation = params[:operation]

    case operation
      when "add"
        @result = @number1 + @number2
      when "subtract"
        @result = @number1 - @number2
      when "multiply"
        @result = @number1 * @number2
      when "divide"
        @result = @number1 / @number2
      else
        @result = "Operation not recognized."
      end

      "#{@result.to_s}"
  end

end