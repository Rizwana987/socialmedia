async function getWeather() {
    const location = document.getElementById('location').value;
    const weatherInfo = document.getElementById('weather-info');

    if (!location) {
        weatherInfo.innerHTML = '<p>Please enter a location.</p>';
        return;
    }

    const apiKey = 'YOUR_API_KEY';  // Replace with your weather API key
    const url = `https://api.openweathermap.org/data/2.5/weather?q=${location}&units=metric&appid=${apiKey}`;

    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error('Location not found');
        }
        const data = await response.json();

        const { main, weather, name } = data;
        const temperature = main.temp;
        const weatherDescription = weather[0].description;

        weatherInfo.innerHTML = `
            <h2>Weather in ${name}</h2>
            <p>Temperature: ${temperature}°C</p>
            <p>Condition: ${weatherDescription}</p>
        `;
    } catch (error) {
        weatherInfo.innerHTML = `<p>${error.message}</p>`;
    }
}
