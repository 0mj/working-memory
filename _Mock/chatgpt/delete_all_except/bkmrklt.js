javascript:(function(){
  try {
    var selector = window.prompt("Enter the CSS selector of the element to keep (e.g., #id, .class, tag):");
    if (!selector) return;
    var keep = document.querySelector(selector);
    if (!keep) {
      alert("Element not found. Please check your selector.");
      return;
    }
    document.body.querySelectorAll("*").forEach(el => {
      if (el !== keep && !keep.contains(el)) el.remove();
    });
    alert("All elements except the selected one have been removed.");
  } catch (e) {
    console.error("An error occurred:", e);
    alert("An error occurred. Check the console for details.");
  }
})();
