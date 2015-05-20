//
//  ChessElements.swift
//  Chess
//
//  Created by Kevin Zeng on 5/19/15.
//  Copyright (c) 2015 Kevin Zeng. All rights reserved.
//

import Foundation
import UIKit

class Player{
    var name: String
    var pieces: [BoardPiece]
    /*
    Board pieces are defined as follows:
    0-7: pawns
    8 and 15: rooks
    9 and 14: knights
    10 and 13: bishops
    11:queen
    12:king
    Basically imagine the initial state and go left to right
    */
    init() {
        self.name = ""
        self.pieces = [BoardPiece]()
    }
    
    init(name:String, pieces:[BoardPiece]) {
        self.name = name
        self.pieces = pieces
    }
    
}

class BoardPiece {
    var isWhite:Bool
    var onBoard:Bool
    var position = [0,0]    //corresponds to boardView
    var imgview: UIImageView
    func take(piece: BoardPiece, taker: Player, loser: Player) {
        self.position = piece.position
        piece.onBoard = false
        //ownership..
    }
    init() {
        self.isWhite = false //black or white?
        self.onBoard = false //taken?
        self.position = [0,0]
        self.imgview = UIImageView()
    }
    init(imgview: UIImageView, a:Int, b:Int) {
        self.isWhite = false //black or white?
        self.onBoard = false //taken?
        self.imgview = imgview
        position = [a,b]
    }
    
}

class BlackPawn: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = false
        self.imgview.image = UIImage(named: "Chess_pdt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class WhitePawn: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = true
        self.imgview.image = UIImage(named: "Chess_plt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class BlackKnight: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = false
        self.imgview.image = UIImage(named: "Chess_kdt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class WhiteKnight: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = true
        self.imgview.image = UIImage(named: "Chess_klt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class BlackRook: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = false
        self.imgview.image = UIImage(named: "Chess_rdt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class WhiteRook: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = true
        self.imgview.image = UIImage(named: "Chess_rlt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class BlackBishop: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = false
        self.imgview.image = UIImage(named: "Chess_bdt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class WhiteBishop: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = true
        self.imgview.image = UIImage(named: "Chess_blt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class BlackQueen: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = false
        self.imgview.image = UIImage(named: "Chess_qdt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class WhiteQueen: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = true
        self.imgview.image = UIImage(named: "Chess_qlt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class BlackKing: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = false
        self.imgview.image = UIImage(named: "Chess_kdt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}

class WhiteKing: BoardPiece {
    override init(imgview: UIImageView, a: Int, b: Int) {
        super.init(imgview: imgview, a: a, b: b)
        self.isWhite = true
        self.imgview.image = UIImage(named: "Chess_klt45.svg.png")
    }
    
    override init() {
        super.init()
    }
}
