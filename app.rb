require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @final_string = ""
    @number.times do
      @final_string += "#{@phrase}\n"
    end
    @final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @string
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @result = @number1 + @number2
    elsif @operation == "subtract"
      @result = @number1 - @number2
    elsif @operation == "multiply"
      @result = @number1 * @number2
    elsif @operation == "divide"
      @result = @number1 / @number2
    else 
      @result = "Unable to perform this operation"
    end
    @result.to_s
  end

end