killall polybar
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top-left &
    MONITOR=$m polybar --reload top-center &
    MONITOR=$m polybar --reload top-right &
done
