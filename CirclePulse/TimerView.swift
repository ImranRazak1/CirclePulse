//
//  TimerView.swift
//  CirclePulse
//
//  Created by Imran razak on 06/11/2022.
//

import SwiftUI

struct TimerView: View {
    @State private var timeRemaining = 100
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Time: \(timeRemaining)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    .background(.black.opacity(0.75))
                    .clipShape(Capsule())
                
                ZStack {
                    
                }
            }
        }.onReceive(timer) { time in
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
        }
    }

}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
