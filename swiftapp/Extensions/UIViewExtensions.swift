//
//  UIViewExtensions.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 28/10/2563 BE.
//

import Foundation
import UIKit

extension UIView {
    func rotateAnimation(_ isRotate : Bool) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.5) {
                self.transform = CGAffineTransform.identity.rotated(by: isRotate ? .pi/4:0)
            }
        }
    }
    func flipAnimation(_ isFlip : Bool, _ duration : TimeInterval = 0.5) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: duration, delay: 0.0, options: .curveEaseInOut, animations: {
                self.transform = CGAffineTransform(scaleX: isFlip ? -1:1, y: 1)
               }, completion: nil)
        }
    }
    
    func createParticles() {
        let particleEmitter = CAEmitterLayer()

        particleEmitter.emitterPosition = CGPoint(x: self.frame.width / 2.0, y: -50)
        particleEmitter.emitterShape = .line
        particleEmitter.emitterSize = CGSize(width: self.frame.width, height: 1)
        particleEmitter.renderMode = .additive

        let cell = CAEmitterCell()
        cell.birthRate = 2
        cell.lifetime = 7.0
        cell.velocity = 100
        cell.velocityRange = 50
        cell.emissionLongitude = .pi
        cell.spinRange = 5
        cell.scale = 0.5
        cell.scaleRange = 0.25
        cell.color = UIColor.orange.cgColor
        cell.alphaSpeed = -0.025
        cell.contents = UIImage(named: "particle")?.cgImage
        particleEmitter.emitterCells = [cell]

        self.layer.addSublayer(particleEmitter)
    }
    
}
