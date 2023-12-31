function showGreeting(greeting) {
  var fieldNameElement = document.getElementById('field_name');
  fieldNameElement.textContent = greeting;
}

async function fetchData(url) {
  let response = await fetch(url);
  let data = await response.json();
  return data["text"];
}

fetchData("/api/hello")
    .then(showGreeting)
