require "sinatra"

get '/' do
  <<-HTML
  <h1>Hola dime a quien saludar</h1>
  <form action="/hola" method="post">
    <input type="text" name="name"></input>
    <input type="submit" value="Submit">
    </input>
  </form>
  HTML
end

post "/hola" do
  "¡Hola #{params[:name]}!"
end
