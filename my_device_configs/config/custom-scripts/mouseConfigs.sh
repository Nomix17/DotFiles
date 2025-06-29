#!/bin/bash

sleep 2

ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 rate set 1000
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 resolution active set 1
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 button 0 action set button 1
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 button 1 action set button 2
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 button 2 action set button 3
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 button 3 action set macro "KEY_F9"
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 button 4 action set macro "KEY_F8"
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 button 5 action set macro "KEY_F8"
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 led 0 set mode breathing
ratbagctl "Logitech G102 LIGHTSYNC Gaming Mouse" profile 0 led 0 set color 000000
