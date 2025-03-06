const urls = [
    "https://bravowell.atlassian.net/browse/ISS20-4406",
    "https://bravowell.atlassian.net/browse/ISS20-4407",
    "https://bravowell.atlassian.net/browse/ISS20-4393",
    "https://bravowell.atlassian.net/browse/ISS20-4329",
    "https://bravowell.atlassian.net/browse/ISS20-3496",
    "https://bravowell.atlassian.net/browse/ISS20-4411",
    "https://bravowell.atlassian.net/browse/ISS20-4383",
    "https://bravowell.atlassian.net/browse/ISS20-4440",
    "https://bravowell.atlassian.net/browse/ISS20-4170",
    "https://bravowell.atlassian.net/browse/ISS20-4283",
    "https://bravowell.atlassian.net/browse/ISS20-4268",
    "https://bravowell.atlassian.net/browse/ISS20-3873"
];

const gridContainer = document.getElementById('gridContainer');

urls.forEach(url => {
    const tile = document.createElement('div');
    
    // Extract last four digits of the URL
    const tileText = url.slice(-4);
    
    // Randomly set width and height
    const width = Math.random() > 0.5 ? '100%' : '50%';
    const height = Math.random() > 0.5 ? '100%' : '50%';
    
    tile.className = 'tile';
    
    // Set random background color
    tile.style.backgroundColor = `hsl(${Math.random() * 360}, 100%, 50%)`;
    
    // Set dimensions
    tile.style.gridColumnEnd = `span ${width === '100%' ? 2 : 1}`;
    tile.style.gridRowEnd = `span ${height === '100%' ? 2 : 1}`;
    
    // Set tile content and click event
    tile.textContent = tileText;
    
    tile.onclick = () => {
        window.open(url, '_blank');
    };
    
    gridContainer.appendChild(tile);
});