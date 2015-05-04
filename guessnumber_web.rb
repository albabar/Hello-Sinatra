require "sinatra"

enable :sessions

get "/" do
  session[:number] = rand(100)
  session[:attempts] = 1
  @message = "I'm thinking of a number. Can you guess it?"
  erb :guess
end

post "/" do
  guess = params[:number].to_i
  number = session[:number]
  if number != guess
    if number > guess
      message = "Uhu, you got smaller."
    elsif number < guess
      message = "Uhu you got bigger."
    end

    @message = message.concat(" Guess again please:")
    session[:attempts] += 1
    erb :guess
  else
    "Wow, you got it right only in #{session[:attempts]} attempts, yes the number is #{session[:number]}."
  end
end

__END__

@@guess
<%= @message %>
<form method="post">
  <input name="number">
  <input type="submit">
</form>