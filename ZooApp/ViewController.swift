//
//  ViewController.swift
//  ZooApp
//
//  Created by Mike on 3/27/19.
//  Copyright © 2019 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var listOfKillerAnimals = [Animal]()
    var listOfNotKillerAnimals = [Animal]()
    var AnimalType = ["Not Killer", "killer"]
    
    @IBOutlet weak var tvListAnimal: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfNotKillerAnimals.append(Animal(name: "Baboon", des: "Baboons are primates comprising the genus Papio, one of the 23 genuses of Old World monkeys.", image: "baboon"))
        listOfNotKillerAnimals.append(Animal(name: "Bulldog", des: "The Bulldog, also known as the British Bulldog or English Bulldog, is a medium-sized breed of dog. It is a muscular, hefty dog with a wrinkled face and a distinctive pushed-in nose", image: "bulldog"))
        listOfNotKillerAnimals.append(Animal(name: "Panda", des: "The giant panda lives in a few mountain ranges in central China, mainly in Sichuan, but also in neighbouring Shaanxi and Gansu", image: "panda"))
        listOfNotKillerAnimals.append(Animal(name: "zebra", des: "There are three species of zebras: the plains zebra, the mountain zebra and the Grévy's zebra.", image: "zebra"))
        listOfNotKillerAnimals.append(Animal(name: "Swallow", des: "The swallows, martins and saw-wings, or Hirundinidae, are a family of passerine birds found around the world on all continents, including occasionally in Antarctica", image: "swallow"))
        listOfNotKillerAnimals.append(Animal(name: "White Tiger", des: "The white tiger or bleached tiger is a pigmentation variant of the Bengal tiger, which is reported in the wild from time to time in the Indian states of Madhya Pradesh, Assam, West Bengal and Bihar ", image: "white_tiger"))
        
        tvListAnimal.delegate = self
        tvListAnimal.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return AnimalType[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listOfNotKillerAnimals.count
        }else{
            return listOfKillerAnimals.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAnimal:TVCAnimal = tableView.dequeueReusableCell(withIdentifier: "cellAnimal", for: indexPath) as!  TVCAnimal
        
        if indexPath.section == 0 {
             cellAnimal.setAnimal(animal: listOfNotKillerAnimals[indexPath.row])
        }else{
            cellAnimal.setAnimal(animal: listOfKillerAnimals[indexPath.row])
        }
        return cellAnimal
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            print(listOfNotKillerAnimals[indexPath.row].image!)
            listOfNotKillerAnimals.remove(at: indexPath.row)
            //listOfNotKillerAnimals.append(listOfNotKillerAnimals[indexPath.row])
        }else{
            print(listOfNotKillerAnimals[indexPath.row].name!)
            listOfKillerAnimals.remove(at: indexPath.row)
            //listOfKillerAnimals.append(listOfKillerAnimals[indexPath.row])
        }
        tvListAnimal.reloadData()
    }
    
}
   
