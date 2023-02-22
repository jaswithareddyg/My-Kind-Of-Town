# Assignment 5

## Requirements

3/3 | Map View Controller
:---: | :---
1/1 | Full screen MapView that does not show POI or compass
1/1 | Initial region set to Chicago using MKCoordinateRegion()
1/1 | Floating Favorites UIButton with visually distinct color scheme

3/8 | Map Annotations
:---: | :---
0/2 | Data.plist provides annotation info
1/1 | Custom annotation Place subclasses MKPointAnnotation
1/1 | Place contains name and longDescription
1/1 | Custom annotation view PlaceMarkerView subclasses MKMarkerAnnotations
0/2 | Implements delegate method mapViewDidSelectView
0/1 | Title and description appear in POI view when annotation is tapped

2/4 | Point of Interest (POI) View
:---: | :---
1/1 | Partially transparent UIView
1/1 | Two UILabels display title and description
0/2 | Favorites star UIButton is filled or outlined based on favorite status

3/5 | Favorites View Controller
:---: | :---
0/1 | Presented via UISheetPresentationController
3/3 | UITableView displays list of favorite places
0/1 | Dismisses itself upon tapping favorite place or X button

1.5/6 | Custom Protocol
:---: | :---
1/1 | Custom protocol declaration
0/1 | FavoritesViewController has weak delegate property
0.5/1 | MapViewController conforms to protocol
0/3 | Protocol method centers map on favorite place and displays info in POI View

1/7 | Data Model
:---: | :---
1/1 | DataManager singleton
0/2 | Handles data processing and storage from plist
0/1 | Save function
0/1 | Delete function
0/1 | Load function 
0/1 | UserDefaults stores favorites data

3/5 | Adaptive Layout
:---: | :---
2/4 | Constraints allow for good UI on all device sizes - can't test, can't get it to compile. Half credit for clear attempt with storyboard constraints
1/1 | POI View is larger and leading-aligned in landscape mode

10/10 | Code Quality
:---: | :---
3/3 | Best Practice
2/2 | Well-Formatted
3/3 | Clearly Written
2/2 | Concise

1/2 | Extra Credit and Miscellaneous
:---: | :---
0/1 | Swipe-to-delete items from the favorites list
0/0.5 | Compiles with no warnings or errors
0.5/0.5 | `LaunchScreen.storyboard` has app name, student name, and CNET id
0/0.5 | Custom icon
0.5/0.5 | Cites sources

## Comments

Gave you as much credit as I could here, looks you attempted a fair bit! If you want to try to redo any of it for partial credit I'd recommend speaking with Andrew. 

## Score

### 27.5/50
