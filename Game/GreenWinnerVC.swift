//
//  GreenWinnerVC.swift
//  GameProject
//
//  Created by Vison001 on 10/01/24.
//

import UIKit
import Lottie

class GreenWinnerVC: UIViewController {
    @IBOutlet weak var CommonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        setGradientBackground()
        setupAnimation()
    }
    let animationView = LottieAnimationView()
    
    func setGradientBackground() {
        let colorTop =  UIColor(.greenWinnerViewDark).cgColor
        let colorBottom = UIColor(.greenWinnerViewLight).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    func setupAnimation(){
        animationView.animation = LottieAnimation.named("GreenPinWinnerView")
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }
}
