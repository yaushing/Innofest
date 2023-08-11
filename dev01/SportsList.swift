//
//  SportsList.swift
//  dev01
//
//  Created by ㅤ on 17/8/23.
//

import Foundation
import SwiftUI

struct CreateSport {
    var sportName: String
    var type: String
    var players: String
    var general: String
    var scoring: String
    var moreInfo: [[String]]
    var object: String
}

class SportsList {
    let sportsInformation = [
        "Volleyball": CreateSport(sportName: "Volleyball", type: "NC", players: "6", general: "Volleyball is a team sport played on a rectangular court divided by a net.\n\nEach team consists of six players, and the objective is to score points by sending the ball over the net and into the opponent's court in a way that makes it difficult for them to return the ball. Teams can touch the ball up to three times on their side before sending it back over the net.\n\nThe game begins with a serve from one team, and the rally continues until the ball hits the floor, goes out of bounds, or a team fails to return it properly.\n\nPlayers can't catch, hold, or throw the ball; it must be hit with open-handed strikes, including volleys and spikes.", scoring: "In volleyball, each rally can result in points for either the serving or receiving team.\n\nA point is scored when\n\n1. A team successfully lands the ball in the opponent's court\n\n2. The opponent fails to return it within the allowed three touches.\n\nThe serving team scores a point if they win the rally. If the receiving team wins the rally, they earn the right to serve, but they do not score a point.\n\nThe first team to reach 25 points and have a lead of at least two points wins a set. If the match reaches a deciding set (usually the third set in indoor volleyball), it is played to 15 points.\n\nIn some cases, a set might also be played to a certain score, such as 21, depending on the rules of the tournament or league.", moreInfo: [["Fédération Internationale de Volleyball (FIVB)", "https://www.fivb.org"], ["Real Volleyball", "https://www.realvolleyball.com"], ["The Art of Coaching (Volleyball)", "https://www.theartofcoachingvolleyball.com"]], object: "ball"),
        "Football": CreateSport(sportName: "Football", type: "TI", players: "11", general: "Football, is a team sport played with two teams of 11 players each on a rectangular field. The objective is to score goals by kicking the ball into the opponent's goal, while also preventing the opposing team from scoring in your own goal. Players use any part of their body except their arms and hands to control and move the ball. The game is played in two halves, each lasting 45 minutes in professional matches, with a halftime break in between. The team with the most goals at the end of the match wins.", scoring: "In football, a team scores a goal when the entire ball crosses the goal line between the goalposts and under the crossbar. The team that scores the most goals during the match is declared the winner. If the match ends in a tie (draw), some competitions might have extra time or penalty shootouts to determine the winner. In knockout stages of tournaments, if the score is tied at the end of regular time, extra time is usually played, consisting of two 15-minute halves. If the match remains tied after extra time, a penalty shootout takes place, where each team takes a series of penalty kicks, alternating turns.", moreInfo: [["Fédération Internationale de Football Association (FIFA)", "https://fifa.com"], ["The Soccer Store", "https://www.thesoccerstore.co.uk"], ["The International Football Association Board", "https://www.theifab.com/"]], object: "ball"),
        "Basketball": CreateSport(sportName: "Basketball", type: "TI", players: "5", general: "Basketball is a fast-paced team sport played on a rectangular court with two teams, each consisting of five players. The objective is to score points by shooting the ball through the opponent's basket, which is a hoop suspended 10 feet (3.05 meters) above the floor. Players move the ball by dribbling (bouncing the ball while moving) and passing it to teammates. The team with possession tries to create open shots and score, while the defending team aims to prevent the offense from scoring and to regain possession of the ball. The game is played in quarters, with the team that scores the most points winning the match.", scoring: "In basketball, points are scored by successfully making a field goal or free throw. A field goal is worth two points if made from anywhere on the court except beyond the three-point line, where it is worth three points. A free throw is worth one point and is awarded after certain fouls. To score a field goal, the ball must pass through the opponent's basket from above. The team with the most points at the end of the game is the winner. If the score is tied at the end of regulation time, the game typically goes into overtime, with each overtime period lasting a set duration (e.g., 5 minutes), until a winner is determined.", moreInfo: [["National Basketball Association", "https://www.nba.com/"], ["Fédération Internationale de Basketball Association (FIBA)", "https://www.fiba.basketball"], ["Olympics", "https://olympics.com/en/news/what-how-basketball-rules-scoring-techniques-olympics-players-positions"]], object: "ball"),
        "Sepak Takraw": CreateSport(sportName: "Sepak Takraw", type: "NC", players: "3", general: "Sepak Takraw is a traditional sport played predominantly in Southeast Asia. It is similar to volleyball and soccer but involves players using their feet, knees, chest, and head to hit a rattan ball over the net. Teams are composed of three players each, and the objective is to send the ball over the net and into the opponent's side of the court while preventing them from returning the ball. Players can't use their hands or arms to touch the ball, except during the serve. The game is played in a best-of-three sets format, with the team that first reaches a predetermined number of points winning a set.", scoring: "In Sepak Takraw, scoring follows a rally-point system, meaning a point is scored on every serve, regardless of which team served. A team earns a point by successfully sending the ball over the net and into the opponent's court, making it impossible for the opposing team to return the ball. The serving team continues to serve as long as they score points, but if they fail to score, the opposing team gains the serve. A set is typically played to 21 points, and a team must win by a margin of at least two points. If the match reaches a deciding set, it is played to 15 points. Points can be earned through various shots, such as 'Spike' (striking the ball forcefully downward), 'Roll' (rolling the ball along the net), and 'Serve' (starting the rally by serving the ball over the net).", moreInfo: [["International Sepak Takraw Federation", "http://sepaktakraw.org"], ["Sepak Takraw Wiki", "https://en.wikipedia.org/wiki/Sepak_takraw"], ["Takrawesome", "https://takrawesome.com"]], object: "ball"),
        "Swimming": CreateSport(sportName: "Swimming", type: "RA", players: "1", general: "Swim for a specified distance, normally 100m", scoring: "Person to finish first, without any fouls, wins.", moreInfo: [["", ""]], object: "NIL"),
        "Badminton": CreateSport(sportName: "Badminton", type: "NC", players: "1-2", general: "You hit a shuttlecock back and forth in the rally. The rally lasts until 11 points, and typically lasts as one match, or best-of-three, where the team or individual to get 11 points first wins.", scoring: "A point is scored if\n\n1. The shuttlecock lands in the other player's sport.\n2. The opponent is unable to return the shuttlecock to your side after you hit it over teh net.\n3. ", moreInfo: [["", ""]], object: "shuttle")
    ]
}