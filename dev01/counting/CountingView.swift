//
//  CountingView.swift
//  dev01
//
//  Created by ㅤ on 10/9/23.
//

import SwiftUI

struct CountingView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var matches: Int
    @State var pointsPerMatch: Int
    @State var deuceEnabled: Bool
    @State var teamOnePoints: [Int] = [0, 0]
    @State var teamTwoPoints: [Int] = [0, 0]
    @State var gameEnd: Bool = false
    @State var winner: String = ""
    // Calculates Game End
    func checkForGameEnd() {
        if deuceEnabled {
            // If deuce is on, team needs
            // two point lead
            if (abs(teamOnePoints[1] - teamTwoPoints[1]) >= 2) {
                if (teamOnePoints[1] >= pointsPerMatch) {
                    teamOnePoints[0] += 1
                    teamOnePoints[1] = 0
                    teamTwoPoints[1] = 0
                } else if (teamTwoPoints[1] >= pointsPerMatch) {
                    teamTwoPoints[0] += 1
                    teamOnePoints[1] = 0
                    teamTwoPoints[1] = 0
                }
            }
        } else {
            if (teamOnePoints[1] == pointsPerMatch) {
                teamOnePoints[0] += 1
                teamOnePoints[1] = 0
                teamTwoPoints[1] = 0
            } else if (teamTwoPoints[1] == pointsPerMatch) {
                teamTwoPoints[0] += 1
                teamOnePoints[1] = 0
                teamTwoPoints[1] = 0
            }
        }
        // Ends Game and updates winner variable
        if teamOnePoints[0] == ((matches/2)+1) {
            gameEnd = true
            winner = "Team one"
            teamOnePoints[0] = 0
            teamTwoPoints[0] = 0
            teamOnePoints[1] = 0
            teamTwoPoints[1] = 0
        } else if teamTwoPoints[0] == ((matches/2)+1) {
            gameEnd = true
            winner = "Team two"
            teamOnePoints[0] = 0
            teamTwoPoints[0] = 0
            teamOnePoints[1] = 0
            teamTwoPoints[1] = 0
        }
    }
    var body: some View {
        VStack {
            Text("To win, you need to win \(matches/2+1) match(es)")
            Text(deuceEnabled ? "Deuce mode enabled - two point lead to win match\n\n" : "Deuce mode off\n\n").multilineTextAlignment(.center)
            HStack {
                VStack {
                    Text("Team One Score\n(Current Match)").multilineTextAlignment(.center)
                    Text("\(teamOnePoints[1])").multilineTextAlignment(.center).font(.system(size: 36)).bold()
                    Text("\n\nTeam One Score\n(Matches)").multilineTextAlignment(.center)
                    Text("\(teamOnePoints[0])").multilineTextAlignment(.center).font(.system(size: 36)).bold()
                    Button {
                        teamOnePoints[1] += 1
                        checkForGameEnd()
                    } label: {
                        if colorScheme == .dark {
                            Text("+").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text("+").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
                        }
                    }
                }
                Spacer()
                VStack {
                    Text("Team Two Score\n(Current Match)").multilineTextAlignment(.center)
                    Text("\(teamTwoPoints[1])").multilineTextAlignment(.center).font(.system(size: 36)).bold()
                    Text("\n\nTeam Two Score\n(Matches)").multilineTextAlignment(.center)
                    Text("\(teamTwoPoints[0])").multilineTextAlignment(.center).font(.system(size: 36)).bold()
                    Button {
                        teamTwoPoints[1] += 1
                        checkForGameEnd()
                    } label: {
                        if colorScheme == .dark {
                            Text("+").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text("+").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
                        }
                    }
                }
            }.padding(.horizontal)
            // Only shows winner if gameEnd
            // == true (conditional rendering)
            Text(gameEnd ? "GAME OVER!!! \(winner) wins!!!" : "").multilineTextAlignment(.center).font(.system(size: 36)).bold()
            Spacer()
        }
    }
}

struct CountingView_Previews: PreviewProvider {
    static var previews: some View {
        CountingView(matches: 3, pointsPerMatch: 5, deuceEnabled: true)
    }
}
