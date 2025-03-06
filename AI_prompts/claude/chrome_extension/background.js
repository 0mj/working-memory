chrome.commands.onCommand.addListener((command) => {
  if (command === "execute-bookmarklet") {
    chrome.tabs.query({active: true, currentWindow: true}, (tabs) => {
      chrome.scripting.executeScript({
        target: {tabId: tabs[0].id},
        func: () => {
          // Your bookmarklet code goes here
          document.querySelectorAll('[data-testid="issue.views.issue-details.issue-layout.container-right"]').forEach(el => el.remove());
        }
      });
    });
  } else if (command === "pin-tab") {
    chrome.tabs.query({active: true, currentWindow: true}, (tabs) => {
      const currentTab = tabs[0];
      chrome.tabs.update(currentTab.id, {pinned: !currentTab.pinned});
    });
  } else if (command === "change-title") {
    //start 
    chrome.tabs.query({active: true, currentWindow: true}, (tabs) => {
      chrome.scripting.executeScript({
        target: {tabId: tabs[0].id},
        func: () => {
          const newTitle = prompt('Enter new page title:');
          if (newTitle !== null && newTitle.trim() !== '') {
            document.title = newTitle;
          }
        }
      });
    });
  }

});