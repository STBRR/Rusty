#!/bin/bash
# IgniteRUST Launch Script

# map
# https://rustmaps.com/map/2300_580481

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
    steamcmd +login anonymous +force_install_dir /home/liam/Rust +app_update 258550 +quit

    echo "[!] Starting RustDedicated Server"
    ./RustDedicated -batchmode -nographics \
    -server.hostname "[EU] IgniteRUST | X2 | Duo | One Grid | Weekly | Beginner Friendly [JUST WIPED]" \
    -server.identity "VanillaSD" \
    -server.description "We're a new and Upcoming Rust Community!\nWe strive on providing a friendly non-toxic environment for both new and seasoned Rust players!\n\nWeekly Wipes every Thursday at 9am GMT\nMax Team Size of: 2 (Duo's)\nFriendly & Active Admin\n\nDiscord: https://discord.link/IgniteRUST\n\nVIP can be purchased at: https://ignite.tebex.io" \
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
    -maxteamsize 2

    echo "\nRestarting server...\n"
done
