//
//  DetailViewController.swift
//  daySix
//
//  Created by user on 08/08/2021.
//

import UIKit

class DetailViewController: UIViewController {
  @IBOutlet var imageView: UIImageView!
  var selectedImage: String?
  
    override func viewDidLoad() {
        super.viewDidLoad()
     
      navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.
      if let imageToLoad = selectedImage{
        imageView.image = UIImage(named: imageToLoad)
        
      }
      if let number = selectedImage  {
        let positionOfImage = Int(number)
      // line 23 to 26 need to be work on to get position of images in relation
        // to the total
        title = selectedImage
      }
    }
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }
}
  

