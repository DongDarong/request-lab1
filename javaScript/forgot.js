document.getElementById("forgot-password-form").addEventListener("submit", function(event) {
    event.preventDefault();
    // Assuming the email is correctly entered
    window.location.href = "codes.html";  // Redirects to the "Enter Code" page
});

document.getElementById("change-to-phone").addEventListener("click", function(event) {
    event.preventDefault();
    alert("Phone number option is not available yet.");
});

function goBack() {
    window.history.back();
}
