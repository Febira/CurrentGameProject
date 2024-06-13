//
//  TwoPlayerVC.swift
//  GameProject
//
//  Created by Vison001 on 01/12/23.
//

import UIKit

class TwoPlayerVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var user2nameTf: UITextField!
    @IBOutlet weak var user1nameTf: UITextField!
    @IBOutlet weak var CommonView: UIView!
    @IBOutlet weak var ExitBtn: UIButton!
    
    var User1name : String = "User1name"
    var User2name : String = "User2name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        playBtn.layer.cornerRadius = 10
        HideKeyBoard()
        user1nameTf.delegate = self
        user2nameTf.delegate = self
        navigationItem.hidesBackButton = true
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
        
        
        if user1nameTf.text != "" && user2nameTf.text != ""{
            
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "GameBoardVC") as! GameBoardVC
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
        else if user1nameTf.text == "" || user2nameTf.text == "" {
            
            
            if user1nameTf.text == "" && user2nameTf.text == "" {
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
  
        return true
    }
    
    @IBAction func ExitButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}


