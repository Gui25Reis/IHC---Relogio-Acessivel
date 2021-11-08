//
//  AlarmInfo.swift
//  IHC - Relogio Acessivel
//
//  Created by Gui Reis on 08/11/21.
//

import UIKit

/// Informações do alarme:
struct AlarmInfo {
    let title: UILabel?
    let description: UILabel?
    let date: String
    let repetition: [String]?
    let activated: Bool
}
