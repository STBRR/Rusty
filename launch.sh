#!/bin/bash
# Ignite Launch Script

# Setting up the Terminal
echo $TERM
export TERM=xterm

echo "[!] Terminal Set: 'xterm'"
echo $TERM

clear
while true;
do
    echo "[!] Starting server..."
    echo "[!] Checking for Rust Server Updates"

    # This'll either install upon the first time launching or check for updates
    steamcmd +login anonymous +force_install_dir $(pwd) +app_update 258550 +quit
    

    echo "[!] Starting RustDedicated Server"
    ./RustDedicated -batchmode -nographics \
    -server.hostname "[EU] Ignite | X2 | Solo/Duo/Trio | Small Map | Weekly Wipe" \
    -server.identity "VanillaSD" \
    -server.description "An Upcoming Rust Community!\nWe strive on providing a friendly non-toxic environment for both new and seasoned Rust players!\n\nWeekly Wipes every Thursday at 9am GMT\nMax Team Size of: 3 (Trio's)\nFriendly & Active Admin\n\nDiscord: https://discord.link/Ignite\nVIP can be purchased at: https://ignite.tebex.io" \
    -server.url "https://join.igniterp.cc" \
    -server.maxplayers 128 \
    -server.tags "weekly" \
    -server.worldsize 1500 \
    -server.seed 96984\
    -rcon.port 28016 \
    -rcon.password "stabberlol123" \
    -rcon.web 1 \
    -spawn.min_rate 2.5 \
    -spawn.max_rate 2.5 \
    -spawn.min_density 2.5 \
    -spawn.max_density 2.5 \
    -ai.npc_junkpile_a_spawn_chance 1 \
    -ai.npc_junkpile_g_spawn_chance 0 \
    -maxteamsize 3

    echo "\nRestarting server...\n"
done
