class PokemonController < ApplicationController
def show

  res = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{params[:id}/")
  body = JSON.parse(res.body)
  name  = body["name"]
  id = body["id"]
  type = body["type"]

  render json: { "message" : "ok" }
  #  name.body, id.body, type.body
end

end 
