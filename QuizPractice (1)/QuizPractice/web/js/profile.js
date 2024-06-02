document.addEventListener("DOMContentLoaded", function() {
    var viewProfileBtn = document.getElementById("viewProfileBtn");
    var editProfilePopup = document.getElementById("editProfilePopup");
    var closeBtn = document.getElementById("closeBtn");

    // Function to show the popup
    function showPopup() {
        editProfilePopup.style.display = "block";
    }

    // Function to close the popup
    function closePopup() {
        editProfilePopup.style.display = "none";
    }

    // Event listener for the view profile button
    viewProfileBtn.addEventListener("click", function(event) {
        event.preventDefault();
        showPopup();
    });

    // Event listener for the close button
    closeBtn.addEventListener("click", function() {
        closePopup();
    });

    // Close the popup when clicking outside of it
    window.addEventListener("click", function(event) {
        if (event.target == editProfilePopup) {
            closePopup();
        }
    });

    // Prevent form submission
    var editProfileForm = document.getElementById("editProfileForm");
    editProfileForm.addEventListener("submit", function(event) {
        event.preventDefault();
        // Add code to handle form submission (e.g., send data to server)
    });
});