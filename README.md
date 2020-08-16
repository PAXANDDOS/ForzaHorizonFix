# forzahorizon4fix
Fix for the Forza Horizon 4 Crashes.

Hello! Forza Horizon 4 is known for its crashes, and often it happens because of the explorer. It happened to me too, so I decided to look for a fix. 
Found some that stop and launch explorer with the num button and found it uncomfortable. I made a simple batch file that helped me a lot and I'm still using it. 

So how does it work?

(If you run FH4Fix.bat) First, it starts Forza with high priority. (it was hard to found how to start it because it has no .exe that will start it)
Then you'll have to wait 50 seconds for the game to finally start. On my PC it starts after around 50 seconds so that's it.
Then the explorer process will be killed, it launches again as soon as you close FH4. (every 5 seconds program checks if the FH4 still running, if no - explorer starts and the program ends).

If this didn't help or you've experienced some errors in-game, try launching FH4Fix Services(run as administrator). It does exactly the same thing, just checks for important Xbox services and starts them before the game.

That's all. It's my first post to GitHub tho, dunno how it works yet.
