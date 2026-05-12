#!/bin/bash
INCREASE=$1  # "grow" or "shrink"
PERCENT=10   # 10% increase/decrease

# Get active window info
WINDOW=$(hyprctl activewindow -j)
IS_FLOATING=$(echo $WINDOW | jq -r '.floating')

if [ "$IS_FLOATING" = "true" ]; then
    # Original floating window logic
    SIZE=$(echo $WINDOW | jq -r '.size | "\(.[0]) \(.[1])"')
    POS=$(echo $WINDOW | jq -r '.at | "\(.[0]) \(.[1])"')
    WIDTH=$(echo $SIZE | awk '{print $1}')
    HEIGHT=$(echo $SIZE | awk '{print $2}')
    X=$(echo $POS | awk '{print $1}')
    Y=$(echo $POS | awk '{print $2}')

    # Get monitor info
    MONITOR=$(hyprctl monitors -j | jq -r ".[] | select(.focused == true)")
    MON_WIDTH=$(echo $MONITOR | jq -r '.width')
    MON_HEIGHT=$(echo $MONITOR | jq -r '.height')
    MON_X=$(echo $MONITOR | jq -r '.x')
    MON_Y=$(echo $MONITOR | jq -r '.y')

    # Calculate new size
    if [ "$INCREASE" = "grow" ]; then
        NEW_WIDTH=$((WIDTH + WIDTH * PERCENT / 100))
        NEW_HEIGHT=$((HEIGHT + HEIGHT * PERCENT / 100))
    else
        NEW_WIDTH=$((WIDTH - WIDTH * PERCENT / 100))
        NEW_HEIGHT=$((HEIGHT - HEIGHT * PERCENT / 100))
    fi

    # Calculate size difference for centering
    WIDTH_DIFF=$((NEW_WIDTH - WIDTH))
    HEIGHT_DIFF=$((NEW_HEIGHT - HEIGHT))
    NEW_X=$((X - WIDTH_DIFF / 2))
    NEW_Y=$((Y - HEIGHT_DIFF / 2))

    # Clamp to screen boundaries
    if [ $NEW_X -lt $MON_X ]; then
        NEW_X=$MON_X
    fi
    if [ $NEW_Y -lt $MON_Y ]; then
        NEW_Y=$MON_Y
    fi
    if [ $((NEW_X + NEW_WIDTH)) -gt $((MON_X + MON_WIDTH)) ]; then
        NEW_WIDTH=$((MON_X + MON_WIDTH - NEW_X))
        NEW_HEIGHT=$((NEW_WIDTH * HEIGHT / WIDTH))
    fi
    if [ $((NEW_Y + NEW_HEIGHT)) -gt $((MON_Y + MON_HEIGHT)) ]; then
        NEW_HEIGHT=$((MON_Y + MON_HEIGHT - NEW_Y))
        NEW_WIDTH=$((NEW_HEIGHT * WIDTH / HEIGHT))
    fi

    hyprctl dispatch resizewindowpixel exact $NEW_WIDTH $NEW_HEIGHT
    hyprctl dispatch movewindowpixel exact $NEW_X $NEW_Y
else
    if [ "$INCREASE" = "grow" ]; then
        hyprctl dispatch resizeactive 50 50
    else
        hyprctl dispatch resizeactive -50 -50
    fi
fi
