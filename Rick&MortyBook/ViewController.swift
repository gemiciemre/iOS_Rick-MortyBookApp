//
//  ViewController.swift
//  Rick&MortyBook
//
//  Created by Emre Gemici on 1.08.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
 
    
    @IBOutlet weak var tableView: UITableView!
    
    var myRickFamilies = [RickMorty]()
    var chosenRickMorty : RickMorty?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Rick&Morty Objects
        
        let rick = RickMorty(rickMortyName: "Rick", rickMortyJob: "Scientist", rickMortyImage: UIImage(named: "ricksanchez")!, rickMortyComment: "Rick Sanchez is one of the two eponymous characters and the main protagonist from the Adult Swim animated television series Rick and Morty. Created by Justin Roiland and Dan Harmon and voiced by the former, Sanchez is a misanthropic alcoholic scientist inspired by Christopher Lloyd's Dr. Emmett Doc Brown from Back to the Future and Reed Richards from Marvel Comics. In September 2021, Lloyd portrayed Sanchez himself in a series of promotional interstitials for the series.")
        let morty = RickMorty(rickMortyName: "Morty", rickMortyJob: "Student", rickMortyImage: UIImage(named: "morty")!, rickMortyComment: "Mortimer Morty Smith is one of the titular characters, one of the five main characters and the secondary protagonist of the American animated television series Rick and Morty. Created by Justin Roiland and Dan Harmon, Morty is an anxious 14-year-old based on Michael J. Fox's Marty McFly from Back to the Future.[3] Known for his awkward, anxious, second-guessing, and doubtful personality and low sense of self-esteem, the character has been well-received. He is the good-natured and impressionable grandson of mad scientist Rick Sanchez, the son of Jerry and Beth Smith, and the younger brother of Summer Smith, who can be easily.")
        let summer = RickMorty(rickMortyName: "Summer", rickMortyJob: "Student", rickMortyImage: UIImage(named: "summer")!, rickMortyComment: "Summer Smith (voiced by Spencer Grammer[1]) is Morty's 17-year-old (18 after season 5) older sister, a more conventional and often superficial teenager, who is obsessed with improving her status among her peers. Summer is generally similar to her mother, and she is often shown to be very smart and humorous, but she has also shown elements of Jerry's approval-seeking. She occasionally expresses jealousy that Morty gets to accompany Rick on his inter-dimensional adventures.")
        let beth = RickMorty(rickMortyName: "Beth", rickMortyJob: "Veterinary", rickMortyImage: UIImage(named: "beth")!, rickMortyComment: "Beth Smith (née Sanchez) (voiced by Sarah Chalke) is Rick's daughter, Summer and Morty's mother, and Jerry's wife. She is a veterinarian who specializes in horse surgery, a job she internally feels to be beneath her and is often defensive when her career is compared to human medicine. Level-headed and assertive, she struggles with her husband's ego, which thrives in defiance of his proven mediocrity.")
        let jerry = RickMorty(rickMortyName: "Jerry", rickMortyJob: "Beekeeper", rickMortyImage: UIImage(named: "jerry")!, rickMortyComment: "Jerry Smith (voiced by Chris Parnell[1]) is Summer and Morty's insecure 34-year-old father, Beth's husband, and Rick's son-in-law, who strongly disapproves of Rick's influence over his family. Jerry used to work at a low-level advertising agency until he was fired for incompetence. Generally insecure, he is frequently led into conflicts stemming from opportunistic posturing, while his marriage is sometimes jeopardized by his wife's reactions to his poor relationship with Rick")
        
            //reference wikipedia.com
        
        myRickFamilies.append(rick)
        myRickFamilies.append(morty)
        myRickFamilies.append(summer)
        myRickFamilies.append(beth)
        myRickFamilies.append(jerry)
        
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myRickFamilies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myRickFamilies[indexPath.row].name
        return cell 
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenRickMorty = myRickFamilies[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
            
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC   // Diğer Kaynağı gidilmesi için yazılması gereken kod.
            destinationVC.selectedRickMorty = chosenRickMorty
        }
    }
    


}

