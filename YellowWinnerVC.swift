//
//  YellowWinnerVC.swift
//  GameProject
//
//  Created by Vison001 on 19/01/24.
//

import UIKit
import Lottie

class YellowWinnerVC: UIViewController {

    @IBOutlet weak var YellowWinnerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()
        setGradientBackground()
    }
    
    let animationView = LottieAnimationView()

    func setupAnimation(){
        animationView.animation = LottieAnimation.named("Yellow")
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .loop
        animationView.play()
        YellowWinnerView.addSubview(animationView)
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(.yellowWinnerViewDark).cgColor
        let colorBottom = UIColor(.yellowWinnerViewLight).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
