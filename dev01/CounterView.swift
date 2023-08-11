//
//  CounterView.swift
//  dev01
//
//  Created by ㅤ on 16/8/23.
//

import SwiftUI
import WrappingHStack

struct CounterView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var matches: Int = 0
    @State var matchesToWin: Int = 0
    @State var pointsPerMatch: Int = 0
    @State var deuceEnabled: Bool = false
    @State var presets: [String: [Int]] = [
        "Badminton": [3, 21],
        "Volleyball": [3, 25]
    ]
    func calculateMatchesToWin() {
        matchesToWin = (matches / 2) + 1
    }
    
    func toggleDeuce() {
        deuceEnabled = !deuceEnabled
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Total matches: \(matches)")
                Spacer()
                Button {
                    matches -= 1
                    calculateMatchesToWin()
                } label: {
                    if colorScheme == .dark {
                        Text("-").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                    } else {
                        Text("-").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
                    }
                }
                Button {
                    matches += 1
                    calculateMatchesToWin()
                } label: {
                    if colorScheme == .dark {
                        Text("+").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                    } else {
                        Text("+").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
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
                        Text("-").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
                    }
                }
                Button {
                    pointsPerMatch += 1
                } label: {
                    if colorScheme == .dark {
                        Text("+").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                    } else {
                        Text("+").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
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
                        Text("Toggle On/off").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
                    }
                }
            }
            HStack {
                Text("Presets").multilineTextAlignment(.leading).font(.system(size: 36)).bold()
                Spacer()
            }
            WrappingHStack {
                Spacer()
                ForEach(Array(presets.keys), id: \.self) { key in
                    Button {
                        matches = presets[key]![0]
                        calculateMatchesToWin()
                        pointsPerMatch = presets[key]![1]
                    } label: {
                        if colorScheme == .dark {
                            Text(key).bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                        } else {
                            Text(key).bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
                        }
                    }
                    Spacer()
                }
            }
            Spacer()
            HStack {
                NavigationLink {
                    CountingView(matches: matches, pointsPerMatch: pointsPerMatch, deuceEnabled: deuceEnabled)
                } label: {
                    if colorScheme == .dark {
                        Text("Start").bold().padding().foregroundColor(.black).background(.white).cornerRadius(20.0)
                    } else {
                        Text("Start").bold().padding().foregroundColor(.white).background(.black).cornerRadius(20.0)
                    }
                }
            }
        }.padding()
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
