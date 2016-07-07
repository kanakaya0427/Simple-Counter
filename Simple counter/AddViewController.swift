//
//  AddViewController.swift
//  Simple counter
//
//  Created by NakayaKana on 2016/07/04.
//  Copyright © 2016年 NakayaKana. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var KinyuTextField: UITextField!
    

    let saveData = NSUserDefaults.standardUserDefaults()
    var KinyuArray: [AnyObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        if saveData.arrayForKey("KINYU") != nil {
        KinyuArray = saveData.arrayForKey("KINYU")!
        }
            
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func done(){
        let KinyuDictionary = ["naiyou":KinyuTextField.text!]
        KinyuArray.append(KinyuDictionary)
        saveData.setObject(KinyuArray,forKey: "KINYU")
        
        
        // UIAlertControllerを作成する.
        let myAlert: UIAlertController = UIAlertController(title: "入力が完了しました。", message: "", preferredStyle: .Alert)
        
        // OKのアクションを作成する.
        let myOkAction = UIAlertAction(title: "OK", style: .Default) { action in
            print("Action OK!!")
        }
        
        // OKのActionを追加する.
        myAlert.addAction(myOkAction)
        
        // UIAlertを発動する.
        presentViewController(myAlert, animated: true, completion: nil)

        
        KinyuTextField.text = ""
    }
    
    

    @IBAction func back(){
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
