//
//  SportsList.swift
//  dev01
//
//  Created by ㅤ on 17/8/23.
//

import Foundation

struct CreateSport {
    var sportName: String
    var type: String
    var players: String
    var general: String
    var scoring: String
    var moreInfo: [[String]]
    var object: String
    var recommendedEquipment: [[String]]
}

class SportsList {
    let sportsInformation = [
        "Athletics": CreateSport(sportName: "Athletics", type: "RA", players: "1", general: "Players race for a specified distance, whoever comes first wins", scoring: "NA", moreInfo: [["", ""]], object: "shoes", recommendedEquipment: [["", ""]]),
        "Archery": CreateSport(sportName: "Archery", type: "TG", players: "1", general: "Players shoot at a target, generally using a compound bow that is approved. The player that hits the target closest to the bull's eye gets the highest points and therefore wins", scoring: "A player gets a point based on how accurate he/her hits the target - the closer to the centre (the bull's eye), the higher the score.", moreInfo: [["World Archery", "https://www.worldarchery.sport"], ["Archery Association Of Singapore (AAS)", "https://archerysingapore.org.sg"]], object: "bow arrow", recommendedEquipment: [["Diamond Archery Infinite Compound Bow (Bow)", "https://amzn.to/3QZf6Vr"], ["Bear Archery Royale Youth Compound Bow (Bow)", "https://amzn.to/3Gb72dx"]]),
        "Aqua Aerobics": CreateSport(sportName: "Aqua Aerobics", type: "NA", players: "NA", general: "Aqua Aerobics are water workouts incorporated with variety of rhythmic body movements and dance steps. This activity helps to improve cardiovascular and muscular conditioning. Guided by an experienced instructor, you will enjoy these sessions that provide fitness and fun. In addition, it is an effective weight-control exercise for everyone at all ages, fitness levels, and swimming ability! ", scoring: "NA", moreInfo: [["", ""]], object: "NA", recommendedEquipment: [["", ""]]),
        "Aqua Spinning": CreateSport(sportName: "Aqua Spinning", type: "NA", players: "NA", general: "Aqua cycling or aqua spinning is a technique in fitness training. In aqua cycling, a stationary apparatus similar to a bicycle frame is submerged in a pool, while its rider's upper body remains above the water. ", scoring: "NA", moreInfo: [["", ""]], object: "NA", recommendedEquipment: [["", ""]]),
        "Aqua Tabata": CreateSport(sportName: "Aqua Tabata", type: "NA", players: "NA", general: "Aqua Tabata is a 45-min High-Intensity Interval Training (HIIT) that works both the aerobic and anaerobic systems.", scoring: "NA", moreInfo: [["", ""]], object: "NA", recommendedEquipment: [["", ""]]),
        "Aqua Zumba": CreateSport(sportName: "Aqua Zumba", type: "NA", players: "NA", general: "Aqua Zumba® blends the Zumba® philosophy with water resistance, for one pool party you shouldn't miss! Benefits. There is less impact on your joints during an Aqua Zumba® class so you can really let loose. Water creates natural resistance, which means every step is more challenging and helps tone your muscles.", scoring: "NA", moreInfo: [["", ""]], object: "NA", recommendedEquipment: [["", ""]]),
        "Badminton": CreateSport(sportName: "Badminton", type: "NC", players: "1-2", general: "Badminton is a fast-paced racquet sport played indoors or outdoors, primarily as a singles match (one player on each side) or a doubles match (two players on each side). The objective is to score points by hitting a shuttlecock (birdie) over the net and into the opponent's side of the court, making it difficult for them to return. Players use racquets to strike the shuttlecock. The game follows a serve-and-rally format, with one side serving to start the point, and the rally continues until a point is won or lost. In badminton, the shuttlecock must pass over the net and land within the boundaries of the opponent's court.", scoring: "In badminton, points are scored by the serving side. A point is earned when the opposing side fails to return the shuttlecock within the rules. Points can be scored by either side during the rally. A game is usually played to 21 points, and the side that scores 21 points first, while leading by at least two points, wins the game. If the score reaches 20-20, a two-point lead is required to win the game. Matches are typically best-of-three games.", moreInfo: [["Badminton World Dederation (BWF)", "https://bwf.tournamentsoftware.com"], ["The Badminton Bible", "https://www.badmintonbible.com"]], object: "shuttle", recommendedEquipment: [["Yonex Astrox Flash Boost (Racket)", "https://www.yonex.com/us/badminton/racquets/astrox-fb-strung"], ["Karakal Black Zone 30 (Racket)", "https://karakal.com/products/karakal-black-zone-30-badminton-racket"]]),
        "Deepwater Aqua Drum Vibes": CreateSport(sportName: "Deepwater Aqua Drum Vibes", type: "NA", players: "NA", general: "This is a 60-minutes of an amazing world of drum rhythm workout at the deeper end of the pool with the use of a floatation belt.  The workout requires engaging the core for stability while combining various upper body intense drumming routines with lots of splashes that will definitely drum away the stress of the day.", scoring: "NA", moreInfo: [["", ""]], object: "NA", recommendedEquipment: [["", ""]]),
        "Football": CreateSport(sportName: "Football", type: "TI", players: "11", general: "Football, is a team sport played with two teams of 11 players each on a rectangular field. The objective is to score goals by kicking the ball into the opponent's goal, while also preventing the opposing team from scoring in your own goal. Players use any part of their body except their arms and hands to control and move the ball. The game is played in two halves, each lasting 45 minutes in professional matches, with a halftime break in between. The team with the most goals at the end of the match wins.", scoring: "In football, a team scores a goal when the entire ball crosses the goal line between the goalposts and under the crossbar. The team that scores the most goals during the match is declared the winner. If the match ends in a tie (draw), some competitions might have extra time or penalty shootouts to determine the winner. In knockout stages of tournaments, if the score is tied at the end of regular time, extra time is usually played, consisting of two 15-minute halves. If the match remains tied after extra time, a penalty shootout takes place, where each team takes a series of penalty kicks, alternating turns.", moreInfo: [["Fédération Internationale de Football Association (FIFA)", "https://fifa.com"], ["The Soccer Store", "https://www.thesoccerstore.co.uk"], ["The International Football Association Board", "https://www.theifab.com/"]], object: "ball shoes", recommendedEquipment: [["Nike Pitch Training Soccer Ball Metallic Black/Total Orange Size Size Three Ball (Ball)", "https://www.amazon.com/NIKE-Training-Soccer-Metallic-Orange/dp/B01N5ID06L/ref=sr_1_8?ie=UTF8&qid=1542722658&sr=8-8&keywords=soccer+ball+for+beginners"], ["Baden Low Bounce Futsal Practice Ball (Ball)", "https://www.amazon.com/Baden-Bounce-Futsal-Practice-Yellow/dp/B00Q815MT4/ref=sr_1_27_sspa?ie=UTF8&qid=1542722838&sr=8-27-spons&keywords=training+soccer+ball&psc=1"]]),
        "Hockey": CreateSport(sportName: "Hockey", type: "TI", players: "11", general: "Field hockey is a team sport played on a rectangular field, typically grass or artificial turf. Each team consists of 11 players, including one goalkeeper. The primary objective is to score goals by hitting a small, hard ball into the opponent's goal using a curved stick. Players can use any part of their stick except their hands and arms to control and move the ball. The game is played in two halves, usually lasting 35 minutes each at the international level. The team with the most goals at the end of the match is the winner.", scoring: "In field hockey, a goal is scored when the ball completely crosses the goal line between the goalposts and beneath the crossbar. A goal is worth one point. The team that scores the most goals during the match wins. In the case of a tie, some competitions may go into overtime, which consists of two extra halves, each lasting a specified time (e.g., 7.5 minutes). If the match remains tied after overtime, a penalty shootout is often used to determine the winner, where each team takes a series of penalty strokes.", moreInfo: [["Singapore Hockey", "https://www.singaporehockey.org"], ["Fédération Internationale de Hockey", "https://www.fih.hockey"]], object: "ball stick", recommendedEquipment: [["CCM RIBCOR YOUTH STICK - YOUTH (Stick)", "https://www.purehockey.com/product/ccm-ribcor-youth-stick-youth/itm/55708-11/"], ["BAUER X SERIES GRIP COMPOSITE HOCKEY STICK - JUNIOR (Stick)", "https://www.purehockey.com/product/bauer-x-series-grip-composite-hockey-stick-junior/itm/56908-21/"]]),
        "Pickleball": CreateSport(sportName: "Pickleball", type: "NC", players: "1-2", general: "Pickleball is a popular racquet sport played on a small, rectangular court with a net in the middle. It is typically played in either singles (two players) or doubles (four players). The objective is to score points by hitting a perforated plastic ball (similar to a wiffle ball) over the net and into the opponent's court, making it difficult for them to return the ball. Players use solid paddles to hit the ball and the game follows a serve-and-volley format. The serving team initiates the rally, and after the serve, both teams can volley (hit the ball without letting it bounce) until a fault is committed. Pickleball is played to a specific point target, often 11, 15, or 21 points, depending on local rules.", scoring: "In pickleball, points are scored by the serving team. A point is earned when the opposing team commits a fault, which can occur if the ball is hit out of bounds, into the net, or if a player fails to follow specific rules (such as volleying from the non-volley zone or stepping into the kitchen, a marked area near the net). The serving team continues to serve and score points as long as they do not commit a fault. The game is typically played to a set number of points (e.g., 11 or 15) and the team that reaches that point target first while leading by at least two points wins the game. Matches are usually best-of-three games.", moreInfo: [["USA Pickleball", "https://usapickleball.org"], ["Pickleball Central", "pickleballcentral.com"]], object: "ball racket", recommendedEquipment: [["PCKL Launch Series (Paddle)", "https://amzn.to/3Q0a6Sn"], ["HEAD Radical Elite Pickleball Paddle (Paddle)", "https://amzn.to/3CvL3yp"]]),
        "Table Tennis": CreateSport(sportName: "Table Tennis", type: "NC", players: "1-2", general: "Table tennis, also known as ping pong, is a fast-paced indoor sport played on a rectangular table with a net across the middle. It's typically played by two or four players (singles or doubles). The objective is to score points by hitting a lightweight ball over the net and into the opponent's side of the table in a way that makes it challenging for them to return the ball. Players use small paddles to strike the ball back and forth. The game follows a serve-and-rally format, with one player serving to start the point. Players take turns serving, and the rally continues until one side fails to return the ball within the rules.", scoring: "In table tennis, points are scored by the serving player or team. A point is earned when the opponent fails to return the ball according to the rules, such as letting the ball bounce twice on their side of the table, hitting the ball out of bounds, or committing a fault like a service error. The game is typically played to 11 points, but the winner must lead by at least two points. If the score reaches 10-10, the game continues until one player/team leads by two points. Matches are often played as best-of-five or best-of-seven games, depending on the level of play.", moreInfo: [["International Table Tennis Federation", "https://www.ittf.com"], ["All about table tennis", "https://www.allabouttabletennis.com"]], object: "ball racket", recommendedEquipment: [["Stiga 3 Star Pro WRB (Blue Rubber Edition) Table Tennis Racket (Racket)", "https://www.decathlon.sg/p/stiga-3-star-pro-wrb-blue-rubber-edition-table-tennis-racket-stiga-b8ff97dc-e06c-489d-8df3-e21f2d374251.html"], ["Table Tennis Bat Butterfly Timo Boll 1000 (Racket)", "https://www.decathlon.sg/p/table-tennis-bat-butterfly-timo-boll-1000-butterfly-fbb91c68-daa5-4b85-a7de-fd9a7df3e3e8.html"]]),
        "Tennis": CreateSport(sportName: "Tennis", type: "NC", players: "1-2", general: "Tennis is a racquet sport played on a rectangular court with a net in the middle. It can be played as a singles match (one player on each side) or a doubles match (two players on each side). The objective of tennis is to score points by hitting the ball over the net and into the opponent's court in a way that makes it difficult for them to return. Players use racquets to strike the ball back and forth. The game follows a serve-and-rally format, where one player or team serves to start the point, and the rally continues until a point is won or lost. The serving player must serve from behind the baseline into the service box diagonally across the net.", scoring: "Tennis uses a unique scoring system. A player must win four points to win a game. The points are scored as follows: Love (0), 15, 30, 40, and then the player wins the game. However, if both players are tied at 40 (called 'deuce'), they must win two consecutive points to win the game. The player who wins the point immediately following deuce gains what is known as 'advantage.' If they win the next point as well, they win the game. Tennis matches are typically played as the best of three sets (for women) or five sets (for men). To win a set, a player must win at least six games and lead by a margin of two games. If the set score reaches 6-6, a tiebreaker game may be played to determine the winner of the set.", moreInfo: [["International Tennis Federation", "https://www.itftennis.com/en/"], ["United States Tennis Association", "https://www.usta.com/en/home.html"]], object: "ball racket", recommendedEquipment: [["Wilson Pro Staff 97 v14 Tennis Racket (Racket)", "https://www.lazada.sg/products/wilson-pro-staff-97-v14-tennis-racket-with-strings-i2806690823-s19385378375.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253Awilson%252BPro%252BStaff%253Bnid%253A2806690823%253Bsrc%253ALazadaMainSrp%253Brn%253A236693cfb64493126071f5cf5da6fd45%253Bregion%253Asg%253Bsku%253A2806690823_SGAMZ%253Bprice%253A319%253Bclient%253Adesktop%253Bsupplier_id%253A1135398743%253Bpromotion_biz%253A%253Basc_category_id%253A2110%253Bitem_id%253A2806690823%253Bsku_id%253A19385378375%253Bshop_id%253A783278&fastshipping=0&freeshipping=0&fs_ab=2&fuse_fs=&lang=en&location=Singapore&price=319&priceCompare=skuId%3A19385378375%3Bsource%3Alazada-search-voucher%3Bsn%3A236693cfb64493126071f5cf5da6fd45%3BoriginPrice%3A31900%3BdisplayPrice%3A31900%3BsinglePromotionId%3A91471133696163%3BsingleToolCode%3ApromPrice%3BvoucherPricePlugin%3A0%3Btimestamp%3A1694751681029&ratingscore=5.0&request_id=236693cfb64493126071f5cf5da6fd45&review=3&sale=5&search=1&source=search&spm=a2o42.searchlist.list.i40.49a5249dYTaWO2&stock=1"], ["Babolat Boost Rafa (Racket)", "https://www.tennis-warehouse.com/Babolat_Boost_Aero_Rafa/descpageRCBAB-BABOARR.html?from=gshop&gclid=CjwKCAiA6Y2QBhAtEiwAGHybPVHku8Y105lEoXv0xZNMB5MBOtsQwRJSg-zDvMLtHIlTQCp9-sR8MRoC2z0QAvD_BwE"]]),
        "Volleyball": CreateSport(sportName: "Volleyball", type: "NC", players: "6", general: "Volleyball is a team sport played on a rectangular court divided by a net.\n\nEach team consists of six players, and the objective is to score points by sending the ball over the net and into the opponent's court in a way that makes it difficult for them to return the ball. Teams can touch the ball up to three times on their side before sending it back over the net.\n\nThe game begins with a serve from one team, and the rally continues until the ball hits the floor, goes out of bounds, or a team fails to return it properly.\n\nPlayers can't catch, hold, or throw the ball; it must be hit with open-handed strikes, including volleys and spikes.", scoring: "In volleyball, each rally can result in points for either the serving or receiving team.\n\nA point is scored when\n\n1. A team successfully lands the ball in the opponent's court\n\n2. The opponent fails to return it within the allowed three touches.\n\nThe serving team scores a point if they win the rally. If the receiving team wins the rally, they earn the right to serve, but they do not score a point.\n\nThe first team to reach 25 points and have a lead of at least two points wins a set. If the match reaches a deciding set (usually the third set in indoor volleyball), it is played to 15 points.\n\nIn some cases, a set might also be played to a certain score, such as 21, depending on the rules of the tournament or league.", moreInfo: [["Fédération Internationale de Volleyball (FIVB)", "https://www.fivb.org"], ["Real Volleyball", "https://www.realvolleyball.com"], ["The Art of Coaching (Volleyball)", "https://www.theartofcoachingvolleyball.com"]], object: "ball racket", recommendedEquipment: [["Mikasa V330W (Ball)", "https://www.decathlon.sg/p/mikasa-volley-ball-v330w-yellow-mikasa-7f4b8558-07d7-423e-a514-1529c1081c77.html"], ["Molten V5M3500 (Ball)", "https://www.lazada.sg/products/molten-volleyball-molten-v5m3500-size-5-i2005532091-s10897676104.html?spm=a2o42.tm80150924.7348285950.1.119e4516iEGf51.119e4516iEGf51"]]),
    ]
}
