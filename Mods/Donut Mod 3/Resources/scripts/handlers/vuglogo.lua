if Difficulty.IsNormal then
	Redirect("/GameData/movies/normal.rmv")
elseif Difficulty.IsHellfish then
	Redirect("/GameData/movies/hellfish.rmv")
elseif Difficulty.IsDeathfish then
	Redirect("/GameData/movies/deathfish.rmv")
end