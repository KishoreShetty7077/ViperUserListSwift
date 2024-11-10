# ViperUserListSwift

This project demonstrates a **VIPER (View, Interactor, Presenter, Entity, Router)** architecture pattern implemented in Swift for an iOS app. The app fetches and displays a list of users from an API and updates the UI based on the fetched data. The UI is constructed programmatically, allowing for greater flexibility and control.

## Features
- **VIPER Architecture**: Modular, scalable structure separating business logic, presentation, and navigation.
- **Programmatic UI**: All UI elements are set up directly in code without using Storyboards or XIB files, enabling a fully customizable interface.
- **Network Call**: Fetches data from an external API using `URLSession`.
- **Dynamic UI Update**: Uses delegation to update the UI based on the results of the data fetch.
- **Error Handling**: Displays error messages when data fetching fails.

## Project Structure
The VIPER pattern is divided as follows:
- **View**: `HomeViewController` - Responsible for displaying user data in a `UITableView`, and is implemented entirely programmatically.
- **Interactor**: `HomeInteractor` - Fetches data from the network and processes it.
- **Presenter**: `HomeViewPresenter` - Acts as a mediator between the View and Interactor, handling presentation logic.
- **Entity**: `User` - Defines the model structure for user data.
- **Router**: `HomeRouter` - Handles navigation and serves as the entry point of the VIPER module.

## Programmatic UI Details
All UI elements in the project, including `UITableView` and `UILabel`, are created and configured directly in code within `HomeViewController`. This approach removes the dependency on Storyboards, allowing for more granular control of UI elements and layout.

- **Table View**: A `UITableView` is programmatically created and configured to display the list of users.
- **Error Label**: A `UILabel` is created to display error messages in case the data fetch fails.
- **Constraints and Layout**: UI elements are positioned and constrained using frame-based layout in `viewDidLayoutSubviews`, making the app layout adaptive to different screen sizes.

## Setup and Usage
1. Clone the repository.
   ```bash
   git clone https://github.com/yourusername/ViperUserList.git
