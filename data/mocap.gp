#!/usr/bin/gnuplot

set terminal png size 800, 600
set output "mocap.png"

mapPose="slam-camera_position_2012-01-27-01-43-23_error_mapPose.csv"
planPose="slam-camera_position_2012-01-27-01-43-23_error_planPose.csv"
evartHead="slam-camera_position_2012-01-27-01-43-23_evart_head.csv"

set datafile separator ","
set xrange [20:50]

set xlabel "Time (s)" 0.0, 0.0 
set ylabel "Camera position (m)" 0.0, 0.0 

plot evartHead u 1:(-$3-0.11277) w l t 'Motion capture (X)', \
     mapPose u 1:3 w l t 'Localization (X)', \
     mapPose u 1:2 w l t 'Motion capture (Y)', \
     evartHead u 1:(-$2+1.41653198242) w l t 'Localization (Y)'

# plot evartHead u ($1):(-$3-0.11277) w l, mapPose u ($1-0.6):3 w l, mapPose u 1:2 w l, evartHead u ($1):(-$2+1.41653198242) w l