//
//  ExternalLib.swift
//  LogViewer
//
//  Created by Henrik Mygind on 07/11/2016.
//  Copyright © 2016 Widex A/S. All rights reserved.
//

import Foundation

class ExternalLib {
    func subscribe(callback: @escaping (UInt32) -> Void) {
        DispatchQueue.global(qos: .background).async {
            while(true){
                let e = arc4random_uniform(3);
                callback(e);
                
                let rand = Double(arc4random_uniform(1000)) / 1000.0
                let interval = 1.0 + (rand * 2.5)
                Thread.sleep(forTimeInterval: interval)
            }
        }
    }
}
