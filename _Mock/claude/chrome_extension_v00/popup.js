document.addEventListener("DOMContentLoaded", () => {
  const newTitleInput = document.getElementById("newTitle");
  newTitleInput.addEventListener("keydown", (event) => {
    if (event.key === "Enter") {
      changePageTitle();
    }
  });
});

function changePageTitle() {
  chrome.tabs.query({ active: true, currentWindow: true }, (tabs) => {
    const newTitle = document.getElementById("newTitle").value;
    chrome.scripting.executeScript({
      target: { tabId: tabs[0].id },
      function: (newTitle) => {
        document.title = newTitle;
      },
      args: [newTitle],
    });
  });
}