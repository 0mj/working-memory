import pyautogui
import random
import time
from datetime import datetime

def move_mouse_randomly():
    """Move the mouse to a random position on the screen."""
    screen_width, screen_height = pyautogui.size()
    random_x = random.randint(0, screen_width - 1)
    random_y = random.randint(0, screen_height - 1)
    pyautogui.moveTo(random_x, random_y, duration=random.uniform(0.5, 2))

def is_within_active_hours():
    """Check if the current time is within the active hours (08:00 - 23:00)."""
    current_time = datetime.now().time()
    start_time = datetime.strptime("08:00", "%H:%M").time()
    end_time = datetime.strptime("23:00", "%H:%M").time()
    return start_time <= current_time <= end_time

def main():
    """Main function to move the mouse during active hours."""
    while True:
        if is_within_active_hours():
            move_mouse_randomly()
            print("Mouse moved at:", datetime.now().strftime("%H:%M:%S"))
        else:
            print("Outside active hours:", datetime.now().strftime("%H:%M:%S"))
        time.sleep(random.randint(30, 300))  # Wait for 30-300 seconds before the next move

if __name__ == "__main__":
    main()
