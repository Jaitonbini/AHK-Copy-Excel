^k::		;Internet browser must be 1st icon and Excel must be 6th icon on lower taskbar
		;KeyWait, RCtrl, D

CoordMode, Mouse, Screen

Loop 90

{
MouseMove, 415, 316
send {RButton}
sleep 1000
Mousemove, 496, 378
sleep 1000
send {click}
sleep 1000
MouseMove, 415, 316
sleep 57000

}


MouseMove, 87, 1180	; clicking the browser icon
Sleep 1000
send {Click}
Sleep 7000
MouseMove, -545, 45	;search bar
Sleep 1000
send {Click}
sleep 1000
Send, http://apex.commodities.int.thomsonreuters.com/ords/prod/f?p=2100:1:105461927069595:::::
Sleep 5000
Send {Enter}
Sleep 7000
MouseMove, -219, 129	;piers
sleep 1000
send {Click}
sleep 7000
MouseMove, -1343, 127	;search flows
sleep 1000
send {Click}
sleep 7000
MouseMove, -1701, 213	;commodity group
sleep 1000
send {Click}
sleep 1000
MouseMove, -1717, 258	;Energy
Sleep 1000
send {Click}
Sleep 5000
send {Click}
MouseMove, -1451, 212	;commodity
Sleep 1000
Send {Click}
Sleep 1000
MouseMove, -1485, 437	;oil/oil products
Sleep 1000
Send {Click}
Sleep 1000
MouseMove, 394, 1183	;Excel
Sleep, 1000
MouseMove, 394, 1068
Sleep, 2500
send, {Click}

Loop 358

{
send, ^c		;copy excel
MouseMove, -1819, 9
Send, {Click}		;click the right tab
Sleep, 500
MouseMove, -1207, 346
sleep, 500
Send, {Click}
Send, {Click}		;click recnum
sleep, 500
Send, ^v
sleep, 500
MouseMove, -243, 173
sleep, 500
Send {Click}		;click search
Sleep 4000
MouseMove, -1906, 425
sleep, 500
send, ^{Click}	;open new tab with flow	

;KeyWait, RCtrl, D				;change between semi or fully automated
Sleep, 15000
MouseMove, -1642, 14	;click new tab
send, {Click}
MouseMove, -1702, 311	;click change type search bar
sleep, 500
send, {Click}
MouseMove, -1735, 498	; click Volume Change
sleep, 500
send, {Click}

MouseMove, 394, 1183
Sleep, 500
MouseMove, 394, 1068
Sleep, 500
send, {Click}		;Open up Excel
sleep 500
send, {Left}		;Excel move cursor to copy
sleep 500
send, ^c
sleep 500

MouseMove, -684, 307	;paste new quantity number 
sleep, 500
send, {Click}
sleep, 100
send, {Click}
sleep, 100
send, {Click}
sleep, 500
Send, ^v
sleep, 500
MouseMove, -1833, 245	;click on save
sleep, 500
send, {Click}
;KeyWait, RCtrl, D		;change between semi or fully automated
Sleep, 15000
MouseMove, -1541, 11
Sleep, 500
send {Click}		;close tab


MouseMove, 394, 1183
Sleep, 500
MouseMove, 394, 1068
Sleep, 500
send, {Click}		;Open up Excel
sleep 500
send, +{Right}
sleep 500
MouseMove, 297, 99	;click fill button
Sleep, 500
send, {Click}
Sleep, 500


			;Fail-check


MouseMove, -1819, 9
Send, {Click}		;click the right tab
Sleep, 500
MouseMove, -243, 173
sleep, 500
Send {Click}		;click search
sleep, 4000

MouseMove, -1360, 429
sleep, 500
send, {Click}
sleep, 100
send, {Click}
sleep, 100
send, {Click}
sleep, 500
send, ^c
Sleep, 500
MouseMove, 394, 1183
Sleep, 500
MouseMove, 394, 1068
Sleep, 500
send, {Click}		;Open up Excel
Sleep, 500
Send, {Right}
Sleep, 500
Send, {Right}
sleep, 500
send, ^v
sleep, 500
send, {Down}
sleep, 500
send, {Left}
Sleep, 500

}





return

Escape::
ExitApp
Return