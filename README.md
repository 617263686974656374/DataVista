# DataVista
The DataVista application is a comprehensive tool designed to retrieve and display data from various APIs, including Forex rates, ISS (International Space Station) position, Wall Street Journal news articles, and weather information. The application leverages the MVVM (Model-View-ViewModel) pattern and WPF (Windows Presentation Foundation) for a clean, maintainable, and efficient code structure.

## Features

- **API Client**: A robust HTTP client that handles GET requests and deserializes JSON responses into specified objects using `Newtonsoft.Json`.
- **Forex Data Display**: Fetches and displays current forex rates for a predefined set of currencies.
- **ISS Position Tracking**: Continuously updates and displays the real-time position of the International Space Station on a graphical map.
- **Wall Street Journal News**: Retrieves and displays the latest news articles from the Wall Street Journal.
- **Weather Information**: Fetches and displays weather data based on geographical coordinates clicked on an interactive map, with support for zoom and pan functionalities.

## Project Structure

### ApiClient.cs

The `ApiClient` class is a utility that facilitates HTTP GET requests and handles JSON deserialization. It includes error handling to manage HTTP request exceptions and general exceptions, displaying relevant error messages to the user via a message box.

### Models

The models represent the data structures used throughout the application:

- **Forex**: Represents forex rate data with a dictionary of currency symbols and their corresponding values.
- **IssModel**: Contains classes such as `IssPosition` and `IssPositionResponse` to model the ISS position data.
- **WallStreetModel**: Contains classes such as `Article`, `NewsApiResponse`, and `Source` to model the Wall Street Journal news articles.
- **WeatherModel**: Represents comprehensive weather data including coordinates (`Coord`), main weather information (`Main`), wind data (`Wind`), and other related properties.

### ViewModel

The ViewModels manage the data retrieval and UI logic:

- **ForexViewModel**: Fetches forex data from the API, formats it, and manages its display in the UI.
- **IssViewModel**: Tracks and updates the ISS position at regular intervals, converting geographical coordinates to screen coordinates for map display.
- **WallStreetViewModel**: Manages the retrieval and display of Wall Street Journal news articles, updating detailed article information upon selection.
- **WeatherViewModel**: Handles weather data retrieval and manages interactive map functionalities, including zoom and pan.

### MVVM

The MVVM infrastructure includes converters and command implementations:

- **CurrencyPairsConverter.cs**: Converts a collection of currency pairs into a long, displayable string.
- **CustomRelayCommand.cs**: Implements `ICommand` for binding commands to UI elements, facilitating interaction logic.
- **ViewModelBase.cs**: A base class for ViewModels, implementing `INotifyPropertyChanged` to support data binding.

### Views

The views define the user interface components:

- **WelcomeView.xaml**: A simple view displaying a welcome image to the user. This serves as the initial UI screen.
- **ForexView.xaml**: Displays forex data in a scrolling marquee style. It binds to the `ForexViewModel` and uses the `CurrencyPairsConverter` to format the currency pairs into a long string that scrolls continuously.
- **IssView.xaml**: Displays the real-time position of the ISS on a map. It binds to the `IssViewModel` and uses an animated red dot to indicate the ISS position, which updates at regular intervals.
- **MainWindow.xaml**: The main window of the application. It uses data templates to bind view models to their corresponding views and includes buttons to navigate between different sections of the application.
- **WallstreetView.xaml**: Displays a list of Wall Street Journal articles and their details. It binds to the `WallStreetViewModel` and updates the UI when an article is selected.
- **WeatherView.xaml**: Displays weather data on an interactive map. It binds to the `WeatherViewModel` and allows users to click on the map to retrieve weather information for specific locations. The view supports zooming and panning functionalities for better navigation.

## Usage

### Forex Data

The `ForexViewModel` class is responsible for fetching forex data from a specified API. The data is displayed in a random order to add variety. The fetched data is formatted and presented as a collection of currency pairs.

### ISS Position Tracking

The `IssViewModel` class continuously tracks the ISS position by periodically fetching data from the ISS API. The geographical coordinates are converted into screen coordinates for accurate display on a map. This view model ensures that the position of the ISS is updated in real-time, providing an interactive experience.

### Wall Street News

The `WallStreetViewModel` class retrieves news articles from the Wall Street Journal using a designated API. Articles are displayed in a list, and selecting an article updates the detailed view with the article's title, author, description, publication date, and content. This enables users to stay informed with the latest news directly from a trusted source.

### Weather Information

The `WeatherViewModel` class fetches weather data based on user interaction with an interactive map. Users can click on the map to get weather information for the corresponding geographical location. The view model supports zoom and pan functionalities, allowing users to navigate and explore different regions on the map easily.
