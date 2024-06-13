//
//  OnePlayerVC.swift
//  GameProject
//
//  Created by Vison001 on 01/12/23.
//

import UIKit
import Lottie

class OnePlayerVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var CommonView: UIView!
    
    @IBOutlet weak var user1nameTf: UITextField!
    @IBOutlet weak var user2nameTf: UITextField!
    @IBOutlet weak var user3nameTf: UITextField!
    @IBOutlet weak var user4nameTf: UITextField!
    
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var BackBtn: UIImageView!
    @IBOutlet weak var AnimationView: UIView!
    
    
    var User1name : String = "User1name"
    var User2name : String = "User2name"
    var User3name : String = "User3name"
    var User4name : String = "User4name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        playBtn.layer.cornerRadius = 10
        HideKeyBoard()
        user1nameTf.delegate = self
        user2nameTf.delegate = self
        user3nameTf.delegate = self
        user4nameTf.delegate = self
        navigationItem.hidesBackButton = true
//        setupAnimation()

    }
    let animationView = LottieAnimationView()
    
    func setupAnimation(){
                animationView.animation = LottieAnimation.named("Moving Dice")
                animationView.frame = CGRect(x: 45, y: 10, width: 300, height: 300)
        
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

    @IBAction func playBtn(_ sender: Any) {
        
        UserDefaults.standard.setValue(user1nameTf.text, forKey: "User1name")
        UserDefaults.standard.setValue(user2nameTf.text, forKey: "User2name")
        UserDefaults.standard.setValue(user3nameTf.text, forKey: "User3name")
        UserDefaults.standard.setValue(user4nameTf.text, forKey: "User4name")
        
        
        
        
        if user1nameTf.text != "" && user2nameTf.text != "" && user3nameTf.text != "" && user4nameTf.text != ""{

            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FourPlayerGameBoardVC") as! FourPlayerGameBoardVC
            self.navigationController?.pushViewController(nextViewController, animated: true)
            
        }
        else if user1nameTf.text == "" || user2nameTf.text == "" || user3nameTf.text == "" || user4nameTf.text == ""{
            
            
            if user1nameTf.text == "" && user2nameTf.text == "" && user3nameTf.text == "" && user4nameTf.text == "" {
                let alertController = UIAlertController(title: "Enter User Name ", message: "", preferredStyle: .alert)
               
                           let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                           }
                           alertController.addAction(okAction)
                           present(alertController, animated: true, completion: nil)
            }
            else if user1nameTf.text == ""   {

                let alertController = UIAlertController(title: "Enter User Name 1", message: "", preferredStyle: .alert)

                let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                }
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
                
            }
            else if user2nameTf.text == ""{

                let alertController = UIAlertController(title: "Enter User Name 2", message: "", preferredStyle: .alert)

                let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                }
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
            }
            else if user3nameTf.text == ""   {

                let alertController = UIAlertController(title: "Enter User Name 3", message: "", preferredStyle: .alert)

                let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                }
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
                
            }
            else if user4nameTf.text == ""   {

                let alertController = UIAlertController(title: "Enter User Name 4", message: "", preferredStyle: .alert)

                let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                }
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
                
            }
        }
    
    }
   
    func HideKeyBoard(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
        target: self,
        action: #selector(dismissMyKeyboard))
        CommonView.addGestureRecognizer(tap)
    }
    @objc func dismissMyKeyboard(){
    view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.autocorrectionType = .no
        textField.resignFirstResponder()
        

        return true
    }
    
    @IBAction func BackButton(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)

    }
    
}



