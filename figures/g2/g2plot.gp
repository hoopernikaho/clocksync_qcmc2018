#!/usr/bin/gnuplot

set terminal postscript eps color enhanced solid font 'Helvetica, 16pt'\
 size 8.6cm, 6cm  dl .5

manual_offset = -3827495
range = 600
#unset bars
set output 'g2.eps'
set xrange [- range/2: range/2]
set ytics 1000
#set logscale y

# labels
# set label '-3827495' at graph 0.805, graph -0.105
set xlabel font 'Helvetica, 16pt' "{/Symbol d}+3827495 (ns)" offset 0, 0.7
set ylabel font 'Helvetica, 16pt' 'Coincidences' offset 1



# plot
plot \
	'fibre_00m_data.dat' u (($1-manual_offset)):2:3 with yerrorbar lw 3 pt 0 lc 'grey' notitle, \
	'fibre_05m_data.dat' u (($1-manual_offset)):2:3 with yerrorbar lw 3 pt 0 lc 'grey' notitle, \
	'fibre_30m_data.dat' u (($1-manual_offset)):2:3 with yerrorbar lw 3 pt 0 lc 'grey' notitle, \
	'fibre_50m_data.dat' u (($1-manual_offset)):2:3 with yerrorbar lw 3 pt 0 lc 'grey' notitle, \
		'fibre_00m_fit.dat' u (($1-manual_offset)):2 w l lw 3 lc 'black' title "1.7m", \
		'fibre_00m_fit.dat' u (($1-manual_offset)):3 w l lw 3 lc 'black' notitle, \
		'fibre_05m_fit.dat' u (($1-manual_offset)):2 w l lw 3 lc 'blue' title "6.7m", \
		'fibre_05m_fit.dat' u (($1-manual_offset)):3 w l lw 3 lc 'blue' notitle, \
		'fibre_30m_fit.dat' u (($1-manual_offset)):2 w l lw 3 lc 'red' title "31.7m", \
		'fibre_30m_fit.dat' u (($1-manual_offset)):3 w l lw 3 lc 'red' notitle, \
		'fibre_50m_fit.dat' u (($1-manual_offset)):2 w l lw 3 lc 'green' title "51.7m", \
		'fibre_50m_fit.dat' u (($1-manual_offset)):3 w l lw 3 lc 'green' notitle, \

