//
//  Graph.swift
//  Draw-axes
//
//  Created by Kristina Gelzinyte on 8/23/17.
//  Copyright © 2017 Kristina Gelzinyte. All rights reserved.
//

import UIKit

class Graph: UIView {

    let scaleConstant = 30  //use 40 pixels to make 1 unit
    var x: Double?
    var y: Double?
    
    override func draw(_ rect: CGRect) {        
        let axes: AxesDrawer =  AxesDrawer.init(color: UIColor.blue, contentScaleFactor: CGFloat(1))
        
        //top right
        axes.drawAxes(in: CGRect(origin: CGPoint(x: bounds.midX, y: bounds.midY),
                                 size: CGSize(width: 100*bounds.midX, height: -100*bounds.midY)),
                      origin: CGPoint(x: bounds.midX, y: bounds.midY),
                      pointsPerUnit: CGFloat(scaleConstant))
        
        //bottom right
        axes.drawAxes(in: CGRect(origin: CGPoint(x: bounds.midX, y: bounds.midY),
                                 size: CGSize(width: 100*bounds.midX, height: 100*bounds.midY)),
                      origin: CGPoint(x: bounds.midX, y: bounds.midY),
                      pointsPerUnit: CGFloat(scaleConstant))
        
        //top left
        axes.drawAxes(in: CGRect(origin: CGPoint(x: bounds.midX, y: bounds.midY),
                                 size: CGSize(width: -100*bounds.midX, height: -100*bounds.midY)),
                      origin: CGPoint(x: bounds.midX, y: bounds.midY),
                      pointsPerUnit: CGFloat(scaleConstant))

        //botton left
        axes.drawAxes(in: CGRect(origin: CGPoint(x: bounds.midX, y: bounds.midY),
                                 size: CGSize(width: -100*bounds.midX, height: 100*bounds.midY)),
                      origin: CGPoint(x: bounds.midX, y: bounds.midY),
                      pointsPerUnit: CGFloat(scaleConstant))
        
        
        //draw function
        var graph: GraphDrawer = GraphDrawer.init(color: UIColor.red, contentScaleFactor: CGFloat(1))
        
        graph.drawGraph(point: (x ?? 123, y ?? 123), in: CGRect(origin: CGPoint(x: bounds.midX, y: bounds.midY),size: CGSize(width: -2*bounds.midX, height: -2*bounds.midY)),
                       origin: CGPoint(x: bounds.midX, y: bounds.midY),
                       pointsPerUnit: CGFloat(scaleConstant))
        
    }

}




