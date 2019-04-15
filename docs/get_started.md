# Get Started
!> UNDERTALE Engine is made in GameMaker Studio 2. So please make sure that you know the basic knowledge of using GMS2!

## Get the engine
UNDERTALE Engine is updated weekly. If you want to get the updates while keeping your changes in the engine, follow the following steps:

Go to the [repository page](https://github.com/TML233/undertale_engine), click **Fork** to fork the repository to your own Github Account.

Get **Github Desktop** [here](https://desktop.github.com/), and install it.
Launch it and clone the repository which you forked just now to your own machine.

After finishing cloning, click **Branch** → **New branch...**, create a branch _based on_ **the master branch**. You will develop your game on **this new branch**(hereafter referred to as **the game branch**).

Click **Show in Explorer**. It will open the project folder. Open **undertale_engine.yyp** to load the project.

## Before you start playing around
!> DO NOT rename the name of the project file, or you will have problems when trying to update the engine!

Open **Options** → **Windows** in the **Resources** window.
Change the value of the **Executable Name** box to your game name.
Don't forget to click **OK**!

Open the script **Macro_Engine**, change **game_name_here** in **#macro GAME_NAME "game_name_here"** to your game name.
For example:
```gml
#macro GAME_NAME "undertale_a_new_hope"
```

Save the script.

## Update the engine
When there's a update, checkout **the master branch**, click **Update from ...** in **Github Desktop**. If there are merge conflicts, fix it.
Then checkout **the game branch**, merge **the master branch** _into_ **the game branch**. If there are merge conflicts, fix it.