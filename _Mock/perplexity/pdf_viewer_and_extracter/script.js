const pdfUrl = '2406.13138.pdf';
const pdfViewer = document.getElementById('pdfViewer');
const thumbnailsContainer = document.getElementById('thumbnails');
const exportButton = document.getElementById('exportButton');
let selectedPages = [];

// Load PDF
pdfjsLib.getDocument(pdfUrl).promise.then(pdf => {
    const numPages = pdf.numPages;

    for (let pageNum = 1; pageNum <= numPages; pageNum++) {
        pdf.getPage(pageNum).then(page => {
            const viewport = page.getViewport({ scale: 0.5 });
            const canvas = document.createElement('canvas');
            const context = canvas.getContext('2d');
            canvas.height = viewport.height;
            canvas.width = viewport.width;

            const renderContext = {
                canvasContext: context,
                viewport: viewport
            };
            page.render(renderContext).promise.then(() => {
                const thumbnail = document.createElement('img');
                thumbnail.src = canvas.toDataURL();
                thumbnail.className = 'thumbnail';
                thumbnail.dataset.pageNumber = pageNum;
                thumbnail.onclick = () => toggleSelection(thumbnail);
                thumbnailsContainer.appendChild(thumbnail);
            });
        });
    }
});

// Toggle thumbnail selection
function toggleSelection(thumbnail) {
    const pageNum = thumbnail.dataset.pageNumber;
    if (selectedPages.includes(pageNum)) {
        selectedPages = selectedPages.filter(page => page !== pageNum);
        thumbnail.classList.remove('selected');
    } else {
        selectedPages.push(pageNum);
        thumbnail.classList.add('selected');
    }
}

// Export selected pages
exportButton.onclick = () => {
    if (selectedPages.length > 0) {
        // Logic to create a new PDF with selected pages
        alert('Exporting pages: ' + selectedPages.join(', '));
        // Implement PDF export functionality here
    } else {
        alert('No pages selected.');
    }
};