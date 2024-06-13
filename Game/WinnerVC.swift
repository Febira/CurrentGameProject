//
//  WinnerVC.swift
//  GameProject
//
//  Created by Vison001 on 22/12/23.
//

import UIKit
import Lottie

class WinnerVC: UIViewController {

    @IBOutlet weak var Winnernametf: UITextField!
    @IBOutlet weak var WinnerNameLabel: UILabel!
    @IBOutlet weak var CommonView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        setGradientBackground()
        setupAnimation()
    }



    func setGradientBackground() {
        let colorTop =  UIColor(.themeDark).cgColor
        let colorBottom = UIColor(.themeLight).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    let animationView = LottieAnimationView()

    func setupAnimation(){
        animationView.animation = LottieAnimation.named("WinnerAnimation")
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .loop 
        animationView.play()
        view.addSubview(animationView)
    }
    

}
