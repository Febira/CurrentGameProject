//
//  SelectPlayerViewController.swift
//  GameProject
//
//  Created by Vison001 on 11/12/23.
//

import UIKit
import Lottie
//self.push(nextViewController, animated:true, completion:nil)
//       self.navigationController?.pushViewController(nextViewController, animated: true)
class SelectPlayerViewController: UIViewController {
    
    @IBOutlet weak var UsernameLabel: UILabel!
    @IBOutlet weak var AnimationView: UIView!
    @IBOutlet weak var oneplayerBtn: UIButton!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var twoplayersBtn: UIButton!
    
    var userName : String?


    let animationView = LottieAnimationView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setGradientBackground()
        oneplayerBtn.layer.cornerRadius = 20
        twoplayersBtn.layer.cornerRadius = 20
                setupAnimation()
        navigationItem.hidesBackButton = true
//        if let userName = UsernameLabel {
//                    UsernameLabel.text = "Welcome, \(userName)!"
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false

               NSLayoutConstraint.activate([
                   animationView.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
                   animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                   animationView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                   animationView.heightAnchor.constraint(equalToConstant: 250)
               ])
//               }
    }
    
    func setupAnimation(){
                animationView.animation = LottieAnimation.named("Dice2")
                animationView.frame = CGRect(x: 15, y: 20, width: 375, height: 250)
        
        //        animationView.frame = view.bounds
                animationView.contentMode = .scaleAspectFit
                animationView.loopMode = .loop
                animationView.play()
                AnimationView.addSubview(animationView)
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
    
    @IBAction func OnePlayerBtn(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "OnePlayerVC") as! OnePlayerVC
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
        
    }
    
    @IBAction func TwoPlayerBtn(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "TwoPlayerVC") as! TwoPlayerVC
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBAction func LogOutBtn(_ sender: Any) {
        
        removeUserDataFromKeychain()
        Alert()
//        navigationController?.popToRootViewController(animated: true)
    }
    func removeUserDataFromKeychain() {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: "userIdentifier"
        ]
        
        // Remove the user identifier from Keychain
        let status = SecItemDelete(query as CFDictionary)
        
        if status == errSecSuccess {
            print("User identifier removed from Keychain successfully")
        } else {
            print("Error removing user identifier from Keychain: \(status)")
        }
    }
  
    func Alert(){
        
        let alert = UIAlertController(title: "Logout", message: "Are You Sure You Want To Logout", preferredStyle: UIAlertController.Style.alert)
  alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { action in

//      self.Yes()

  }))
  alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: nil))
  self.present(alert, animated: true, completion: nil)
    }
//func Yes(){
//            if let viewController = navigationController?.viewControllers.first(where: {$0 is LoginVC}) {
//               
//                  navigationController?.popToViewController(viewController, animated: false)
//            }
//        
//    }
    }
    


