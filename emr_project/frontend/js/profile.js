document.getElementById("profileForm").onsubmit = async e => {
e.preventDefault();
await fetch(API_URL + "/user/profile", {
method: "PUT",
headers: authHeaders(),
body: JSON.stringify({
bloodType: blood.value,
conditions: conditions.value,
allergies: allergies.value,
medications: medications.value
})
});
alert("Profile Updated");
};