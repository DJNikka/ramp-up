//
//  Ramp.swift
//  ramp-up
//
//  Created by Konstantine Piterman on 9/22/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import Foundation
import SceneKit
import ARKit

class Ramp {
    
    
    class func getRampForName(rampName: String) -> SCNNode {
        switch rampName {
        case "pipe":
            return Ramp.getPipe()
        case "quarter":
            return Ramp.getQuarter()
        case "pyramid":
            return Ramp.getPyramid()
        default:
            return Ramp.getPipe()
        }
    }
    
    
    
    class func getPipe() -> SCNNode {
        
        
        let obj = SCNScene(named: "art.scnassets/pipe.dae")
        let node = obj?.rootNode.childNode(withName: "pipe", recursively: true)!
        node?.scale = SCNVector3Make(0.0025, 0.00250, 0.0025)
        node?.position = SCNVector3Make(-1, 0.75, -1)
        return node!
        
        
    }
    
    
    class func getPyramid() -> SCNNode {
        
        let obj = SCNScene(named: "art.scnassets/pyramid.dae")
        let node = obj?.rootNode.childNode(withName: "pyramid", recursively: true)!
        node?.scale = SCNVector3Make(0.0060, 0.0060, 0.0060)
        node?.position = SCNVector3Make(-1, -0.45, -1)
        return node!
        
    }
    
    
    
    class func getQuarter() -> SCNNode {
        
        let obj = SCNScene(named: "art.scnassets/quarter.dae")
        let node = obj?.rootNode.childNode(withName: "quarter", recursively: true)!
        node?.scale = SCNVector3Make(0.0060, 0.0060, 0.0060)
        node?.position = SCNVector3Make(-1, -2.2, -1)
        return node!
        
        
    }
    
    class func startRotation(node: SCNNode) {
        let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1))
           node.runAction(rotate)
    }
    
}
