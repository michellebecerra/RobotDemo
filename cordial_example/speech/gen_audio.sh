#!/bin/bash

rm -rf data phrases.yaml
mkdir data
rosrun cordial_tts gen_phrases.py Justin GDNAJYDWFVWE7HEH4ZLA 2JyYsTIU4apa3xFVj2rAJQxQmaixhwZtv2V+/pII data phrases.yaml script.txt
oggdec data/*.ogg
