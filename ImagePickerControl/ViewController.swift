//
//  ViewController.swift
//  ImagePickerControl
//
//  Created by Jae Lee on 11/1/19.
//  Copyright © 2019 Jae Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!

     var imagePicker: ImagePicker!

     override func viewDidLoad() {
         super.viewDidLoad()

         self.imagePicker = ImagePicker(presentationController: self, delegate: self)
     }
     
     @IBAction func showImagePicker(_ sender: UIButton) {
         self.imagePicker.present(from: sender)
     }
}


extension ViewController: ImagePickerDelegate {

    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
}
