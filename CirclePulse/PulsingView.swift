//
//  PulsingView.swift
//  CirclePulse
//
//  Created by Imran razak on 06/11/2022.
//

import SwiftUI

struct PulsingView: View {
    var body: some View {
        CircleLayers()

    }

}

struct PulsingView_Previews: PreviewProvider {
    static var previews: some View {
        PulsingView()
    }
}


struct CircleLayers: View {
    
    @State var animation = false
    
    var body: some View {
        ZStack{
            Color.blue.opacity(0.65)
                .ignoresSafeArea(.all)
            
            Circle().fill(Color.blue.opacity(0.45)).frame(width: 2000, height: 2000)
                .scaleEffect(self.animation ? 1 : 0)
                //.scaleEffect(self.animation ? 1 : 0)
            Circle().fill(Color.blue.opacity(0.40)).frame(width: 1500, height: 1500)
                .scaleEffect(self.animation ? 1 : 0)
            Circle().fill(Color.blue.opacity(0.35)).frame(width: 1000, height: 1000)
                .scaleEffect(self.animation ? 1 : 0)
            
          //  Circle().fill(Color.blue.opacity(0.25)).frame(width: 800, height: 800)
                // .scaleEffect(self.animation ? 1 : 0)
            
            Circle().fill(Color.blue.opacity(0.25)).frame(width: 2000, height: 2000)
                .scaleEffect(self.animation ? 1 : 0)
            
        }.onAppear{
            self.animation.toggle()
            
        }
        .animation(.linear(duration: 15.0).repeatForever(autoreverses: true), value: animation)
        
    }

}
