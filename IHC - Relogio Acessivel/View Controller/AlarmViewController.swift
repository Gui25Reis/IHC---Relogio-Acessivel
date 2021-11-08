//
//  AlarmViewController.swift
//  IHC - Relogio Acessivel
//
//  Created by Gui Reis on 08/11/21.
//

import UIKit

class AlarmViewController: UIViewController {
    
    /* MARK: - Atributos */
    
    // Entradas do usuário
    @IBOutlet weak private var TitleInput: UITextField!
    @IBOutlet weak private var DescriptionInput: UITextField!
    @IBOutlet weak private var DateInput: UIDatePicker!
    
    // Repetição
    private var Switchs: [UISwitch] = []
    private var DaysLabels: [UILabel] = []
    
    // Botões
    @IBOutlet weak private var CancelButton: UIButton!
    @IBOutlet weak private var SaveButton: UIButton!
    
    
    /* MARK: - Ciclo de Vida */
    
    override public func viewDidLoad() -> Void {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /* MARK: - Ações dos Botões */
    
    @IBAction private func cancelAction() -> Void {
        self.dismiss(animated: true)
    }
    
    @IBAction private func saveAction() -> Void {
        
    }
    
    
}
