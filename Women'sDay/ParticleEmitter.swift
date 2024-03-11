//
//  ParticleEmitter.swift
//  Women'sDay
//
//  Created by Ismailov Farrukh on 11/03/24.
//

import SwiftUI

struct ParticleEmitter {

    static func setupParticles(in view: UIView) {
        let particleEmitter = CAEmitterLayer()

        particleEmitter.emitterPosition = CGPoint(x: 0, y: -100)
        particleEmitter.emitterSize = CGSize(width: 400, height: 400)
        particleEmitter.emitterMode = .surface
        particleEmitter.renderMode = .additive

        let petalCell = CAEmitterCell()

        petalCell.contents = UIImage(named: "petal")?.cgImage
        petalCell.birthRate = 10
        petalCell.lifetime = 30
        petalCell.velocity = 60
        petalCell.scale = 0.02
        petalCell.velocityRange = 150
        petalCell.scaleRange = 0.05
        petalCell.spin = -28 * (.pi / 180.0)
        petalCell.spinRange = 57.2 * (.pi / 180.0)
        petalCell.yAcceleration = 40
        petalCell.xAcceleration = 5
        petalCell.color = UIColor(white: 1, alpha: 1).cgColor


        let numCell = CAEmitterCell()

        numCell.contents = UIImage(named: "8-march")?.cgImage
        numCell.birthRate = 1
        numCell.lifetime = 30
        numCell.velocity = 50
        numCell.scale = 0.3
        numCell.velocityRange = 150
        numCell.scaleRange = 0.05
        numCell.spin = -28 * (.pi / 180.0)
        numCell.spinRange = 57.2 * (.pi / 180.0)
        numCell.yAcceleration = 40
        numCell.xAcceleration = 5
        numCell.color = UIColor(white: 1, alpha: 0.8).cgColor

        particleEmitter.emitterCells = [petalCell, numCell]
        view.layer.addSublayer(particleEmitter)
    }
}
