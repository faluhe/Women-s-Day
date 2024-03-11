//
//  ParticleEmitterView.swift
//  Women'sDay
//
//  Created by Ismailov Farrukh on 11/03/24.
//

import SwiftUI

struct ParticleEmitterView: UIViewRepresentable {

    func makeUIView(context: Context) ->  UIView {
        let uiView = UIViewType()
        ParticleEmitter.setupParticles(in: uiView)
        return uiView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
