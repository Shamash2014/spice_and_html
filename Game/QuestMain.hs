
data Location = Home | FriendsYard | Garden
	deriving(Eq, Show, Read)
data Direction = North | South  | East | West
	deriving(Eq, Show, Read)
data Action = Look | Go | Inventory | Take | Drop | Investigte | Quit | Save | Load | New
	deriving(Eq, Show, Read)


describeLocation :: Location -> String
describeLocation loc = show loc ++ "\n" ++
	case loc of
		Home -> "You are standing in the middle room at the wooden table."
		FriendsYard -> "You are standing in the front of the night garden behind the small wooden fence."
		Garden -> "You are in the garden. Garden looks very well: clean, tonsured, cool and wet."
		otherwise -> "No description available for location" ++ show loc ++ "!"
	
	-- Home::
	--North -> "Garden"
	--South -> "FiendsYard"
	--East -> "Home"
	----West -> "Home"
	--Garden::
	--North -> "FriendsYard"
	--South -> "Home"
	--East -> "Garden"
	--West -> "Garden"
	--FriendsYard::
	--North -> "Home"
	--South -> "Garden"
	--East -> "FriendsYard"
	--West -> "FriendsYard"
evalAction :: Action -> String
evalAction strAct = "Action" ++ strAct ++ "!"

convertStringToAction :: String -> Action
convertStringToAction str = case reads str of
	[(x, _)] -> x
	_ -> Quit


run = do
	putStr "Enter command":
	x <- getLine
	putStr (evalAction (convertStringToAction x))