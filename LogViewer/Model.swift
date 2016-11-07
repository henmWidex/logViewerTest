//
//  Model.swift
//  LogViewer
//
//  Created by Henrik Mygind on 02/11/2016.
//  Copyright © 2016 Widex A/S. All rights reserved.
//

import Foundation

class Model {
    
    static let sharedInstance: Model = Model()
    
    let externalLib: ExternalLib;
    
    var exampleList: [UInt32] = [1, 2, 1, 1, 0, 2, 0, 1, 2, 2, 0, 0];
    
    var handler: ((UInt32) -> Void)?
    
    init() {
        self.externalLib = ExternalLib()
        self.externalLib.subscribe(callback: self.onLogReceived)
    }
    
    func onLogReceived(value: UInt32){
        // TODO handle this        
    }
}
