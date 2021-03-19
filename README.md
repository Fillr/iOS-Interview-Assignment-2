### Take Home Assignemnt: Spaceship Game

![Right Click to Download Gameplay Video](https://user-images.githubusercontent.com/1269263/111420286-0ca8a380-873f-11eb-940a-ba9b1061da3a.mp4)

![Gameplay Screenshot](https://user-images.githubusercontent.com/1269263/111424644-24cff100-8746-11eb-8840-e6e17f58a5e0.png)

There are some game assets provided below, but you can create your own assets.

Requirements:
1. Use UIKit or Swift UI; no game engine or GameplayKit.
2. Use swift or objective c; no third party library.
3. Object-oriented design, ideally use MVVM, but you can use any design that you think best fits this project.
4. Business logic is separated from UI code, so it is easy to switch between UIKit and Swift UI if we want to.
5. The submitted solution can be compiled and run on the simulator.
6. Unit testing, particularly business logic is testable.
7. Please commit the solution in a Git repo, then zip the repo and email it back.

Specs:
Please follow the steps below, so if you can't finish all the steps, we can still check how much you have done.
1. Create a game loop that updates the UI at an interval.
2. Create a user-controlled spaceship, the ship moving around following the user touches.
3. The user spaceship fires lasers at an interval.
4. Create enemy spaceships moving from the top of the screen towards the bottom.
5. The enemy spaceship fires lasers at an interval as well.
6. Removing the references of the enemy spaceships and lasers after they move outside the screen boundary, so we don't run out of memory.
7. Collision detection: if the enemy spaceship collides with the user lasers, the laser will be destroyed, and the spaceship loses life, eventually destroyed.
8. Collision detection: if the user spaceship collides with the enemy lasers, the laser will be destroyed, and the spaceship loses life, eventually destroyed.
9. Collision detection: if the user spaceship collides with the enemy spaceship, the one that has less life will be destroyed.
10. The spaceship flashes when gets hit.
11. Update user spaceship and scores (how many enemy spaceships destroyed) on the screen.
12. Feel free to add more features if you can finish all the above steps.

Template Project:
A template project is created to help you to get started under the folder `spaceship-template`. The project is using MVVM with RXSwift, and it already completed step 1 and 2. You don't have to use the template project if you think there is better way to do it.

Assets:
Player Spaceship:
![player_ship](https://user-images.githubusercontent.com/1269263/111425315-1afabd80-8747-11eb-80bc-cbe03b5bf97a.png)

Enemy Spaceship:
![enemy](https://user-images.githubusercontent.com/1269263/111425011-a0ca3900-8746-11eb-81b7-55e785db655b.png)

Laser Blue:
![laser_blue](https://user-images.githubusercontent.com/1269263/111425029-a7f14700-8746-11eb-939c-8771b76f6560.jpg)

Laser Red:
![laser_Red](https://user-images.githubusercontent.com/1269263/111425040-ab84ce00-8746-11eb-9607-53e33ec8307e.jpg)



