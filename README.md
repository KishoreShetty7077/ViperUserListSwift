# ViperUserList

This project demonstrates a **VIPER (View, Interactor, Presenter, Entity, Router)** architecture pattern implemented in Swift for an iOS app. The app fetches and displays a list of users from an API and updates the UI based on the fetched data. The UI is constructed programmatically, allowing for greater flexibility and control.

## Features
- **VIPER Architecture**: Modular, scalable structure separating business logic, presentation, and navigation.
- **Programmatic UI**: All UI elements are set up directly in code without using Storyboards or XIB files, enabling a fully customizable interface.
- **Network Call**: Fetches data from an external API using `URLSession`.
- **Dynamic UI Update**: Uses delegation to update the UI based on the results of the data fetch.
- **Error Handling**: Displays error messages when data fetching fails.

## Project Structure: VIPER Pattern
The VIPER architecture pattern divides the project into the following components:

1. **View** (`HomeViewController`)
   - Responsible for displaying the UI to the user and handling user interactions.
   - In this project, `HomeViewController` displays the user data in a `UITableView` and shows an error message in a `UILabel` if data fetching fails.
   - The UI is entirely programmatic, providing flexibility and control over layout without using Storyboards.

2. **Interactor** (`HomeInteractor`)
   - Responsible for fetching and managing data for the module.
   - `HomeInteractor` fetches data from an external API, processes it, and communicates the result (success or failure) back to the Presenter.
   - Handles the business logic of the app, keeping it separate from the presentation layer.
   - If data fetching is successful, it decodes the data into `User` model objects and sends it to the Presenter. If it fails, it sends an error to the Presenter.

3. **Presenter** (`HomeViewPresenter`)
   - Acts as a mediator between the View and the Interactor, controlling the flow of data and updating the View based on interactions or changes in data.
   - `HomeViewPresenter` receives data from the Interactor and formats it if necessary before passing it to the View to be displayed.
   - Handles the presentation logic and any transformations required to display the data in the UI.
   - Updates the View with either user data or an error message depending on the data received from the Interactor.

4. **Entity** (`User`)
   - Represents the model or the data structure in the app.
   - In this project, `User` is a struct that conforms to the `Codable` protocol, allowing easy decoding from the JSON data fetched by the Interactor.

5. **Router** (`HomeRouter`)
   - Manages navigation and acts as the entry point for the VIPER module.
   - `HomeRouter` is responsible for setting up the initial VIPER module by creating and connecting the View, Interactor, and Presenter.
   - It instantiates each component and assigns their references to ensure they can communicate with each other.
   - Sets the initial view controller (`HomeViewController`) as the root of the navigation stack.

## Programmatic UI Details
All UI elements in the project, including `UITableView` and `UILabel`, are created and configured directly in code within `HomeViewController`. This approach removes the dependency on Storyboards, allowing for more granular control of UI elements and layout.

- **Table View**: A `UITableView` is programmatically created and configured to display the list of users.
- **Error Label**: A `UILabel` is created to display error messages in case the data fetch fails.
- **Constraints and Layout**: UI elements are positioned and constrained using frame-based layout in `viewDidLayoutSubviews`, making the app layout adaptive to different screen sizes.

## Setup and Usage
1. Clone the repository.
   ```bash
   git clone https://github.com/yourusername/ViperUserList.git
