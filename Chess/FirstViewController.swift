//
//  FirstViewController.swift
//  Chess
//
//  Created by Kevin Zeng on 5/19/15.
//  Copyright (c) 2015 Kevin Zeng. All rights reserved.
//

//main chess board, this is where everything goes down
import UIKit
var boardView = [[UIImageView]]()
var Player1 = Player()
var Player2 = Player()

class FirstViewController: UIViewController {
    
    @IBOutlet weak var player2label: UILabel!
    
    @IBOutlet weak var a8: UIImageView!
    @IBOutlet weak var b8: UIImageView!
    @IBOutlet weak var c8: UIImageView!
    @IBOutlet weak var d8: UIImageView!
    @IBOutlet weak var e8: UIImageView!
    @IBOutlet weak var f8: UIImageView!
    @IBOutlet weak var g8: UIImageView!
    @IBOutlet weak var h8: UIImageView!
    
    @IBOutlet weak var a7: UIImageView!
    @IBOutlet weak var b7: UIImageView!
    @IBOutlet weak var c7: UIImageView!
    @IBOutlet weak var d7: UIImageView!
    @IBOutlet weak var e7: UIImageView!
    @IBOutlet weak var f7: UIImageView!
    @IBOutlet weak var g7: UIImageView!
    @IBOutlet weak var h7: UIImageView!
    
    @IBOutlet weak var a6: UIImageView!
    @IBOutlet weak var b6: UIImageView!
    @IBOutlet weak var c6: UIImageView!
    @IBOutlet weak var d6: UIImageView!
    @IBOutlet weak var e6: UIImageView!
    @IBOutlet weak var f6: UIImageView!
    @IBOutlet weak var g6: UIImageView!
    @IBOutlet weak var h6: UIImageView!
    
    @IBOutlet weak var a5: UIImageView!
    @IBOutlet weak var b5: UIImageView!
    @IBOutlet weak var c5: UIImageView!
    @IBOutlet weak var d5: UIImageView!
    @IBOutlet weak var e5: UIImageView!
    @IBOutlet weak var f5: UIImageView!
    @IBOutlet weak var g5: UIImageView!
    @IBOutlet weak var h5: UIImageView!
    
    @IBOutlet weak var a4: UIImageView!
    @IBOutlet weak var b4: UIImageView!
    @IBOutlet weak var c4: UIImageView!
    @IBOutlet weak var d4: UIImageView!
    @IBOutlet weak var e4: UIImageView!
    @IBOutlet weak var f4: UIImageView!
    @IBOutlet weak var g4: UIImageView!
    @IBOutlet weak var h4: UIImageView!
    
    @IBOutlet weak var a3: UIImageView!
    @IBOutlet weak var b3: UIImageView!
    @IBOutlet weak var c3: UIImageView!
    @IBOutlet weak var d3: UIImageView!
    @IBOutlet weak var e3: UIImageView!
    @IBOutlet weak var f3: UIImageView!
    @IBOutlet weak var g3: UIImageView!
    @IBOutlet weak var h3: UIImageView!
    
    @IBOutlet weak var a2: UIImageView!
    @IBOutlet weak var b2: UIImageView!
    @IBOutlet weak var c2: UIImageView!
    @IBOutlet weak var d2: UIImageView!
    @IBOutlet weak var e2: UIImageView!
    @IBOutlet weak var f2: UIImageView!
    @IBOutlet weak var g2: UIImageView!
    @IBOutlet weak var h2: UIImageView!
    
    @IBOutlet weak var a1: UIImageView!
    @IBOutlet weak var b1: UIImageView!
    @IBOutlet weak var c1: UIImageView!
    @IBOutlet weak var d1: UIImageView!
    @IBOutlet weak var e1: UIImageView!
    @IBOutlet weak var f1: UIImageView!
    @IBOutlet weak var g1: UIImageView!
    @IBOutlet weak var h1: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player2label.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0) //upside down
        
        //define boardView
        boardView =     [[a1,b1,c1,d1,e1,f1,g1,h1],
                        [a2,b2,c2,d2,e2,f2,g2,h2],
                        [a3,b3,c3,d3,e3,f3,g3,h3],
                        [a4,b4,c4,d4,e4,f4,g4,h4],
                        [a5,b5,c5,d5,e5,f5,g5,h5],
                        [a6,b6,c6,d6,e6,f6,g6,h6],
                        [a7,b7,c7,d7,e7,f7,g7,h7],
                        [a8,b8,c8,d8,e8,f8,g8,h8]]
        
        //define players 1 and 2
        //pieces
        Player1.pieces = [BoardPiece](count: 16, repeatedValue: BoardPiece())
        Player2.pieces = [BoardPiece](count: 16, repeatedValue: BoardPiece())
        
        //initialize chess board
        reset()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reset() {
        //go through all pieces in both players and set their positions to initial state
        
        //pawns
        for a in 0...7{
            Player1.pieces[a] = WhitePawn(imgview: boardView[1][a], a: 1, b: a)
            Player2.pieces[a] = BlackPawn(imgview: boardView[6][a], a: 6, b: a)
        }
        //rooks
        Player1.pieces[8] = WhiteRook(imgview: boardView[0][0], a: 0, b: 0)
        Player1.pieces[15] = WhiteRook(imgview: boardView[0][7], a: 0, b: 7)
        Player2.pieces[8] = BlackRook(imgview: boardView[7][0], a: 7, b: 0)
        Player2.pieces[15] = BlackRook(imgview: boardView[7][7], a: 7, b: 7)
        //knights
        Player1.pieces[9] = WhiteKnight(imgview: boardView[0][1], a: 0, b: 1)
        Player1.pieces[14] = WhiteKnight(imgview: boardView[0][6], a: 0, b: 6)
        Player2.pieces[9] = BlackKnight(imgview: boardView[7][1], a: 7, b: 1)
        Player2.pieces[14] = BlackKnight(imgview: boardView[7][6], a: 7, b: 6)
        //bishops
        Player1.pieces[10] = WhiteBishop(imgview: boardView[0][2], a: 0, b: 2)
        Player1.pieces[13] = WhiteBishop(imgview: boardView[0][5], a: 0, b: 5)
        Player2.pieces[10] = BlackBishop(imgview: boardView[7][2], a: 7, b: 2)
        Player2.pieces[13] = BlackBishop(imgview: boardView[7][5], a: 7, b: 5)
        //royalty
        Player1.pieces[11] = WhiteQueen(imgview: boardView[0][3], a: 0, b: 3)
        Player1.pieces[12] = WhiteKing(imgview: boardView[0][4], a: 0, b: 4)
        Player2.pieces[11] = BlackQueen(imgview: boardView[7][3], a: 7, b: 3)
        Player2.pieces[12] = BlackKing(imgview: boardView[7][4], a: 7, b: 4)

    }
}


