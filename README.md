# interactive-emuurom-map
Infinitely scrolling world map for Emuurom.

## Features
* **Infinite Scrolling:** The map wraps around seamlessly in all directions (torus grid).
* **Zoom & Pan:** Smooth zooming and panning across the map.
* **Map Layers:** Switch between different map versions (e.g., OW / FC).
* **Grid Overlay:** Toggle coordinate labels, minor grid lines, and major grid boundaries.
* **Object Placement:** Place custom icons onto specific map tiles.
* **Persistent Storage:** Placed objects are automatically saved in your browser's local storage.
* **Object Filtering:** Toggle the visibility of specific object types using the top toolbar.

## Controls
* **Pan Map:** Left Click & Drag, Middle Click & Drag, or Touch Drag.
* **Zoom Map:** Ctrl + Scroll Wheel.
* **Open Placement Menu:** Right Click anywhere on the map.
* **Add/Edit/Remove Object:** Right Click on tile to open object menu.

## Capturing Map Tiles
The included `CropClipboard.ps1` script is a utility for capturing map screens directly from the game.
1. Run the game in fullscreen mode (1920x1080).
2. Take a screenshot and copy it to your clipboard.
3. Run `CropClipboard.ps1`. It will prompt you for the map type (OW/FC) and the grid coordinates (Row/Y and Column/X) and automatically crop and save the tile to the correct `images/` directory.

## Map Cleanup Effort

The goal is to have every map image clean and with Maire edited out. These grids of checkboxes tracks the completion effort for each map tile in both the overworld and Forest's Cover.

### OW completion

|  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **1** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **2** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **3** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **4** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **5** | <input type="checkbox"> | <input type="checkbox" checked> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **6** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **7** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **8** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox" checked> | <input type="checkbox" checked> | <input type="checkbox"> | <input type="checkbox"> |

### FC completion

|  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **1** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox" checked> | <input type="checkbox"> | <input type="checkbox"> |
| **2** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **3** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **4** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **5** | <input type="checkbox" checked> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **6** | <input type="checkbox" checked> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **7** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| **8** | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox" checked> | <input type="checkbox" checked> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
