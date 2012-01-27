#!/usr/bin/gnuplot

set terminal png size 800, 600
set output "mocap.png"

mapPose="slam-camera_position_2012-01-27-01-43-23_error_mapPose.csv"
planPose="slam-camera_position_2012-01-27-01-43-23_error_planPose.csv"
evartHead="slam-camera_position_2012-01-27-01-43-23_evart_head.csv"

set datafile separator ","
set xrange [20:50]
set key bottom right

set xlabel "Camera position" 0.0, 0.0 
set ylabel "Camera position" 0.0, 0.0 

set style line 1 linecolor rgb "blue"
set style line 2 linecolor rgb "red"

plot evartHead u (-$2+1.41653198242):(-$3-0.11277) w l ls 1 t 'Motion capture', \
     mapPose u 2:3 w l ls 2 t 'Localization'
