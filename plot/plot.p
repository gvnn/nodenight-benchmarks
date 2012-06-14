# output as png image
set terminal png

# save file to "out.png"
set output "out.png"

# graph title
set title "ab testing"

# y-axis grid
set grid y
set yrange [0:100]

# x-axis label
set xlabel "request"

# y-axis label
set ylabel "response time (ms)"

plot  "plot/rails.dat" using 9 smooth sbezier with lines title "rails", \
      "plot/django.dat" using 9 smooth sbezier with lines title "django", \
      "plot/node.dat" using 9 smooth sbezier with lines title "node", \
      "plot/php.dat" using 9 smooth sbezier with lines title "php", \
      "plot/python.dat" using 9 smooth sbezier with lines title "python", \
      "plot/ruby.dat" using 9 smooth sbezier with lines title "ruby", \
      "plot/express.dat" using 9 smooth sbezier with lines title "express", \
      "plot/clustered-node.dat" using 9 smooth sbezier with lines title "clustered-node"