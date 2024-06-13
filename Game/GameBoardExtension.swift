//
//  GameBoardExtension.swift
//  GameProject
//
//  Created by Vison001 on 14/12/23.
//

import UIKit

extension GameBoardVC {
    
    func handleGreen1PinMovement (sender : UIButton, movedVariable: inout Bool){
        
        if a == 5 || green1Out == true {
            print("The Movement of The Token is Finished")

            SelectionofGreen1 = true
            
            if a == 5 && green1Out == false {
                print("Rolling The Dice for Second Chance is Allowed")
            }
            
            greenpin1Btn.layer.borderColor = UIColor.greenTokenBorder.cgColor
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
        
        } else if green1Out == false && green2Out == false && green3Out == false && green4Out == false {
            
            BlueDiceSelection = true
            GreenDiceSelection = false
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
            imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
        }
        
    }
    
    func handleGreen2PinMovement (sender : UIButton , movedVariable: inout Bool){
        if a == 5 || green2Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofGreen2 = true
            
            greenpin2Btn.layer.borderColor = UIColor.black.cgColor
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
            
        } else if green1Out == false && green2Out == false && green3Out == false && green4Out == false {
            
            BlueDiceSelection = true
            GreenDiceSelection = false
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
            imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
        }
        
    }
    
    func handleGreen3PinMovement (sender : UIButton , movedVariable: inout Bool){
        if a == 5 || green3Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofGreen3 = true
            
            greenpin3Btn.layer.borderColor = UIColor.black.cgColor
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
            
        } else if green1Out == false && green2Out == false && green3Out == false && green4Out == false {
            
            BlueDiceSelection = true
            GreenDiceSelection = false
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
            imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
        }
        
    }
    
    func handleGreen4PinMovement (sender : UIButton , movedVariable: inout Bool){
        if a == 5 || green4Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofGreen4 = true
            
            greenpin4Btn.layer.borderColor = UIColor.black.cgColor
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
            
        } else if green1Out == false && green2Out == false && green3Out == false && green4Out == false {
            
            BlueDiceSelection = true
            GreenDiceSelection = false
            
            imageView1Btn.layer.borderColor = UIColor.clear.cgColor
            imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
        }
        
    }
    
    func MovetoGreenInitialView(sender : UIButton){
        
        if sender.tag ==  greenpin1Btn.tag {
            green1Out = false
            greenpin1Btn.tag = 101
            moveGreenPin1ToNextView(sender: greenpin1Btn)
        }
        else if sender.tag == greenpin2Btn.tag {
            green2Out = false
            greenpin2Btn.tag = 102
            moveGreenPin2ToNextView(sender: greenpin2Btn)
            
        }
        else if sender.tag == greenpin3Btn.tag {
            green3Out = false
            greenpin3Btn.tag = 103
            moveGreenPin3ToNextView(sender: greenpin3Btn)
            
        }
        else if sender.tag == greenpin4Btn.tag {
            green4Out = false
            greenpin4Btn.tag = 104
            moveGreenPin4ToNextView(sender: greenpin4Btn)
           
        }
    }
    func moveGreenPinToNextView(sender: UIButton) {
        BluePinKillLogic(sender: greenpin1Btn)
        
        
        
        var currentTag = sender.tag
       
//  
        print("The Greenpin1Btn Tag Value After Calculating the Actual Tag Value : \(sender.tag)")
        guard let nextView = findNextViewforGreenPinInStack(tag: currentTag) else {
            return
        }

        sender.removeFromSuperview()
        nextView.addSubview(sender)
        print("Tapped Pin Tag Value Is : \(sender.tag)")
        greenpin1Moved = true
        WinnerView()
    }
    

    func moveGreenPin1ToNextView(sender: UIButton ) {
        print("The Green Pin Btn Sender Tag Value is : \(sender.tag)")
                AnimateTheButton(sender: greenpin1Btn)
        var currentTag = sender.tag
       
        if currentTag > 52 && green1Out == true && currentTag < 90{
            currentTag -= 52
        }
        print("The Greenpin1Btn Tag Value After Calculating the Actual Tag Value : \(sender.tag)")
        guard let nextView = findNextViewforGreenPinInStack(tag: currentTag) else {
            return
        }

        greenpin1Btn.tag = currentTag
      

        print("The Current Tag Value is : \(currentTag)")
        greenpin1Btn.removeFromSuperview()
        nextView.addSubview(greenpin1Btn)
        print("Tapped Pin Tag Value Is : \(greenpin1Btn.tag)")
        greenpin1Moved = true
        WinnerView()
    }


    func moveGreenPin2ToNextView(sender: UIButton)
    {
        
        
        AnimateTheButton(sender: greenpin2Btn)

        var currentTag = sender.tag
        
        if currentTag > 52 && green2Out == true && currentTag < 90{
            currentTag -= 52
        }
        
        guard let nextView = findNextViewforGreenPinInStack( tag: currentTag) else{
            return
        }

        greenpin2Btn.tag = currentTag
        greenpin2Btn.removeFromSuperview()
        nextView.addSubview(greenpin2Btn)
        print("Tapped Pin Tag Value Is : \(greenpin2Btn.tag)")
        greenpin2Moved = true
        WinnerView()
    }
    func moveGreenPin3ToNextView(sender: UIButton)
    {
        
        
        var currentTag = sender.tag
        
        if currentTag > 52 && green3Out == true && currentTag < 90{
            currentTag -= 52
        }
        
        guard let nextView = findNextViewforGreenPinInStack( tag: currentTag) else{
            return
        }

        greenpin3Btn.tag = currentTag
        greenpin3Btn.removeFromSuperview()
        nextView.addSubview(greenpin3Btn)
        print("Tapped Pin Tag Value Is : \(greenpin3Btn.tag)")
        greenpin3Moved = true
        WinnerView()
    }
    func moveGreenPin4ToNextView(sender: UIButton)
    {
        
        
        var currentTag = sender.tag
        if currentTag > 52 && green4Out == true && currentTag < 90{
            currentTag -= 52
        }
        
        guard let nextView = findNextViewforGreenPinInStack( tag: currentTag) else{
            return
        }
        

        
        greenpin4Btn.tag = currentTag
        greenpin4Btn.removeFromSuperview()
        nextView.addSubview(greenpin4Btn)
        print("Tapped Pin Tag Value Is : \(greenpin4Btn.tag)")
       
        greenpin4Moved = true
        WinnerView()
    }
    
    
    func handleBlue1PinMovement (sender : UIButton, movedVariable: inout Bool){
        if b == 5 || blue1Out == true {
            print("The Movement of The Token is Finished")

            SelectionofBlue1 = true
            
            bluepin1Btn.layer.borderColor = UIColor.black.cgColor
            
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor

        } else if blue1Out == false && blue2Out == false && blue3Out == false && blue4Out == false{
            
            BlueDiceSelection = false
            GreenDiceSelection = true
            
            imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            // Additional logic for the false case
        }
        
    }
    func handleBlue2PinMovement (sender : UIButton , movedVariable: inout Bool){
        if b == 5 || blue2Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofBlue2 = true
            
            bluePin2Btn.layer.borderColor = UIColor.black.cgColor
            
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            
            // Ensure greenpin1Moved is set to true only if the tag condition is met
//            if bluePin2Btn.tag >= bluePinStartIndexVW.tag {
//                movedVariable = true
//            }
            // Additional logic if needed for the true case
        } else if blue1Out == false && blue2Out == false && blue3Out == false && blue4Out == false{
            
            BlueDiceSelection = false
            GreenDiceSelection = true
            
            imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            // Additional logic for the false case
        }
        
    }
    func handleBlue3PinMovement (sender : UIButton , movedVariable: inout Bool){
        if b == 5 || blue3Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofBlue3 = true
            
            bluepin3Btn.layer.borderColor = UIColor.black.cgColor
            
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            
            // Ensure greenpin1Moved is set to true only if the tag condition is met
//            if bluepin3Btn.tag >= bluePinStartIndexVW.tag {
//                movedVariable = true
//            }
            // Additional logic if needed for the true case
        } else if blue1Out == false && blue2Out == false && blue3Out == false && blue4Out == false{
            
            BlueDiceSelection = false
            GreenDiceSelection = true
            
            imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            // Additional logic for the false case
        }
        
    }
    func handleBlue4PinMovement (sender : UIButton , movedVariable: inout Bool){
        if b == 5 || blue4Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofBlue4 = true
            
            bluepin4Btn.layer.borderColor = UIColor.black.cgColor
            
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            
            // Ensure greenpin1Moved is set to true only if the tag condition is met
//            if bluepin4Btn.tag >= bluePinStartIndexVW.tag {
//                movedVariable = true
//            }
            // Additional logic if needed for the true case
        } else if blue1Out == false && blue2Out == false && blue3Out == false && blue4Out == false{
            
            BlueDiceSelection = false
            GreenDiceSelection = true
            
            imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
            imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            // Additional logic for the false case
        }
        
    }
    
    

    func MovetoBlueInitialView(sender : UIButton){     
        if sender.tag == bluepin1Btn.tag {
            bluepin1Btn.tag = 106
//            print("THE UPDATED TAG VALUE BLUEPIN1\(bluepin1Btn.tag)")

            blue1Out = false
            moveBluePin1ToNextView(sender: bluepin1Btn)

            
        }
        
        else if sender.tag == bluePin2Btn.tag {
            blue2Out = false
            bluePin2Btn.tag = 107
//            print("THE UPDATED TAG VALUE BLUEPIN2\(bluePin2Btn.tag)")
            moveBluePin2ToNextView(sender: bluePin2Btn)
            
        }
        else if sender.tag == bluepin3Btn.tag {
            blue3Out = false
            bluepin3Btn.tag = 108
//            print("THE UPDATED TAG VALUE OF BLUEPIN3 \(bluepin3Btn.tag)")
            moveBluePin3ToNextView(sender: bluepin3Btn)
            
        }
        else if sender.tag == bluepin4Btn.tag {
            blue4Out = false
            bluepin4Btn.tag = 109
//            print("THE UPDATED TAG VALUE OF BLUEPIN4 \(bluepin4Btn.tag)")
            moveBluePin4ToNextView(sender: bluepin4Btn)
            
        }
    }
    
    func moveBluePin1ToNextView(sender: UIButton)
    {
        
        AnimateTheButton(sender: bluepin1Btn)
        var currentTag = sender.tag
        
       
        
        guard let nextView = findNextViewInStack(sender: bluepin1Btn, tag: currentTag) else {
            return
        }
       
        bluepin1Btn.tag = currentTag
        bluepin1Btn.removeFromSuperview()
        nextView.addSubview(bluepin1Btn)
        print("Tapped Pin Tag Value Is :  -> \(bluepin1Btn.tag)")
        bluepin1Moved = true
        WinnerView()
    }
    
    //TO MOVE TOKEN 2 TO NEXT VIEW IN STACK VIEW
    
    func  moveBluePin2ToNextView(sender: UIButton)
    {
        print("Moving Blue Pin 2 to Next View")
        
        AnimateTheButton(sender: bluePin2Btn)
        let currenttag = sender.tag
        
   
        
        //        MovetoBlue2MainView(sender: bluePin2Btn)
        guard let nextView = findNextViewInStack(sender: bluePin2Btn, tag: currenttag) else{
            return
        }

        bluePin2Btn.tag = currenttag
        bluePin2Btn.removeFromSuperview()
        nextView.addSubview(bluePin2Btn)
        print("Tapped Pin Tag Value Is : \(bluePin2Btn.tag)")
//        w1Btn.layer.borderColor = UIColor.red.cgColor
        WinnerView()
    }
    
    //TO MOVE TOKEN 3 TO NEXT VIEW IN STACK VIEW
    
    func moveBluePin3ToNextView(sender :UIButton){
        
        print("Moving Blue Pin 3 to Next View")
        
        AnimateTheButton(sender: bluepin3Btn)
        let currenttag = bluepin3Btn.tag
        
        
        guard let nextView = findNextViewInStack(sender : bluepin3Btn, tag: currenttag) else{
            return
            
        }

       
        bluepin3Btn.tag = currenttag
        bluepin3Btn.removeFromSuperview()
        nextView.addSubview(bluepin3Btn)
        print("Tapped Pin Tag Value Is : \(bluepin3Btn.tag)")
        WinnerView()
    }
    
    //TO MOVE TOKEN 4 TO NEXT VIEW IN STACK VIEW
    
    func moveBluePin4ToNextView(sender : UIButton)
    {
        
        print ("Move Blue Pin 4 To Next View")
        
        AnimateTheButton(sender: bluepin4Btn)
        let  currenttag = bluepin4Btn.tag
        
        
        guard let nextView = findNextViewInStack(sender: bluepin4Btn, tag: currenttag) else{
            return
        }

        
        
        bluepin4Btn.tag = currenttag
        bluepin4Btn.removeFromSuperview()
        nextView.addSubview(bluepin4Btn)
        print("Tapped Pin Tag Value Is : \(bluepin4Btn.tag)")
        //        }
        //        imageView2Btn.layer.borderWidth = 0.0
        //        imageView2Btn.layer.borderColor = UIColor.clear.cgColor
        //
        //        imageView1Btn.layer.borderWidth = 2.0
        //        imageView1Btn.layer.borderColor = UIColor.red.cgColor
        
        WinnerView()
    }
    

    func findNextViewInStack(sender : UIButton, tag: Int) -> UIView? {
        
        print("The Find Next View Method Is Called")
        
       

        for case let horizontalStackView as UIStackView in verticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
               
                print("InnerView tag: \(innerView.tag), Expected Tag: \(tag)")
                if innerView.tag == tag {
                    UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [.curveEaseInOut], animations: {
                        innerView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                    }) { (_) in
                        UIView.animate(withDuration: 0.5) {
                            innerView.transform = CGAffineTransform.identity
                        }
                    }
                    return innerView
                }
            }
          
        }
       
        return nil
        
    }
    
    //     To Move The Token To The Next view In Stack View
    
    func findNextViewforGreenPinInStack(tag: Int) -> UIView? {

        print("The Find Next View Method Is Called")
        
        for case let horizontalStackView as UIStackView in verticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
               
//                print("InnerView tag: \(innerView.tag), Expected Tag: \(tag)")
                if innerView.tag == tag {
                    UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [.curveEaseInOut], animations: {
                        innerView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                    }) { (_) in
                        UIView.animate(withDuration: 0.5) {
                            innerView.transform = CGAffineTransform.identity
                        }
                    }
                    return innerView
                }
            }
          
        }
       
        return nil
        
    }
    
    func WinnerView(){
        
        if bluepin1Btn.tag == 58 && bluePin2Btn.tag == 58 && bluepin3Btn.tag == 58 && bluepin4Btn.tag == 58 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let WinnerViewController = storyBoard.instantiateViewController(withIdentifier: "WinnerVC") as! WinnerVC
            self.present(WinnerViewController, animated: true, completion: nil)
        }
        else if greenpin1Btn.tag == 95 && greenpin2Btn.tag == 95 && greenpin3Btn.tag == 95 && greenpin4Btn.tag == 95{
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let WinnerViewController = storyBoard.instantiateViewController(withIdentifier: "GreenWinnerVC") as! GreenWinnerVC
            self.present(WinnerViewController, animated: true, completion: nil)
        }
    }
    func GreenPinKillLogic(sender : UIButton){
        
        if sender.tag == greenpin1Btn.tag{
            green1Out = false
            greenpin1Btn.tag = 101
            MovetoGreenInitialView(sender: greenpin1Btn)
        }
        else if sender.tag == greenpin2Btn.tag{
            green2Out = false
            greenpin2Btn.tag = 102
            MovetoGreenInitialView(sender: greenpin2Btn)
        }
        else if sender.tag == greenpin3Btn.tag{
            green3Out = false
            greenpin3Btn.tag = 103
            MovetoGreenInitialView(sender: greenpin3Btn)
        }
        else if sender.tag == greenpin4Btn.tag {
            green4Out = false
            greenpin4Btn.tag = 104
            MovetoGreenInitialView(sender: greenpin4Btn)
        }
    }
    
    func BluePinKillLogic(sender : UIButton){
        
        print("The Sender Button is : \(sender) and the tag Value of The Sender Button is : \(sender.tag)")
        
        if sender.tag == bluepin1Btn.tag {
            blue1Out = false
            bluepin1Btn.tag = 106
            moveBluePin1ToNextView(sender: bluepin1Btn)
        }
        else if sender.tag == bluePin2Btn.tag{
            blue2Out = false
            bluePin2Btn.tag = 107
            moveBluePin2ToNextView(sender: bluePin2Btn)
        }
        else if sender.tag == bluepin3Btn.tag {
            blue3Out = false
            bluepin3Btn.tag = 108
            moveBluePin3ToNextView(sender: bluepin3Btn)
        }
        else if sender.tag == bluepin4Btn.tag {
            blue4Out = false
            bluepin4Btn.tag = 109
            moveBluePin4ToNextView(sender: bluepin4Btn)
        }
    }
   
   
}
