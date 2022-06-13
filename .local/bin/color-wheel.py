#!/usr/bin/python3
import sys

# arg is written like r;g;b

if len(sys.argv) < 2:
    print("I need a color as argument")
    sys.exit()

# read colors from args, convert to numbers and divide by 255
r, g, b = sys.argv[1].split(';')
r = float(r) / 255
g = float(g) / 255
b = float(b) / 255

# cmax and cmin
cmin = min(r, g, b)
cmax = max(r, g, b)
delta = cmax - cmin

# calculate hue
if delta == 0:
    print("grey")
    sys.exit()
elif cmax == r:
    hue = ((g - b) / delta) % 6
elif cmax == g:
    hue = (b - r) / delta + 2
elif cmax == b:
    hue = (r - g) / delta + 4

# hue must be a positive integer
hue = int(hue * 60)
if hue < 0:
    hue += 360

# calculating lightness and saturation
l = (cmin + cmax) / 2;
if delta == 0:
    s = 0
else:
    s = 1 - abs(2 * l - 1)
if l < 0.2 or l > 0.8 or s < 0.4:
    print("grey")
    sys.exit()

# color definition
if hue < 30:
    print("red")
elif hue < 90:
    print("yellow")
elif hue < 150:
    print("green")
elif hue < 210:
    print("cyan")
elif hue < 270:
    print("blue")
elif hue < 330:
    print("magenta")
else:
    print("red")
