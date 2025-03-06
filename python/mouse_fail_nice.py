import pyautogui
import random
import time
from datetime import datetime
import keyboard  # For hotkey detection

# Define safety margins to avoid moving the mouse to the top-left corner
SAFETY_MARGIN = 100  # Minimum distance from the edges

def move_mouse_human_like():
    """Move the mouse to a random position with a faster human-like trajectory."""
    screen_width, screen_height = pyautogui.size()

    # Current mouse position
    current_x, current_y = pyautogui.position()

    # Target position with safety margins
    target_x = random.randint(SAFETY_MARGIN, screen_width - SAFETY_MARGIN)
    target_y = random.randint(SAFETY_MARGIN, screen_height - SAFETY_MARGIN)

    # Break the movement into smaller, faster steps
    steps = random.randint(10, 15)  # Fewer steps for faster movement
    for i in range(steps):
        # Calculate intermediate positions with some randomness
        intermediate_x = current_x + (target_x - current_x) * (i / steps) + random.uniform(-1, 1)
        intermediate_y = current_y + (target_y - current_y) * (i / steps) + random.uniform(-1, 1)

        # Ensure intermediate positions stay within safety margins
        intermediate_x = max(SAFETY_MARGIN, min(intermediate_x, screen_width - SAFETY_MARGIN))
        intermediate_y = max(SAFETY_MARGIN, min(intermediate_y, screen_height - SAFETY_MARGIN))

        # Move to the intermediate position
        pyautogui.moveTo(intermediate_x, intermediate_y, duration=random.uniform(0.002, 0.01))

    # Final precise move to the target
    pyautogui.moveTo(target_x, target_y, duration=random.uniform(0.005, 0.02))

def random_scroll():
    """Simulate random mouse scrolling."""
    scroll_amount = random.randint(-10, 10)  # Random scroll up or down
    pyautogui.scroll(scroll_amount)
    print(f"Scrolled: {scroll_amount}")

def is_within_active_hours():
    """Check if the current time is within the active hours (06:00 - 17:30)."""
    current_time = datetime.now().time()
    start_time = datetime.strptime("06:00", "%H:%M").time()
    end_time = datetime.strptime("17:30", "%H:%M").time()
    return start_time <= current_time <= end_time

def main():
    """Main function to move the mouse during active hours."""
    try:
        print("Press 'Ctrl+Shift+Q' to exit the script.")
        while True:
            if keyboard.is_pressed("ctrl+shift+q"):
                print("\nHotkey detected. Exiting script.")
                break
            if is_within_active_hours():
                move_mouse_human_like()
                random_scroll()  # Add a random scroll after movement
                print("Mouse moved and scrolled at:", datetime.now().strftime("%H:%M:%S"))
            else:
                print("Outside active hours:", datetime.now().strftime("%H:%M:%S"))
            
            # Wait for a random interval between 5 to 20 seconds
            time.sleep(random.randint(5, 20))
    except KeyboardInterrupt:
        print("\nScript interrupted by user. Exiting gracefully.")

if __name__ == "__main__":
    main()
