//
//  ItemModel.swift
//  BuyGame
//
//  Created by Putut Yusri Bahtiar on 18/12/22.
//
import SwiftUI

struct ItemModel: Identifiable {
    
    
    let id: Int
    let namaProduk: String
    let fotoProduk: String
    let hargaProduk: Int
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(idnumber: Int, namaproduk: String, fotoproduk: String, hargaproduk: Int, lokasi: String, ratingcount: Int, jumlahrating: Int) {
        
        self.id = idnumber
        self.namaProduk = namaproduk
        self.fotoProduk = fotoproduk
        self.hargaProduk = hargaproduk
        self.lokasi = lokasi
        self.ratingCount = ratingcount
        self.jumlahRating = jumlahrating
        
    }
}
