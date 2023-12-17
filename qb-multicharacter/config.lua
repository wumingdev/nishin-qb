Config = {}
Config.Interior = vector3(-814.89, 181.95, 76.85) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(-1035.71, -2731.87, 12.86) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-813.97, 176.22, 76.74, -7.5) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(-812.23, 182.54, 76.74, 156.5) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(-813.46, 178.95, 76.85, 174.5) -- Camera coordinates for character preview screen
Config.EnableDeleteButton = true -- Define if the player can delete the character or not
Config.customNationality = false -- Defines if Nationality input is custom of blocked to the list of Countries
Config.SkipSelection = false -- Skip the spawn selection and spawns the player at the last location

Config.DefaultNumberOfCharacters = 2 -- Define maximum amount of default characters (maximum 5 characters defined by default)
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:6dd6edd686f9578e4ed5991a62781e98d0dd6baf", numberOfChars = 5 },  --lemongg
    { license = "license:830d2247564ad0bb8214108befd5bed7c87ae0ff", numberOfChars = 5 },  --yidao
    { license = "license:8d0763c3c77e8bc78de0986bedd706c292f0a909", numberOfChars = 5 },  --dark
    { license = "license:5bf88a0960b6055cb04e985d3f0c66120d886a55", numberOfChars = 5 },  --dark
    { license = "license:a38f143001cd333b4314e738b4173ec344d2580d", numberOfChars = 5 },  --dohu
    { license = "license:0adfdb810c031d73896fa996f4a65979024f3703", numberOfChars = 5 },   --阿石
    { license = "license:6b70a556d976d310603f672aa23473a0b79554e9", numberOfChars = 5 },   --阿甲
    { license = "license:59841098b7f33a5358a3ce2cca2ef96866b9e9c2", numberOfChars = 5 }   --tddd
}