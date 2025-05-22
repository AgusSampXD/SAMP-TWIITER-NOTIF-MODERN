/*
	SHARE NAME : AGUSSAMP
	LINK DISCORD : https://discord.gg/PvuE2Fxzg6
*/

#define DIALOG_HP_TWITTER 531
new TwtTimer[MAX_PLAYERS];
new Text:TWTNOTIFNEW[14];
new PlayerText:TWTNOTIFTD[MAX_PLAYERS][2];

public OnGameModeInit()
{
    TWTNOTIFNEW[0] = TextDrawCreate(407.000000, 404.000000, "ld_dual:white");
    TextDrawFont(TWTNOTIFNEW[0], 4);
    TextDrawLetterSize(TWTNOTIFNEW[0], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[0], 103.000000, 37.000000);
    TextDrawSetOutline(TWTNOTIFNEW[0], 1);
    TextDrawSetShadow(TWTNOTIFNEW[0], 0);
    TextDrawAlignment(TWTNOTIFNEW[0], 1);
    TextDrawColor(TWTNOTIFNEW[0], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[0], 255);
    TextDrawBoxColor(TWTNOTIFNEW[0], 50);
    TextDrawUseBox(TWTNOTIFNEW[0], 1);
    TextDrawSetProportional(TWTNOTIFNEW[0], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[0], 0);

    TWTNOTIFNEW[1] = TextDrawCreate(398.000000, 400.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[1], 4);
    TextDrawLetterSize(TWTNOTIFNEW[1], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[1], 18.500000, 22.000000);
    TextDrawSetOutline(TWTNOTIFNEW[1], 1);
    TextDrawSetShadow(TWTNOTIFNEW[1], 0);
    TextDrawAlignment(TWTNOTIFNEW[1], 1);
    TextDrawColor(TWTNOTIFNEW[1], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[1], 255);
    TextDrawBoxColor(TWTNOTIFNEW[1], 50);
    TextDrawUseBox(TWTNOTIFNEW[1], 1);
    TextDrawSetProportional(TWTNOTIFNEW[1], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[1], 0);

    TWTNOTIFNEW[2] = TextDrawCreate(398.000000, 423.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[2], 4);
    TextDrawLetterSize(TWTNOTIFNEW[2], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[2], 18.500000, 22.000000);
    TextDrawSetOutline(TWTNOTIFNEW[2], 1);
    TextDrawSetShadow(TWTNOTIFNEW[2], 0);
    TextDrawAlignment(TWTNOTIFNEW[2], 1);
    TextDrawColor(TWTNOTIFNEW[2], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[2], 255);
    TextDrawBoxColor(TWTNOTIFNEW[2], 50);
    TextDrawUseBox(TWTNOTIFNEW[2], 1);
    TextDrawSetProportional(TWTNOTIFNEW[2], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[2], 0);

    TWTNOTIFNEW[3] = TextDrawCreate(500.000000, 400.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[3], 4);
    TextDrawLetterSize(TWTNOTIFNEW[3], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[3], 18.500000, 22.000000);
    TextDrawSetOutline(TWTNOTIFNEW[3], 1);
    TextDrawSetShadow(TWTNOTIFNEW[3], 0);
    TextDrawAlignment(TWTNOTIFNEW[3], 1);
    TextDrawColor(TWTNOTIFNEW[3], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[3], 255);
    TextDrawBoxColor(TWTNOTIFNEW[3], 50);
    TextDrawUseBox(TWTNOTIFNEW[3], 1);
    TextDrawSetProportional(TWTNOTIFNEW[3], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[3], 0);

    TWTNOTIFNEW[4] = TextDrawCreate(500.000000, 423.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[4], 4);
    TextDrawLetterSize(TWTNOTIFNEW[4], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[4], 18.500000, 22.000000);
    TextDrawSetOutline(TWTNOTIFNEW[4], 1);
    TextDrawSetShadow(TWTNOTIFNEW[4], 0);
    TextDrawAlignment(TWTNOTIFNEW[4], 1);
    TextDrawColor(TWTNOTIFNEW[4], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[4], 255);
    TextDrawBoxColor(TWTNOTIFNEW[4], 50);
    TextDrawUseBox(TWTNOTIFNEW[4], 1);
    TextDrawSetProportional(TWTNOTIFNEW[4], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[4], 0);

    TWTNOTIFNEW[5] = TextDrawCreate(401.000000, 411.000000, "ld_dual:white");
    TextDrawFont(TWTNOTIFNEW[5], 4);
    TextDrawLetterSize(TWTNOTIFNEW[5], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[5], 114.500000, 24.000000);
    TextDrawSetOutline(TWTNOTIFNEW[5], 1);
    TextDrawSetShadow(TWTNOTIFNEW[5], 0);
    TextDrawAlignment(TWTNOTIFNEW[5], 1);
    TextDrawColor(TWTNOTIFNEW[5], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[5], 255);
    TextDrawBoxColor(TWTNOTIFNEW[5], 50);
    TextDrawUseBox(TWTNOTIFNEW[5], 1);
    TextDrawSetProportional(TWTNOTIFNEW[5], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[5], 0);

    TWTNOTIFNEW[6] = TextDrawCreate(403.000000, 405.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[6], 4);
    TextDrawLetterSize(TWTNOTIFNEW[6], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[6], 16.500000, 12.000000);
    TextDrawSetOutline(TWTNOTIFNEW[6], 1);
    TextDrawSetShadow(TWTNOTIFNEW[6], 0);
    TextDrawAlignment(TWTNOTIFNEW[6], 1);
    TextDrawColor(TWTNOTIFNEW[6], 1097458175);
    TextDrawBackgroundColor(TWTNOTIFNEW[6], 255);
    TextDrawBoxColor(TWTNOTIFNEW[6], 50);
    TextDrawUseBox(TWTNOTIFNEW[6], 1);
    TextDrawSetProportional(TWTNOTIFNEW[6], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[6], 0);

    TWTNOTIFNEW[7] = TextDrawCreate(402.000000, 408.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[7], 4);
    TextDrawLetterSize(TWTNOTIFNEW[7], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[7], 9.500000, 5.000000);
    TextDrawSetOutline(TWTNOTIFNEW[7], 1);
    TextDrawSetShadow(TWTNOTIFNEW[7], 0);
    TextDrawAlignment(TWTNOTIFNEW[7], 1);
    TextDrawColor(TWTNOTIFNEW[7], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[7], 255);
    TextDrawBoxColor(TWTNOTIFNEW[7], 50);
    TextDrawUseBox(TWTNOTIFNEW[7], 1);
    TextDrawSetProportional(TWTNOTIFNEW[7], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[7], 0);

    TWTNOTIFNEW[8] = TextDrawCreate(404.000000, 406.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[8], 4);
    TextDrawLetterSize(TWTNOTIFNEW[8], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[8], 9.500000, 5.000000);
    TextDrawSetOutline(TWTNOTIFNEW[8], 1);
    TextDrawSetShadow(TWTNOTIFNEW[8], 0);
    TextDrawAlignment(TWTNOTIFNEW[8], 1);
    TextDrawColor(TWTNOTIFNEW[8], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[8], 255);
    TextDrawBoxColor(TWTNOTIFNEW[8], 50);
    TextDrawUseBox(TWTNOTIFNEW[8], 1);
    TextDrawSetProportional(TWTNOTIFNEW[8], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[8], 0);

    TWTNOTIFNEW[9] = TextDrawCreate(412.000000, 408.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[9], 4);
    TextDrawLetterSize(TWTNOTIFNEW[9], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[9], 9.500000, 2.000000);
    TextDrawSetOutline(TWTNOTIFNEW[9], 1);
    TextDrawSetShadow(TWTNOTIFNEW[9], 0);
    TextDrawAlignment(TWTNOTIFNEW[9], 1);
    TextDrawColor(TWTNOTIFNEW[9], -1);
    TextDrawBackgroundColor(TWTNOTIFNEW[9], 255);
    TextDrawBoxColor(TWTNOTIFNEW[9], 50);
    TextDrawUseBox(TWTNOTIFNEW[9], 1);
    TextDrawSetProportional(TWTNOTIFNEW[9], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[9], 0);

    TWTNOTIFNEW[10] = TextDrawCreate(411.000000, 406.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[10], 4);
    TextDrawLetterSize(TWTNOTIFNEW[10], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[10], 5.500000, 5.000000);
    TextDrawSetOutline(TWTNOTIFNEW[10], 1);
    TextDrawSetShadow(TWTNOTIFNEW[10], 0);
    TextDrawAlignment(TWTNOTIFNEW[10], 1);
    TextDrawColor(TWTNOTIFNEW[10], 1097458175);
    TextDrawBackgroundColor(TWTNOTIFNEW[10], 255);
    TextDrawBoxColor(TWTNOTIFNEW[10], 50);
    TextDrawUseBox(TWTNOTIFNEW[10], 1);
    TextDrawSetProportional(TWTNOTIFNEW[10], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[10], 0);

    TWTNOTIFNEW[11] = TextDrawCreate(418.000000, 407.000000, "TWITTER");
    TextDrawFont(TWTNOTIFNEW[11], 1);
    TextDrawLetterSize(TWTNOTIFNEW[11], 0.145833, 0.800000);
    TextDrawTextSize(TWTNOTIFNEW[11], 400.000000, 17.000000);
    TextDrawSetOutline(TWTNOTIFNEW[11], 0);
    TextDrawSetShadow(TWTNOTIFNEW[11], 0);
    TextDrawAlignment(TWTNOTIFNEW[11], 1);
    TextDrawColor(TWTNOTIFNEW[11], 1097458175);
    TextDrawBackgroundColor(TWTNOTIFNEW[11], 255);
    TextDrawBoxColor(TWTNOTIFNEW[11], 50);
    TextDrawUseBox(TWTNOTIFNEW[11], 0);
    TextDrawSetProportional(TWTNOTIFNEW[11], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[11], 0);

    TWTNOTIFNEW[12] = TextDrawCreate(405.000000, 410.000000, "ld_beat:chit");
    TextDrawFont(TWTNOTIFNEW[12], 4);
    TextDrawLetterSize(TWTNOTIFNEW[12], 0.600000, 2.000000);
    TextDrawTextSize(TWTNOTIFNEW[12], 9.500000, 2.000000);
    TextDrawSetOutline(TWTNOTIFNEW[12], 1);
    TextDrawSetShadow(TWTNOTIFNEW[12], 0);
    TextDrawAlignment(TWTNOTIFNEW[12], 1);
    TextDrawColor(TWTNOTIFNEW[12], 1097458175);
    TextDrawBackgroundColor(TWTNOTIFNEW[12], 255);
    TextDrawBoxColor(TWTNOTIFNEW[12], 50);
    TextDrawUseBox(TWTNOTIFNEW[12], 1);
    TextDrawSetProportional(TWTNOTIFNEW[12], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[12], 0);

    TWTNOTIFNEW[13] = TextDrawCreate(499.000000, 407.000000, "Now");
    TextDrawFont(TWTNOTIFNEW[13], 1);
    TextDrawLetterSize(TWTNOTIFNEW[13], 0.145833, 0.800000);
    TextDrawTextSize(TWTNOTIFNEW[13], 400.000000, 17.000000);
    TextDrawSetOutline(TWTNOTIFNEW[13], 0);
    TextDrawSetShadow(TWTNOTIFNEW[13], 0);
    TextDrawAlignment(TWTNOTIFNEW[13], 1);
    TextDrawColor(TWTNOTIFNEW[13], 1296911871);
    TextDrawBackgroundColor(TWTNOTIFNEW[13], 255);
    TextDrawBoxColor(TWTNOTIFNEW[13], 50);
    TextDrawUseBox(TWTNOTIFNEW[13], 0);
    TextDrawSetProportional(TWTNOTIFNEW[13], 1);
    TextDrawSetSelectable(TWTNOTIFNEW[13], 0);
    return 1;
}

public OnPlayerConnect(playerid)
{
    TWTNOTIFTD[playerid][0] = CreatePlayerTextDraw(playerid, 406.000000, 417.000000, "AgusSamp");
    PlayerTextDrawFont(playerid, TWTNOTIFTD[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, TWTNOTIFTD[playerid][0], 0.133333, 0.750000);
    PlayerTextDrawTextSize(playerid, TWTNOTIFTD[playerid][0], 513.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, TWTNOTIFTD[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, TWTNOTIFTD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, TWTNOTIFTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, TWTNOTIFTD[playerid][0], 255);
    PlayerTextDrawBackgroundColor(playerid, TWTNOTIFTD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, TWTNOTIFTD[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, TWTNOTIFTD[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, TWTNOTIFTD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, TWTNOTIFTD[playerid][0], 0);

    TWTNOTIFTD[playerid][1] = CreatePlayerTextDraw(playerid, 406.000000, 423.000000, "di cari sultan full modif, dana siap 100%");
    PlayerTextDrawFont(playerid, TWTNOTIFTD[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, TWTNOTIFTD[playerid][1], 0.133333, 0.750000);
    PlayerTextDrawTextSize(playerid, TWTNOTIFTD[playerid][1], 513.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, TWTNOTIFTD[playerid][1], 0);
    PlayerTextDrawSetShadow(playerid, TWTNOTIFTD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, TWTNOTIFTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, TWTNOTIFTD[playerid][1], 1296911871);
    PlayerTextDrawBackgroundColor(playerid, TWTNOTIFTD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, TWTNOTIFTD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, TWTNOTIFTD[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, TWTNOTIFTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, TWTNOTIFTD[playerid][1], 0);
    return 1;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_HP_TWITTER)
    {
		if(response)
  		{
			new text[128];

			if(PlayerInfo[playerid][pPrison] != 0) return ShowError(playerid, "Tidak Bisa Digunakaan Saat Dipenjara");
			if(PlayerInfo[playerid][pMuted] > 0) return ShowError(playerid, "Akun Media Diblokir");

			if(sscanf(inputtext, "s[128]", text))
   			{
 	    		return ShowPlayerDialog(playerid, DIALOG_HP_TWITTER, DIALOG_STYLE_INPUT, "Posting {33AAFF}TWITTER", "Masukan Text Apa Yang Mau Di Posting Di {33AAFF}TWITTER", "Posting", "Batal");
   			}
      		for(new i; i <MAX_PLAYERS; i++)
      		{
      		    new AgusSamp[258];
                TextDrawShowForPlayer(i, TWTNOTIFNEW[0]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[1]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[2]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[3]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[4]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[5]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[6]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[7]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[8]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[9]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[10]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[11]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[12]);
                TextDrawShowForPlayer(i, TWTNOTIFNEW[13]);
                PlayerTextDrawShow(i, TWTNOTIFTD[i][0]);
                PlayerTextDrawShow(i, TWTNOTIFTD[i][1]);

                format(AgusSamp, sizeof(AgusSamp), "%s", GetName(playerid));
                PlayerTextDrawSetString(i, TWTNOTIFTD[i][0], AgusSamp);

                format(AgusSamp, sizeof(AgusSamp), "%s", text);
                PlayerTextDrawSetString(i, TWTNOTIFTD[i][1], AgusSamp);

				TwtTimer[i] = SetTimerEx("TwtOffline", 9000, true, "d", i);
      		}
   		}
	}
    return 1;
}

CMD:usetw(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_HP_TWITTER, DIALOG_STYLE_INPUT, "Posting {33AAFF}TWITTER", "Masukan Text Apa Yang Mau Di Posting Di {33AAFF}TWITTER", "Posting", "Batal");
    return 1;
}

epublic: TwtOffline(playerid)
{
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[0]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[1]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[2]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[3]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[4]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[5]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[6]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[7]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[8]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[9]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[10]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[11]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[12]);
    TextDrawHideForPlayer(playerid, TWTNOTIFNEW[13]);
    PlayerTextDrawHide(playerid, TWTNOTIFTD[playerid][0]);
    PlayerTextDrawHide(playerid, TWTNOTIFTD[playerid][1]);
    KillTimer(TwtTimer[playerid]);
    return 1;
}