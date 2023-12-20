# My Kind of Town - Chicago Landmarks Map App (Swift)

Explore the vibrant city of Chicago and discover its iconic landmarks with the "My Kind of Town" map-based application. This project combines MapKit for interactive maps, adaptive layout techniques, and a thoughtful user interface design to enhance the user experience.


## Project Overview

### Project Setup
- Enabled for both portrait and landscape orientations.

### Map View Controller

- #### Customizing the MapView
  - Creates a dedicated `MapViewController` with a full-screen `MapView` using MapKit.
  - Customized MapView properties, disabling the compass and excluding Apple's points of interest.

- #### Heads Up Display (HUD)
  - Added a partially transparent HUD UIView displaying details of a point of interest.
  - Includes two UILabels for title and description and a UIButton styled with a star for favoriting.
    
-#### "Favorite Places" Button
  - Positioned a distinct "Favorite Places" UIButton at the bottom of the screen, floating atop the map.

### Map Annotations

- #### Custom Annotations
  - Annotated the map with points of interest from the Data.plist file.

- #### Custom Annotation Views
  - Implemented a custom `PlaceMarkerView` subclass of `MKMarkerAnnotationView` to style the map markers.

- #### Handling Annotation Selection
- Utilized the `mapView(_:didSelect:)` method to display annotation details in the HUD view upon selection.

### Favorites View Controller

- #### Presentation
  - Programmatically presents a `FavoritesViewController` using a UISheetPresentationController.

- #### Table View
  - Displays a list of user's favorite places in a UITableView within the `FavoritesViewController`.

- #### Dismissal
  - Incorporated a close UIButton allowing users to dismiss the `FavoritesViewController`.

- #### Custom Protocol
  - Implemented a custom protocol `PlacesFavoritesDelegate` for communication between `FavoritesViewController` and `MapViewController`.

### Data Model

- #### DataManager Singleton
  - Established a `DataManager` singleton to handle data processing and storage.

- #### UserDefaults
  - Utilized UserDefaults for persistent storage of user favorites.

- #### Toggling Favorites
  - Implemented functionality to toggle a place as a favorite when tapping the star on the `MapViewController`.

### Adaptive Layout

#### Responsive Design
- Adaptive layout techniques to accommodate various screen orientations.
- Adjusts the layout, making the display view larger and justified on the left side in landscape orientation.

## Features of the Application

- Launches with the map focused on an initial point of interest, displaying the accompanying information.
- Tapping on the star allows users to toggle places as favorites, updating the star's appearance.
- Incorporates "swipe-to-delete" functionality in the `FavoritesViewController` for removing places from the list.

## Attributions

### UI
- [Swift Fundamentals: Adding a Gesture Recognizer to an ImageView in Swift](https://cocoacasts.com/swift-fundamentals-adding-a-gesture-recognizer-to-an-image-view-in-swift)
- [How to Assign an Action for UIImageView Object in Swift](https://stackoverflow.com/questions/27880607/how-to-assign-an-action-for-uiimageview-object-in-swift)
- [What UIView layer.maskstobounds is Doing if Set to Yes](https://stackoverflow.com/questions/2648681/what-uiview-layer-maskstobounds-is-doing-if-set-to-yes)
- [UIButton Events: What's the Difference](https://stackoverflow.com/questions/11389915/uibutton-events-whats-the-difference)

### Data Manager
- [How to Use a Plist as a Kind of Storage in Swift](https://stackoverflow.com/questions/56936974/how-to-use-a-plist-as-a-kind-of-storage-in-swift)

### Map
- [How Can I Store Coordinates Using CLLocationCoordinate2D as a String or a](https://stackoverflow.com/questions/36142661/swift-how-can-i-store-coordinates-using-cllocationcoordinate2d-as-a-string-or-a)
- [Exploring SwiftUI Map Custom Annotations](https://dev.to/fassko/exploring-swiftui-map-custom-annotations-5co7)
- [How to Animate When Your Size Class Changes (willTransitionTo)](https://www.hackingwithswift.com/example-code/uikit/how-to-animate-when-your-size-class-changes-willtransitionto)

### Swipe to Delete
- [Add Swipe to Delete UITableViewCell](https://stackoverflow.com/questions/24103069/add-swipe-to-delete-uitableviewcell) 

## Additional Information

- This project was developed using Xcode and Swift.
- For issues or questions, contact [(Jas) Jaswitha](mailto:jaswithareddyguntaka@gmail.com).

Explore the beauty of Chicago with "My Kind of Town" – an app designed to make your exploration delightful and interactive! 🏙🗺
