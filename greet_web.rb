require "sinatra"

get "/" do
  erb :askName
end

post "/" do
  greet(params[:name])
end

get "/:name" do
  greet(params[:name])
end

def greet(name)
  "Hello #{name.capitalize}, do you know you have #{name.length} character in your name and your backward name is #{name.reverse.downcase.capitalize}"
end

__END__

@@askName
<!DOCTYPE html>
<head>
  <title>Say Hello</title>
</head>
<body>

<form method="post">
  <input name="name">
  <input type="submit">
</form>

</body>
</html>