document.getElementById("loginForm")?.addEventListener("submit", async e => {
e.preventDefault();
const email = email.value;
const password = password.value;
const res = await fetch(API_URL + "/auth/login", {
method: "POST",
headers: { "Content-Type": "application/json" },
body: JSON.stringify({ email, password })
});
const data = await res.json();
localStorage.setItem("token", data.token);
location.href = "index.html";
});


document.getElementById("registerForm")?.addEventListener("submit", async e => {
e.preventDefault();
const body = {
name: name.value,
email: email.value,
password: password.value
};
await fetch(API_URL + "/auth/register", {
method: "POST",
headers: { "Content-Type": "application/json" },
body: JSON.stringify(body)
});
location.href = "login.html";
});