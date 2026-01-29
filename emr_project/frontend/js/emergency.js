const btn = document.getElementById("sosBtn");
const cd = document.getElementById("countdown");
let timer;


btn.onclick = () => {
let count = 5;
cd.classList.remove("hidden");
cd.innerText = count;
timer = setInterval(async () => {
count--;
cd.innerText = count;
if (count === 0) {
clearInterval(timer);
navigator.geolocation.getCurrentPosition(async pos => {
await fetch(API_URL + "/sos", {
method: "POST",
headers: authHeaders(),
body: JSON.stringify({
lat: pos.coords.latitude,
lng: pos.coords.longitude
})
});
alert("SOS Sent!");
});
}
}, 1000);
};