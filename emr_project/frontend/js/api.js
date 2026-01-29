const API_URL = "http://localhost:5000/api";


function authHeaders() {
return {
"Content-Type": "application/json",
"Authorization": "Bearer " + localStorage.getItem("token")
};
}