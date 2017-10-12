User = % Username
SetMouseDelay,-1
AutoTrim, On
#SingleInstance force
Sendmode, input
Setkeydelay, 0
#WinActivateForce
DetectHiddenWindows, On
DetectHiddenText, On
#Persistent
Coordmode, Relative
SetFormat float, 0.2
;~ SetTitleMatchMode, 2
;********************************************************************************************************
; Author: Ashetyn White
;
; Creation Date: 11/29/16
;****************************************************************************************************;
;		         )																						                                           ;
;		        ) \           )                                   __  __   ______   ______				       ;
;		   )   / ) (   )     ) \                                 / /_/ /  / __  /  /_   _/ 				       ; 	
;		  ) \  \(_)/  ) \   / ) (   )                           / __  /  / /_/ /    / /					         ;
;		 / ) (       / ) (  \(_)/  ) \                         /_/ /_/  /_____/    /_/					         ;
;		 \(_)/       \(_)/        / ) (                               ______   __  __   __  __    ____	 ;
;		  o                       \(_)/                              /_   _/  / / / /  /  |/ /   / _  |	 ;
;		 o      ______/~/~/~/__           /((                         / /    / /_/ /  / /|  /   / /_| |	 ;
;		   o  // __            ====__    /_((                        /_/    /_____/  /_/ |_/   /_/  |_|	 ;
;		  o  //  @))       ))))      ===/__((															                               ;
;		     ))           )))))))        __((															                               ;
;		     \\     \)     ))))    __===\ _((															                               ;
;		      \\_______________====      \_((															                               ;
;		                                  \((															                               ;
;****************************************************************************************************;

sleeper = 0 ; used for looping while the user is choosing game type
bonus = 0
RV = 0
Score = %A_WorkingDir%\G\score.ini

Diglett = %A_WorkingDir%\G\P\diglett.png
Dugtrio = %A_WorkingDir%\G\P\images.png
CoinPing = %A_WorkingDir%\G\P\PokeCoin.png

TopWall = %A_WorkingDir%\G\P\TopWall.png
LeftWall = %A_WorkingDir%\G\P\ShrubberyWall.png
RightWall = %A_WorkingDir%\G\P\BarrelWall.png
BottomWall = %A_WorkingDir%\G\P\GrassWall.png


Gui, start: Font, S15 CDefault Underline, impact
Gui, start:Add, Picture, x-8 y0 w380 h270 , %A_WorkingDir%\G\P\DiglettHome.jpg
Gui, start:Font, S10, impact
Gui, start:Add, Button, x262 y60 w80 h30 gNavGo, Start  ;label for starting pokemon
Gui, start:Add, Button, x20 y60 w80 h30 gNavHo, Start ; label for starting
Gui, start:Font, S15 CRed Italic Underline, impact
;~ Gui, start:Add, Text, x12 y10 w190 h30 , Catch the Pokemon!!!
; Generated using SmartGUI Creator for SciTE
Gui, start:Show, w361 h259, Catchem GUI






if not (sleeper = "1") then
{
Loop, 
{
	Sleep, 50
	if (sleeper = "1") then
		break
}
}
StartScript:
gui, submit

if (hp = "no") then ;if harry potter is/isnt chosen, vars are changed to reflect the game time
{
	DigH = 25
	DigW = 33
	CoinH = 25
	CoinW = 25
	TrainerH = 30
	TrainerW = 30
	BottomWallH = 45
	BottomWallW = 480
	DugH = 35
	DugW = 43
	Diglett = %A_WorkingDir%\G\P\diglett.png
	Dugtrio = %A_WorkingDir%\G\P\images.png
	CoinPing = %A_WorkingDir%\G\P\PokeCoin.png
	trainer = %A_WorkingDir%\G\P\trainer.png
	;~ trainerRV := "%A_WorkingDir%\G\P\trainer.png"

	TopWall = %A_WorkingDir%\G\P\TopWall.png
	LeftWall = %A_WorkingDir%\G\P\ShrubberyWall.png
	RightWall = %A_WorkingDir%\G\P\BarrelWall.png
	BottomWall = %A_WorkingDir%\G\P\GrassWall.png
}
if (hp = "yes") then
{
	if (G = "1") then
	{
		trainer = %A_WorkingDir%\G\H\Harry.png
		trainerRV = %A_WorkingDir%\G\H\HarryRV.png
		CoinPing = %A_WorkingDir%\G\H\GriffleDick.png
		BottomWall = %A_WorkingDir%\G\H\GriffTowers.png
		TrainerH = 40
		TrainerW = 60
		
	}
	if (S = "1") then
	{
		trainer = %A_WorkingDir%\G\H\Malfoy.png
		trainerRV = %A_WorkingDir%\G\H\MalfoyRV.png
		CoinPing = %A_WorkingDir%\G\H\SlitherHen.png
		BottomWall = %A_WorkingDir%\G\H\SlythTowers.png
		TrainerH = 50
		TrainerW = 50
	}
	if (R = "1") then
	{
		trainer = %A_WorkingDir%\G\H\RavenRider.png
		trainerRV = %A_WorkingDir%\G\H\RavenRiderRV.png
		CoinPing = %A_WorkingDir%\G\H\Rave&Clow.png
		BottomWall = %A_WorkingDir%\G\H\RaveTowers.png
		TrainerH = 50
		TrainerW = 50
	}
	if (H = "1") then
	{
		trainer = %A_WorkingDir%\G\H\HuffleRider.png
		trainerRV = %A_WorkingDir%\G\H\HuffleRiderRV.png
		CoinPing = %A_WorkingDir%\G\H\Huff&Puff.png
		BottomWall = %A_WorkingDir%\G\H\HuffTowers.png
		TrainerH = 50
		TrainerW = 50
	}
		DigH = 25
		DigW = 33
		DugH = 45
		DugW = 35
		CoinH = 20
		CoinW = 20
		BottomWallH = 50
		BottomWallW = 440
	Diglett = %A_WorkingDir%\G\H\Snitch.png
	Dugtrio = %A_WorkingDir%\G\H\Triwizard_Cups.jpg
	;~ CoinPing := "%A_WorkingDir%\G\H\PokeCoin.png"
	
	;~ trainer := "%A_WorkingDir%\G\H\trainer.png"

	TopWall := 
	LeftWall := 
	RightWall := 
}


sleeper = 1
Time = 60
Gui, Start: destroy
X1 = 100
Y1 = 100

X2 = 212
Y2 = 300
T = 0
i = 0
decide = 0
Point = 0
Level = 1
HighScore = 0

i+=1
Gui, Add, Text, x40 y5 w30 h20 , Level:
Gui, Add, Text, x72 y5 w20 h20 vLevel, %Level%
Gui, Add, GroupBox, x17 y40 w440 h300 , 
Gui, Add, Picture, x212 y300 w%TrainerW% h%TrainerH% Vprogression, %trainer% 
Gui, Add, Picture, x700 y700 w%TrainerW% h%TrainerH% , %trainerRV% 
Gui, Add, Picture, x700 y700 w%DugW% h%DugH%  , %Dugtrio%
Gui, Add, Picture, x99 y100 w%DigW% h%DigH%  , %Diglett%

Gui, Add, Picture, x18 y40 w438 h10  , %TopWall%
Gui, Add, Picture, x05 y40 w15 h300  , %LeftWall%
Gui, Add, Picture, x450 y40 w15 h300  , %RightWall%
Gui, Add, Picture, x1 y340 w%BottomWallW% h%BottomWallH%  , %BottomWall%

gui,add,text, x72 y20 w60 h20 vtext, %Point%
gui,add,text, x40 y20 w60 h20 , Coins:
Gui, Add, Picture, x700 y700 w%CoinW% h%CoinH%  , %CoinPing%
gui,add,text, x410 y5 w90 h20 , :HighScore
gui,add,text, x350 y5 w50 h17 vHighScore, %HighScore%
gui,add,text, x410 y22 w50 h20 , :Timer
gui,add,text, x380 y22 w25 h20 vTimer, %Time%
; Generated using SmartGUI Creator for SciTE

settimer,progress,10
settimer,progression,10
settimer,text,1
settimer,level,1
Gui, Show, w479 h379, Chase the Digletts!
return

HighScore:
level:
text:
progression:
Timer:
if (Time !=  "0") then
{
if GetKeyState("Right","P") ;for keystates of the arrow keys. these keys are for movement of the player. x/y coords are updated slowly to reflect movement
{
	if (hp = "Yes") then
	RV = 0
	if not (X2 = "400") then
		X2 += 1
}
if GetKeyState("Up","P")
{
	if not (Y2 = "50") then
		Y2 -= 1
}
if GetKeyState("Left","P")
{
	if (hp = "Yes") then
	RV = 1
	if not (X2 = "20") then
		X2 -= 1
}
if GetKeyState("Down","P")
{
	if not (Y2 = "300") then
		Y2 += 1
}




progress:
i += 1
c += 1
T += 1

if (Time = "0") then ; set a timer for the game time. currently set to 60 seconds
{
	settimer,progress, off
	settimer,progression, Off
	settimer,text, Off
	settimer,level, Off
	gui, destroy
	gosub, EndGame
}

if (T = "300") then
{
	Time -= 1
	T = 0
}
If (c = "100") then
{
	guicontrol, move, %CoinPing% , x700 y700 w25 h25
}
	
If (i = "500") then ; if i is 500, the goal location is randomized within the used coordinates of the game gui.
{
	
Random, X1, 20, 400
Random, Y1, 50, 300
i = 0
if (bonus = "1") then
	{
		guicontrol, move, %Diglett%, x700 y700
		Guicontrol, Disable, %Diglett%
		GuiControl, show ,%Dugtrio%
	}
if (bonus = "0") then
	{
		guicontrol, move, %Dugtrio%, x700 y700
		Guicontrol, Disable, %Dugtrio%
		GuiControl, show ,%Diglett%
	}
}

Xwinner := (X1-X2)*(-1)
YWinner := (Y1-Y2)*(-1)

If (Xwinner < "10") then ; the xwinner/ywinner section sees how close the user is to the goal. if close enough, the goal disappears and the player is rewarded a point
{
	if (Xwinner > "0") Then
	{
		Point += 10
		Guicontrol, Disable, %Diglett%
		guicontrol, move, %CoinPing% , x2 y9 w30 h30
		c = 0
		i = 400
		X1 = 1000
		Y1 = 1000
		if (point = "100") then
		{
			HighScore += Point
			Level += 1
			Point = 0
		}
		if (bonus = "1") then
		{
			highscore += 500
			bonus = 0
			Guicontrol, Disable, %Dugtrio%
		}
	}
}

If (Xwinner < "-10") then
{
	if (Xwinner > "0") Then
	{
		Point += 10
		Guicontrol, Disable, %Diglett%
		guicontrol, move, %CoinPing%, x2 y9 w30 h30
		c = 0
		i = 400
		X1 = 1000
		Y1 = 1000
		if (point = "100") then ; when the player gains 100 points, the bonus
		{
			HighScore += Point
			if (bonus = "1") then
			{
				highscore += 500
				bonus = 0
				Guicontrol, Disable, %Dugtrio%
			}
			Level += 1
			Point = 0
		}
	}
}

If (Ywinner < "-10") then
{
	if (Ywinner > "0") Then
	{
		Point += 10
		Guicontrol, Disable, %Diglett%
		guicontrol, move, %CoinPing%, x2 y9 w30 h30
		c = 0
		i = 400
		X1 = 1000
		Y1 = 1000
		if (point = "100") then
		{
			HighScore += Point
			if (bonus = "1") then
			{
				highscore += 500
				bonus = 0
				Guicontrol, Disable, %Dugtrio%
			}
			Level += 1
			Point = 0
		}
	}
}

If (Ywinner < "10") then
{
	if (Ywinner > "0") Then
	{
		Point += 10
		Guicontrol, Disable, %Diglett%
		guicontrol, move, %CoinPing%, x2 y9 w30 h30
		c = 0
		i = 400
		X1 = 1000
		Y1 = 1000
		if (point = "100") then
		{
			HighScore += Point
			if (bonus = "1") then
			{
				highscore += 500
				bonus = 0
				Guicontrol, Disable, %Dugtrio%
			}
			Level += 1
			Point = 0
		}
	}
}


If (Level = "3" or Level = "6" or Level = "10" or Level = "13") then ; every few level increases, the bonus round is enacted. bonus increases goal value as well as the image associated.
{
	if (bonus = "0") then
		
	if (bonus = "0") then
		bonus = 1
}

if (bonus = "1") then ; if the bonus rount is enacted, the goal image and value changes.
	guicontrol,move, %Dugtrio%, x%X1% y%Y1%
if (bonus = "0") then
	guicontrol,move, %Diglett%, x%X1% y%Y1%
if (RV = "0") then
{
	guicontrol,move, %Trainer%, x%X2% y%Y2%
	guicontrol,move, %TrainerRV%, x700 y700
}
if (RV = "1") then
{
	guicontrol,move, %Trainer%, x700 y700
	guicontrol,move, %TrainerRV%, x%X2% y%Y2%
}
guicontrol,,Level, %Level%
guicontrol,,Text, %point%
guicontrol,,HighScore, %HighScore%
guicontrol,, Timer, %Time%

return
}

return
NavHo:
hp = Yes
Gui, Destroy
Gui, Add, Picture, x12 y0 w430 h60 , %A_WorkingDir%\G\H\Choose.png
Gui, Add, Picture, x2 y70 w110 h130 , %A_WorkingDir%\G\H\GriffleDick.png
Gui, Add, Picture, x332 y70 w110 h130 , %A_WorkingDir%\G\H\Huff&Puff.png
Gui, Add, Picture, x112 y70 w110 h130 , %A_WorkingDir%\G\H\Rave&Clow.png
Gui, Add, Picture, x222 y70 w110 h130 , %A_WorkingDir%\G\H\SlitherHen.png
Gui, Add, Radio, x12 y210 w80 h20 vG, GriffleDork
Gui, Add, Radio, x122 y210 w100 h20 vR, Rave & clap
Gui, Add, Radio, x232 y210 w100 h20 vS, Slither In
Gui, Add, Radio, x352 y210 w90 h20 vH, HuffleLame
Gui, Add, Button, x332 y250 w100 h30 gStartScript, GO
; Generated using SmartGUI Creator for SciTE
Gui, Show, w451 h295, Sorting Hack
return
goto, StartScript
NavGo:
hp = No
goto, StartScript

return
EndGame:
gui, destroy
Scores = %A_WorkingDir%\G\Scores.ini
Highscore += Point
Loop,
{
	IniRead, Score, %scores%, A1, Key%A_index%
	if (score < HighScore or Score = "ERROR") then
	{
		MsgBox, %score%
		IniWrite, %HighScore%, %scores%, A1, Key%A_index%
		break
	}
}

Leaderboard := object()


	IniRead, Score1, %scores%, A1, Key1
	IniRead, Score2, %scores%, A1, Key2
	IniRead, Score3, %scores%, A1, Key3
	IniRead, Score4, %scores%, A1, Key4
	IniRead, Score5, %scores%, A1, Key5
	IniRead, Score6, %scores%, A1, Key6
	IniRead, Score7, %scores%, A1, Key7
	IniRead, Score8, %scores%, A1, Key8
	IniRead, Score9, %scores%, A1, Key9
	IniRead, Score10, %scores%, A1, Key10




Gui, Highscores: Font, S12 CBlack, Impact
Gui, Highscores: Add, Text, x22 y90 w240 h30 , 2. %Score2%
Gui, Highscores: Add, Text, x22 y120 w230 h30 , 3. %Score3%
Gui, Highscores: Add, Text, x22 y150 w230 h30 , 4. %Score4%
Gui, Highscores: Add, Text, x22 y180 w240 h30 , 5. %Score5%
Gui, Highscores: Add, Text, x22 y210 w240 h30 , 6. %Score6%
Gui, Highscores: Add, Text, x22 y240 w240 h30 , 7. %Score7%
Gui, Highscores: Add, Text, x22 y270 w240 h30 , 8. %Score8%
Gui, Highscores: Add, Text, x22 y300 w240 h30 , 9. %Score9%
Gui, Highscores: Add, Text, x22 y60 w240 h30 , 1. %Score1%
Gui, Highscores: Add, Text, x22 y330 w240 h30 , 10. %Score10%
Gui, Highscores: Add, Button, x282 y280 w100 h30 gnavRe, Restart
Gui, Highscores: Add, Button, x282 y310 w100 h30 gguiclose, Leave
Gui, Highscores: Font, S24 CRed Bold Italic Underline, Impact
Gui, Highscores: Add, Text, x62 y0 w220 h50 , High Scores!
; G,enerated using SmartGUI Creator for SciTE
Gui, Highscores: Show, w400 h365, The best of the kinda good..
return

GuiClose:
ExitApp

navRe:
Reload
ExitApp
return

