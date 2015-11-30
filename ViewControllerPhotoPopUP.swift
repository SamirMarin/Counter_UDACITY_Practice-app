//
//  ViewControllerPhotoPopUP.swift
//  ClickCounter
//
//  Created by Samir Marin on 2015-11-29.
//  Copyright © 2015 Samir Marin. All rights reserved.
//

import UIKit

class ViewControllerPhotoPopUP: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func thePhotos(sender: UIButton) {
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    @IBAction func alerME(sender: UIButton) {
        let nextController = UIAlertController()
        nextController.title = "HELLO THERE"
        nextController.message = "LET ME ALERT YOU"
        let done = UIAlertAction(title: "DONE", style: UIAlertActionStyle.Default){
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        nextController.addAction(done)
        self.presentViewController(nextController, animated: true, completion: nil)
    }
   
    @IBAction func showEmpty(sender: UIButton) {
        
        let image = UIImage()
        let nextController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(nextController, animated: true, completion: nil)
        
    }

}
