# Plant Growth Tracker

The proposed project is a plant care mobile application that will allow users to monitor their plants’ overall health growing around the house. Depending on each plant’s humidity, temperature, and nutritional needs, the application will provide instructions and custom notifications for how often a plant needs to be watered, fertilized, pruned, or taken closer to a window to obtain more sunlight.

[This is the link to the project proposal.](https://docs.google.com/document/d/1ulsW3APjbW0lfwVqKMr4JCHsFDbFrHHzirMuvzBlTaU/edit?usp=sharing)

### Authors
 - Francis Walker
 - Joyce Njeri
 - Rachel Ayateke

## Project Propotype

For the UI design of the project we used figma.</br>
[This is the link to the figma prototype](https://www.figma.com/file/FBQk8oiWgHxI1hONfdTk8X/Plants-App?node-id=0%3A1)

## Prerequisites

This a flutter project and requires:
- Flutter running on your machine
- Any IDE of your choice
- Emulator or device to run the app

## Database

Database is implemented with sqflite. 
The database consists of 3 tables.

1- Users (UserID, Email, Password)
    This table id used to store a new users credentials. 
    This table is used to validate a users login,
    This table is used to associate user behavior to a unique user account. 
    Unique email is enforced.
    
2- Plants (PlantID, Name, Details)
    This table is used to store a plants name and details
    
3- Inventory (InventoryID, UserID, PlantID, Status, Health, Water, Sun)
    This table is used to store a users plants. 
    It stored the health of the plant and allows tracking of a plants metrics. 
    
TODO: 
    Enforce valid email.  
    Encrypt stored passwords.
    Implement plant card factories. 
    
    
## Points to work on for Summative

Please note that this is not the final version of our project. <br>
Some design will be improved upon and all backend functionality will be implemented for the final version of the project. For example:

- Buying Plants
- Viewing health of your plant
- Search and explore for more plants.
