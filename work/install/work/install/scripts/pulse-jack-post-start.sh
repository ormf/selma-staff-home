#!/bin/bash
pactl load-module module-jack-sink channels=2
pactl load-module module-jack-sink client_name=PulseAudio_Speakers channels=2
pactl load-module module-jack-source channels=2
pactl load-module module-jack-source client_name=PulseAudio_JMix_Source channels=2
pacmd set-default-sink jack_out
pacmd set-default-source jack_in
a2jmidid -e&
