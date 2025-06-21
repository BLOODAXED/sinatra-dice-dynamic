require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:dice_size") do
  @rolls = []
  @num_dice = params["number_of_dice"].to_i
  @die_size = params["dice_size"].to_i
  
  @num_dice.times do
    die = rand(1..@die_size)

    @rolls.push(die)
  end

  erb(:flexible)
end
