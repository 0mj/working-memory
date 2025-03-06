const fullscreenButton = document.getElementById('fullscreen-button');
const fullscreenContainer = document.getElementById('fullscreen-container');

fullscreenButton.addEventListener('click', () => {
    if (!document.fullscreenElement) {
        fullscreenContainer.classList.remove('hidden');
        fullscreenContainer.requestFullscreen().catch(err => {
            console.error('Failed to enter fullscreen mode:', err);
        });
    } else {
        document.exitFullscreen();
    }
});

document.addEventListener('fullscreenchange', () => {
    if (!document.fullscreenElement) {
        fullscreenContainer.classList.add('hidden');
    }
});
