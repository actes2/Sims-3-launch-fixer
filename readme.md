# The Sims 3 Launch fixer

For some odd reason in modern instances of windows, **The Sims 3** really doesn't like launching at a lower affinity, so it crashes on startup due to some unknown reason (.NET 2.0 was an odd time I suppose)

## What's the fix?

The origin of this fix is broadly thrown around on a few forums for **The Sims 3**

Which users discovered that if they quickly swap the affinity of the game from priority 1, to the original priority, the game runs as intended.

I decided to create a powershell script which can be leveraged as a "Scheduled Task" or as a background script that'll resolve the issue in a more standardized format. 

For anyone that stumbles upon this repository in search of a fix, simply `run the powershell script in the background` as you go to launch the steam version of **The Sims 3** and you will be able to play the game as intended.