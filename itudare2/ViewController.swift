//
//  ViewController.swift
//  itudare2
//
//  Created by Yuto Wakabayashi on 2019/10/25.
//  Copyright © 2019 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel: UILabel!
       @IBOutlet var dokodeLabel: UILabel!
       @IBOutlet var daregaLabel: UILabel!
       @IBOutlet var doshitaLabel: UILabel!
       
       let itsuArray: [String] = ["一年前", "一週間前", "昨日", "前"]
       let dokodeArray: [String] = ["山の上で", "海で", "空で", "池で"]
       let daregaArray: [String] = ["Aさんが", "Bさんが", "Cさんが", "Dさんが"]
       let doshitaArray: [String] = ["叫んだ", "一発芸をした", "キレた", "泣いた"]
       
       var index: Int = 0
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }

       @IBAction func change(){
           itsuLabel.text = itsuArray[index]
           dokodeLabel.text = dokodeArray[index]
           daregaLabel.text = daregaArray[index]
           doshitaLabel.text = doshitaArray[index]
           
           index = index + 1
           
           if index > 3 {
               index = 0
           }
       }
       @IBAction func reset(){
           itsuLabel.text = "---"
           dokodeLabel.text = "---"
           daregaLabel.text = "---"
           doshitaLabel.text = "---"
           
           index = 0
       }
       @IBAction func random(){
           let itsuIndex = Int(arc4random_uniform(4))
           let dokodeIndex = Int(arc4random_uniform(4))
           let daregaIndex = Int(arc4random_uniform(4))
           let doshitaIndex = Int(arc4random_uniform(4))
           
           print("いつ:\(itsuIndex)")
           print("どこで:\(dokodeIndex)")
           print("だれが:\(daregaIndex)")
           print("どうした:\(doshitaIndex)")
           itsuLabel.text = itsuArray[index]
           dokodeLabel.text = dokodeArray[index]
           daregaLabel.text = daregaArray[index]
           doshitaLabel.text = doshitaArray[index]
    }
       
   


}

