//
//  ViewController.swift
//  pickingimagepractice 2
//
//  Created by James Miller on 3/6/20.
//  Copyright © 2020 James Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imagePickerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pickImage(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        //imagePicker.allowsEditing = false
        //self.imagePickerView.contentMode =
        //imagePickerView.frame.size = CGSize(width: 300, height: 300)
        //imagePickerView.contentMode = .center
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imagePickerView.image = image
            //imagePickerView.contentMode = .scaleAspectFit
            //imagePickerView.frame.size = CGSize(width: 300, height: 300)
        }
        dismiss(animated: true, completion: nil)
    
    }
}

    


