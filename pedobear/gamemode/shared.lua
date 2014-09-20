DeriveGamemode( "fretta" )
IncludePlayerClasses()

GM.Name 	= "Escape Pedo Bear"
GM.Author 	= "Douglas Huck , Paul Sweeney, Jordie and Ysarts"
GM.Email 	= "jordanjordanovv@gmail.com"
GM.Website 	= "http://steamcommunity.com/id/jordielsx/"
GM.Help		= "Objective: Run from Pedo Bear and try to survive the longest so you win!\n If you get caught you will die and lose!\n If you have any problems with the gamemode , ask for help in our addon discussions page"

GM.TeamBased = true	
GM.AllowAutoTeam = true
GM.AllowSpectating = true
GM.SecondsBetweenTeamSwitches = 10
GM.GameLength = 15000
GM.RoundLimit = 3000					// Maximum amount of rounds to be played in round based games
GM.VotingDelay = 5					// Delay between end of game, and vote. if you want to display any extra screens before the vote pops up

GM.NoPlayerSuicide = false
GM.NoPlayerDamage = false
GM.NoPlayerSelfDamage = true		// Allow players to hurt themselves?
GM.NoPlayerTeamDamage = true		// Allow team-members to hurt each other?
GM.NoPlayerPlayerDamage = true 	// Allow players to hurt each other?
GM.NoNonPlayerPlayerDamage = true 	// Allow damage from non players (physics, fire etc)
GM.NoPlayerFootsteps = true		// When true, all players have silent footsteps
GM.PlayerCanNoClip = false			// When true, players can use noclip without sv_cheats
GM.TakeFragOnSuicide = false		// -1 frag on suicide

GM.MaximumDeathLength = 10			// Player will repspawn if death length > this (can be 0 to disable)
GM.MinimumDeathLength = 5			// Player has to be dead for at least this long
GM.AutomaticTeamBalance = false     // Teams will be periodically balanced 
GM.ForceJoinBalancedTeams = false	// Players won't be allowed to join a team if it has more players than another team
GM.RealisticFallDamage = false
GM.AddFragsToTeamScore = false		// Adds player's individual kills to team score (must be team based)

GM.NoAutomaticSpawning = true		// Players don't spawn automatically when they die, some other system spawns them
GM.RoundBased = true				// Round based, like CS
GM.RoundLength = 300			// Round length, in seconds
GM.RoundPreStartTime = 1			// Preperation time before a round starts
GM.RoundPostLength = 10				// Seconds to show the 'x team won!' screen at the end of a round
GM.RoundEndsWhenOneTeamAlive = false

GM.EnableFreezeCam = true			// TF2 Style Freezecam
GM.DeathLingerTime = 5				// The time between you dying and it going into spectator mode, 0 disables

TEAM_PLAYER = 1

GM.ValidSpectatorModes = { OBS_MODE_IN_EYE }


function GM:CreateTeams()
	
	team.SetUp( TEAM_PLAYER, "Victims", Color(255,192,203), true )
	team.SetSpawnPoint( TEAM_PLAYER, {"info_player_counterterrorist","info_player_rebel","info_player_start"} )
	team.SetClass( TEAM_PLAYER, { "Victims" } )
	
	team.SetUp( TEAM_SPECTATOR, "Spectators", Color( 255, 255, 80 ), true )
	team.SetSpawnPoint( TEAM_SPECTATOR, {"info_player_terrorist","info_player_counterterrorist","info_player_combine","info_player_rebel","info_player_start"} ) 

end

function GM:PlayerCanJoinTeam( ply, teamid )

	if ( SERVER && !self.BaseClass:PlayerCanJoinTeam( ply, teamid ) ) then 
		return false 
	end

	if ( ply:Team() == TEAM_DEAD && teamid != TEAM_SPECTATOR ) then
		ply:ChatPrint( "Wait until the round ends!" )
		return false
	end
	
	return true
	
end
