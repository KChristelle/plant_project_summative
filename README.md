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

## Problem Statement

Over the past few years, the houseplant industry has been growing and shows no signs of slowing down.  Seven in 10 millennials are plant owners, and 67% say taking care of their plants is more demanding than anticipated. New plant owners do not have the tools to take care of their plants and fail to keep their plants alive, leaving them feeling frustrated and discouraged. This Plant Tracker will provide the user with all the information they need before starting this journey. Once they own the plant, they will be given the tools to take care of the plant, such as calendars, reminders, and the right information about the plant.

## Solution Statement

For millennials between the ages of 23 and 38, who want to own a plant/plants and struggle with taking care of them, “The Plant Tracker” is an application that will provide them with the right tools to take care of their plants successfully. Instead of doing the research themselves on each individual plant, the plant tracker will provide all the information on one platform. 

## Purpose of the Application

The plant tracker application has four main goals:

1. Educate the user: Users who own plants or want to purchase plants will have information about plant care all in one place. For example, the application will have information on how much light the plant needs, how often one should water it, or what type of fertilizer.
2. Resource management: The app will allow the user to plan effectively and provide water/fertilizer at the right time. 
3. Time management: The app will remind the user about when to take care of the plant(s).
4. Give users more choices: Once users have access to the types of plants, they can choose which is best suited. 

## How it works

Below is a brief overview of how the app works. The mobile application will:

1. Add plant species to the user’s list of plants with their image and name
2. Add desired reminders, for example, watering a plant 
3. Allow setting of desired watering frequency
4. Explore and recommend other plant species suitable for growing at home
5. Send push notifications on watering and overall health of the plant
6. Display graphs for soil moisture levels and the required amount of water for a plant

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
- Search and explore for more plants
- Calendar for viewing daily tasks
