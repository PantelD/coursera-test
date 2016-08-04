require 'httparty'

ENV["FOOD2FORK_KEY"] = "728ae5677ed54db4dccd289febe8d03b"

class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end

