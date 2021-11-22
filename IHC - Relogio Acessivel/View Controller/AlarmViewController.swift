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
    @IBOutlet weak private var titleInput: UITextField!
    @IBOutlet weak private var descriptionInput: UITextField!
    @IBOutlet weak private var dateInput: UIDatePicker!
    
    // Repetição
    @IBOutlet weak var repetitionView: UIView!
    private var switchs: [UISwitch] = []
    
    // Botões
    @IBOutlet weak private var cancelButton: UIButton!
    @IBOutlet weak private var saveButton: UIButton!
    
    
    /* MARK: - Ciclo de Vida */
    
    override public func viewDidLoad() -> Void {
        super.viewDidLoad()
        
        let lblTexts: [String] = ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"]
        
        var allLabel: [UILabel] = []
        var auxLabel: UILabel!
        var auxSwitch: UISwitch!
        for x in 0..<7 {
            
            auxLabel = self.newLabel(text: lblTexts[x])
            allLabel.append(auxLabel)
            self.repetitionView.addSubview(auxLabel)
            
            auxSwitch = self.newSwitch()
            self.switchs.append(auxSwitch)
            self.repetitionView.addSubview(auxSwitch)
            
            
            if x != 0 {
                auxLabel.topAnchor.constraint(equalTo: allLabel[x-1].bottomAnchor, constant: 5).isActive = true
                
                auxSwitch.topAnchor.constraint(equalTo: self.switchs[x-1].bottomAnchor, constant: 5).isActive = true
            }
            
            auxLabel.leftAnchor.constraint(equalTo: self.repetitionView.leftAnchor).isActive = true
            auxSwitch.rightAnchor.constraint(equalTo: self.repetitionView.rightAnchor).isActive = true
        }
        

        // Do any additional setup after loading the view.
    }
    
    
    /* MARK: - Ações dos Botões */
    
    @IBAction private func cancelAction() -> Void {
        self.dismiss(animated: true)
    }
    
    @IBAction private func saveAction() -> Void {
        self.dismiss(animated: true)
    }
    
    
    /* MARK: - Outros */
    
    private func newLabel(text: String) -> UILabel {
        let lbl = UILabel()
        lbl.text = text
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        lbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        lbl.widthAnchor.constraint(equalToConstant: 85).isActive = true
        
        return lbl
    }
    
    private func newSwitch() -> UISwitch {
        let lbl = UISwitch()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        lbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        lbl.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        return lbl
    }
}
