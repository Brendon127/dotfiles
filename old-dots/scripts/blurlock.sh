LOGO=~/.config/i3/i3lock_temp/logo.png

IMAGE1=~/.config/i3/i3lock_temp/i3lock1.png
IMAGE2=~/.config/i3/i3lock_temp/i3lock2.png
IMAGE3=~/.config/i3/i3lock_temp/i3lock3.png

scrot $IMAGE1  -u

convert -brightness-contrast -30x-50 $IMAGE1 $IMAGE1

convert -filter Gaussian -resize 25% -resize 400% $IMAGE1 $IMAGE1

convert $IMAGE1 -crop 1366x768+0+0 $IMAGE2
composite -gravity center $LOGO $IMAGE2 $IMAGE2

convert $IMAGE1 -crop 1366x768+1366+0 $IMAGE3
composite -gravity center $LOGO $IMAGE3 $IMAGE3

convert $IMAGE2 $IMAGE3 +append $IMAGE1

i3lock -i $IMAGE1
# sxiv $IMAGE1

rm $IMAGE1 $IMAGE2 $IMAGE3

