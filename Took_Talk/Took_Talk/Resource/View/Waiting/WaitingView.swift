//
//  WaitingView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/21/23.
//

import SwiftUI

struct WaitingView: View {
    @StateObject private var state = WaitingState()

    @Environment(\.presentationMode) var presentationMode
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let newFishTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("남은시간: \(state.timeRemaining)")
                .font(.headline)
                .padding()
            
            VStack {
                Text("점수: \(state.score)")
                    .font(.headline)
                    .padding()
                
                ZStack {
                    ForEach(state.fishes.indices, id: \.self) { index in
                        Image(state.fishes[index].imageName)
                            .resizable()
                            .frame(width: state.fishes[index].size, height: state.fishes[index].size)
                            .position(state.fishes[index].position)
                            .animation(.easeInOut)
                            .transition(.slide)
                            .onAppear {
                                startFishMovement(index)
                            }
                    }
                }
                .onTapGesture {
                    self.tappedFish()
                }
            }
            
            Spacer()
            NavigationLink(
                destination: ChatView(),
                isActive: $state.isChatViewActive) {
                    EmptyView()
                }
            .hidden()        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton())
        
        .alert(isPresented: $state.showAlert) {
//            if isChatViewActive == true {
//                
//            } else {
                Alert(
                    title: Text("게임 오버"),
                    message: Text("최종점수: \(state.score)"),
                    primaryButton: .default(Text("다시하기"), action: restartGame),
                    secondaryButton: .default(Text("나가기"), action: {
                        self.presentationMode.wrappedValue.dismiss()
                    })
                )
//            }
        }
        .onAppear(perform: startGame)
        .onReceive(timer) { _ in
            if state.timeRemaining > 0 {
                state.timeRemaining -= 1
            } else {
                endGame()
            }
            if state.timeRemaining == 8 {
                state.routeToChatView()
            }
        }
        .onReceive(newFishTimer) { _ in
            addNewFish()
        }
        .onDisappear {
            if state.timeRemaining == 0 {
                endGame()
            }
        }
    }
    
    func startGame() {
        state.score = 0
        state.timeRemaining = 10
        resetFishPositions()
    }
    
    func endGame() {
//        showAlert = true
    }
    
    func restartGame() {
        startGame()
    }
    
    func tappedFish() {
        if let index = state.fishes.indices.randomElement() {
            state.fishes.remove(at: index)
            state.score += 1
        }
    }
    func resetFishPositions() {
        state.fishes = [
            Fish(imageName: "fish", position: randomPosition(), size: 80),
            Fish(imageName: "fish", position: randomPosition(), size: 80),
            Fish(imageName: "fish", position: randomPosition(), size: 80)
        ]
    }
    
    func startFishMovement(_ index: Int) {
        guard index >= 0 && index < state.fishes.count else {
            return
        }
        
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        var count = 0
        
        state.fishes[index].position = randomPosition() // Initial random position
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
            if count < 100 { // Move fish for 5 seconds
                if index >= 0 && index < state.fishes.count {
                    state.fishes[index].position = randomPosition()
                    count += 1
                }
            } else {
                timer.invalidate()
            }
        }
    }
    
    func randomPosition() -> CGPoint {
        let minX: CGFloat = 50
        let minY: CGFloat = 100
        let maxX = UIScreen.main.bounds.width - 50
        let maxY = UIScreen.main.bounds.height - 100
        
        let randomX = CGFloat.random(in: minX...maxX)
        let randomY = CGFloat.random(in: minY...maxY)
        
        return CGPoint(x: randomX, y: randomY)
    }
    
    func addNewFish() {
        let newFish = Fish(imageName: "fish", position: randomPosition(), size: 80)
        state.fishes.append(newFish)
    }
}

#Preview {
    WaitingView()
}
