const dropdownsContainer = document.getElementById('dropdowns-container');

// Create a dropdown menu for each item in the data array
data.forEach((dropdown) => {
    // Create the dropdown button element
    const button = document.createElement('button');
    button.textContent = dropdown.label;
    button.classList.add('dropbtn');

    // Create the dropdown content element
    const dropdownContent = document.createElement('div');
    dropdownContent.classList.add('dropdown-content');

    // Add links to the dropdown content
    dropdown.links.forEach((link) => {
        const linkElement = document.createElement('a');
        linkElement.textContent = link.label;
        linkElement.href = link.url;
        dropdownContent.appendChild(linkElement);
    });

    // Add the dropdown button and content to the container
    const dropdownContainer = document.createElement('div');
    dropdownContainer.classList.add('dropdown');
    dropdownContainer.appendChild(button);
    dropdownContainer.appendChild(dropdownContent);
    dropdownsContainer.appendChild(dropdownContainer);
});

// Toggle between showing and hiding the dropdown content
function toggleDropdownContent(event) {
    const dropdownContent = event.target.nextElementSibling;
    dropdownContent.classList.toggle('show');
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
    if (!event.target.matches('.dropbtn') && !event.target.matches('.dropdown-content a')) {
        const dropdownContents = document.querySelectorAll('.dropdown-content');
        dropdownContents.forEach((dropdownContent) => {
            if (dropdownContent.classList.contains('show')) {
                dropdownContent.classList.remove('show');
            }
        });
    }
};