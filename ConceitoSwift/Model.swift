//
//  Model.swift
//  ConceitoSwift
//
//  Created by Roberto Junior on 10/09/14.
//  Copyright (c) 2014 Roberto. All rights reserved.
//

import UIKit
import CoreData

@objc(Model)
class Model: NSManagedObject {
    @NSManaged var nome:String
    @NSManaged var sobrenome:String
    @NSManaged var perfil:String
}
