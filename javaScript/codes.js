document.getElementById("confirm-code-form").addEventListener("submit", function(event) {
    event.preventDefault();  // Prevent form submission

    // Get the value of the code input
    let code = document.getElementById("code").value;

    // Check if the code is correct (replace "1234" with your actual validation logic)
    if (code === "1234") {
        showConfirmationModal();  // Call the SweetAlert2 modal function
    } else {
        alert("Invalid code, please try again.");  // Display an alert for invalid code
    }
});

// Function to show the SweetAlert2 modal
function showConfirmationModal() {
    Swal.fire({
        title: "Code confirmed successfully!",
        icon: "success",  // Use success icon for confirmation
        confirmButtonText: "Yes",
        cancelButtonText: "No",
        showCancelButton: true,  // Show the cancel button
        showCloseButton: true,   // Show the close button
        allowOutsideClick: false  // Prevent closing the modal by clicking outside
    }).then((result) => {
        // Handle the result of the modal
        if (result.isConfirmed) {
            // Perform any action after the confirmation (e.g., redirect, form submission, etc.)
            console.log("User confirmed the action.");
        } else if (result.isDismissed) {
            console.log("User dismissed the modal.");
        }
    });
}
