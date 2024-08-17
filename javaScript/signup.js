// JavaScript functionality for the signup page can be added here
// For example, form validation, handling button clicks, etc.

document.getElementById('signupForm').addEventListener('submit', function(event) {
    event.preventDefault();
    alert('Sign-up form submitted!');
});

document.querySelector('.back-button').addEventListener('click', function() {
    window.history.back();
});
