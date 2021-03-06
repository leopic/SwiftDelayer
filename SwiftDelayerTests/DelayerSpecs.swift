//
//  DelayerSpecs.swift
//  SwiftDelayer
//
//  Created by Chris Jimenez on 2/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation
import Nimble
import Quick
import SwiftDelayer

//Specs for the delayer class
class DelayerSpecs: QuickSpec {
    
    override func spec() {
        
        let timeout: NSTimeInterval = 3
        
        it("delays for 2 seconds"){
            
            var value = false
            
            Delayer.delay(2){
                
                value = true
                
            }
            
            expect(value).toEventually(beTruthy(),timeout:timeout)
        }
    }
    
}