////
////  LoginVC.swift
////  GameProject
////
////  Created by Vison001 on 01/12/23.
////
//import AuthenticationServices
//import UIKit
//import Lottie
//import Security
//import SwiftUI
//
//
//// Import necessary libraries
//
//class LoginVC: UIViewController, ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding {
//    
//    var FullNamefromID: String = ""
//    
//    @IBOutlet weak var CommonView: UIView!
//    private let signInButton = ASAuthorizationAppleIDButton()
//    
//    override func viewDidLoad() {
//        navigationItem.hidesBackButton = true
//        super.viewDidLoad()
//        print("ENTERED THE LOGIN VC")
//
//        
//        CommonView.addSubview(signInButton)
//        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
//        
//        // Check if the user is already signed in
//        if isSignedInWithAppleID() {
//            navigateToGameStoryboard()
//        }
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        signInButton.frame = CGRect(x: 70, y: 500, width: 250, height: 50)
//    }
//    
//    @objc func didTapSignIn() {
//        
//        print("############ The Sign IN With Apple ID is Tapped ##########")
//        print("         ")
//        let provider = ASAuthorizationAppleIDProvider()
//        let request = provider.createRequest()
//        request.requestedScopes = [.fullName, .email]
////        print("FULL NAME: \(fullName)")
////        print("EMAIL : \(.email)")
//        let controller = ASAuthorizationController(authorizationRequests: [request])
//        controller.delegate = self
//        controller.presentationContextProvider = self
//        controller.performRequests()
//    }
//    
//    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
//        return view.window!
//    }
//    
//    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
//        print("Failed")
//    }
//    
//func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
//        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
//            let userIdentifier = appleIDCredential.user
//            let fullName = appleIDCredential.fullName
//            let email = appleIDCredential.email
//            let isFaceIDEnabled = true
//            print("         ")
//            print("Full Name : \(String(describing: fullName))")
//                
//            // Check if fullName is not nil, then convert it to a string
//            if let formattedName = fullName?.formatted {
//                FullNamefromID = formattedName()
//            } else {
//                // If fullName is nil, provide a default value or handle accordingly
//                FullNamefromID = ""
//            }
//            
//            print("email : \(String(describing: email))")
//            print("         ")
//            
//            // Save user identifier to Keychain
//            saveUserIdentifierToKeychain(userIdentifier: userIdentifier)
//            
//            navigateToGameStoryboard()
//            print("         ")
//            print("User id is \(userIdentifier) \n Full Name is \(String(describing: fullName)) \n Email id is \(String(describing: email))")
//            print("         ")
//        }
//    }
//
//    
//    func saveUserIdentifierToKeychain(userIdentifier: String) {
//        // Save data to Keychain
//        let query: [String: Any] = [
//            kSecClass as String: kSecClassGenericPassword,
//            kSecAttrAccount as String: "userIdentifier",
//            kSecValueData as String: userIdentifier.data(using: .utf8)!,
//            kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
//        ]
//        
//        SecItemDelete(query as CFDictionary) // Remove any existing data
//        let status = SecItemAdd(query as CFDictionary, nil)
//        
//        if status == errSecSuccess {
//            print("         ")
//            print("User identifier saved to Keychain successfully")
//            print("         ")
//            
//        } else {
//            print("         ")
//            print("Error saving user identifier to Keychain: \(status)")
//            print("         ")
//        }
//    }
//    
//    func isSignedInWithAppleID() -> Bool {
//        // Check if the user is signed in with Apple ID
//    
//        let query: [String: Any] = [
//            kSecClass as String: kSecClassGenericPassword,
//            kSecAttrAccount as String: "userIdentifier",
//            kSecReturnData as String: kCFBooleanTrue!,
//            kSecMatchLimit as String: kSecMatchLimitOne
//        ]
//        
//        var result: AnyObject?
//        let status = SecItemCopyMatching(query as CFDictionary, &result)
//        
//        return status == errSecSuccess
//    }
//    
//    func navigateToGameStoryboard() {
//        let gameStoryboard = UIStoryboard(name: "Game", bundle: nil)
//        if let selectPlayersViewController = gameStoryboard.instantiateViewController(withIdentifier: "SelectPlayerViewController") as? SelectPlayerViewController {
//            selectPlayersViewController.userName = FullNamefromID
//
//            navigationController?.pushViewController(selectPlayersViewController, animated: true)
//        }
//    }
//}
//
