//
//  ViewController.swift
//  spaceship-template
//
//  Created by Zhao, Alex | COCO on 19/3/21.
//

import UIKit

class ViewController: UIViewController {
    let gameVM = GameViewModel()
    let gameLoop = GameLoopDisplayLink()

    override func viewDidLoad() {
        super.viewDidLoad()

        gameLoop.gameLogicObserver = gameVM

        let gameView = GameView(frame: self.view.bounds)
        gameView.setViewModel(viewModel: gameVM)
        self.view.addSubview(gameView)
    }
}

