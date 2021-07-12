//
//  NewTaskViewController.swift
//  RealmObjPersistence
//
//  Created by Nana Adwoa Odeibea Amoah on 7/12/21.
//

import UIKit
import RealmSwift

protocol NewTaskControllerProtocol: AnyObject {
    func updatedTodo()
}

class NewTaskViewController: UIViewController {
    
    weak var delegate: NewTaskControllerProtocol?
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func saveTapped(_ sender: Any) {
        let titleFieldText = titleTextField.text ?? "N/A"
        let detailTextView = detailTextView.text ?? "N/A"
        
        newRecord(title: titleFieldText, detail: detailTextView)
        
    }
    
    func newRecord(title: String, detail: String){
        let realm = try! Realm()
        try? realm.write {
            let task = Task()
            task.title = title
            task.detail = detail
            realm.add(task)
        }
        
        self.dismiss(animated: true) {
            self.delegate?.updatedTodo()
        }
    }

}
