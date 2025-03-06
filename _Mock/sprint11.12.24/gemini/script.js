const tileContainer = document.querySelector('.tile-container');
const urls = [
    "https://www.example1.com/1234",
    "https://www.example2.com/5678",
    // ... more URLs
];

// Helper function to randomly select elements from an array
function randomArrayElements(array, count) {
  const shuffled = array.sort(() => 0.5 - Math.random());
  return shuffled.slice(0, count);
}

function createTile(url) {
  const tile = document.createElement('a');
  tile.href = url;
  tile.target = "_blank";
  tile.classList.add('tile');

  // Randomly assign size and color classes
  const sizeClasses = ['tile-full-width', 'tile-half-width', 'tile-full-height', 'tile-half-height'];
  const colorClasses = ['bg-red', 'bg-green', 'bg-blue', 'bg-yellow']; // Add more color classes as needed
  tile.classList.add(...randomArrayElements(sizeClasses, 2));
  tile.classList.add(randomArrayElement(colorClasses));

  // Extract last 4 digits and set as text content
  const last4Digits = url.slice(-4);
  tile.textContent = last4Digits;

  tileContainer.appendChild(tile);
}

// Create tiles for each URL
urls.forEach(createTile);