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
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "この前", "さっき", "一昨日"]
    let dokodeArray: [String] = ["山の上で", "海で", "空で", "池で", "家で", "駅で"]
    let daregaArray: [String] = ["Aさんが", "Bさんが", "Cさんが", "Dさんが", "Eさんが", "Fさんが"]
    let doshitaArray: [String] = ["叫んだ", "一発芸をした", "キレた", "泣いた", "踊った", "遊んだ"]
    
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
        
        if index > 5 {
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
        let itsuIndex = Int.random(in: 0...5)
        let dokodeIndex = Int.random(in: 0...5)
        let daregaIndex = Int.random(in: 0...5)
        let doshitaIndex = Int.random(in: 0...5)
        
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

