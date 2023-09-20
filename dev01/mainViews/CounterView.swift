//
//  CounterView.swift
//  dev01
//
//  Created by ㅤ on 16/8/23.
//

import SwiftUI

struct CounterView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var matches: Int = 0
    @State var matchesToWin: Int = 0
    @State var pointsPerMatch: Int = 0
    @State var deuceEnabled: Bool = false
    // Presets for different Net and Court games
    @State var presets: [String: [Int]] = [
        "Badminton": [3, 21],
        "Tennis": [6, 4],
        "Volleyball": [3, 25]
    ]
    
    // Normally, you need to win the majority
    // of matches, which will always be
    // matches/2 + 1
    func calculateMatchesToWin() {
        matchesToWin = (matches / 2) + 1
    }
    
    // Quick way to swap from true to !true (false)
    // or false to !false (true)
    func toggleDeuce() {
        deuceEnabled = !deuceEnabled
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                
                // Matches
                HStack {
                    Text("Total matches: \(matches)")
                    Spacer()
                    // Decrease number of
                    // matches
                    Button {
                        matches -= 1
                        calculateMatchesToWin()
                    } label: {
                        // Button with colour
                        // background which
                        // changes with each
                        // darkmode / lightmode
                        if colorScheme == .dark {
                            Text("-").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text("-").bold().padding().foregroundColor(.white).background(.gray).cornerRadius(20.0)
                        }
                    }
                    Button {
                        matches += 1
                        calculateMatchesToWin()
                    } label: {
                        if colorScheme == .dark {
                            Text("+").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text("+").bold().padding().foregroundColor(.white).background(.gray).cornerRadius(20.0)
                        }
                    }
                }
                HStack {
                    Text("Matches to win in order to win: \(matchesToWin)")
                    Spacer()
                }
                HStack {
                    Text("Points per match: \(pointsPerMatch)")
                    Spacer()
                    Button {
                        pointsPerMatch -= 1
                    } label: {
                        if colorScheme == .dark {
                            Text("-").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text("-").bold().padding().foregroundColor(.white).background(.gray).cornerRadius(20.0)
                        }
                    }
                    Button {
                        pointsPerMatch += 1
                    } label: {
                        if colorScheme == .dark {
                            Text("+").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text("+").bold().padding().foregroundColor(.white).background(.gray).cornerRadius(20.0)
                        }
                    }
                }
                HStack {
                    Text(deuceEnabled == true ? "Deuce enabled: True" : "Deuce enabled: False")
                    Spacer()
                    Button {
                        toggleDeuce()
                    } label: {
                        if colorScheme == .dark {
                            Text("Toggle On/off").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text("Toggle On/off").bold().padding().foregroundColor(.white).background(.gray).cornerRadius(20.0)
                        }
                    }
                }
                ScrollView {
                    HStack {
                        ForEach(Array(presets.keys), id: \.self) { key in
                            Button {
                                matches = presets[key]![0]
                                calculateMatchesToWin()
                                pointsPerMatch = presets[key]![1]
                            } label: {
                                if colorScheme == .dark {
                                    Text(key).bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                                } else {
                                    Text(key).bold().padding().foregroundColor(.white).background(.gray).cornerRadius(20.0)
                                }
                            }
                        }
                    }
                }
                
                // Opens the counting view
                NavigationLink {
                    CountingView(matches: matches, pointsPerMatch: pointsPerMatch, deuceEnabled: deuceEnabled)
                } label: {
                    if colorScheme == .dark {
                        Text("Start").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                    } else {
                        Text("Start").bold().padding().foregroundColor(.white).background(.gray).cornerRadius(20.0)
                    }
                }
                
                Spacer()
            }.padding()
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
