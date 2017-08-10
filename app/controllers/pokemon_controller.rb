class PokemonController < ApplicationController

  def show

  res = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{params[:id]}/")
  body = JSON.parse(res.body)
  name  = body["name"]
  id = body["id"]
  url = body["url"]
  # id = body["id"]
  # type = body["type"]
res = HTTParty.get("https://api.giphy.com/v1/gifs/search?api_key=731ac9dd658f4517bd937b32bbafbec8&q=pikachu&rating=g")
body = JSON.parse(res.body)
gif_url = body["data"][0]["url"]

render json: { "name": name, "id": id, "url": url }


end
end
