//
//  detailsVC.swift
//  Rick&MortyBook
//
//  Created by Emre Gemici on 1.08.2022.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var commentTextView: UITextView!
    
    
    
 
    var selectedRickMorty : RickMorty?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = selectedRickMorty?.name  // opsiyonel olarak oluşturuyoruz.
        jobLabel.text = selectedRickMorty?.job
        imageView.image = selectedRickMorty?.image
        commentTextView.text = selectedRickMorty?.comment
        
        // ?? sonrasında lineSpacing on textView
  
     

        // Do any additional setup after loading the view.
    }
    

 

}
