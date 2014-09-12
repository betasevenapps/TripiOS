//
//  CadastroViewController.swift
//  ConceitoSwift
//
//  Created by Roberto Junior on 10/09/14.
//  Copyright (c) 2014 Roberto. All rights reserved.
//

import UIKit
import CoreData

class CadastroViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField! = nil
    @IBOutlet weak var txtSobrenome: UITextField! = nil
    @IBOutlet weak var txtPerfil: UITextField! = nil
    @IBOutlet weak var imgCad: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func Salvar(sender: UIBarButtonItem) {
        
        //Referencia para o AppDelegate
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        //Referencia MOC
        
        let context: NSManagedObjectContext = appDel.managedObjectContext!
        let minhaEntity = NSEntityDescription.entityForName("Lista", inManagedObjectContext: context)
        
        //Cria a instancia
        
        var newItem = Model(entity: minhaEntity!, insertIntoManagedObjectContext: context)
        
        newItem.nome = txtNome.text
        newItem.sobrenome = txtSobrenome.text
        newItem.perfil = txtPerfil.text
        
        //Salvar
        
        context.save(nil)
        
        println(newItem)
        
        //Navega para a top view controller
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
