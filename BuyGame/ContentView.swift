//
//  ContentView.swift
//  BuyGame
//
//  Created by Putut Yusri Bahtiar on 18/12/22.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                LoopingItem()
                    .tabItem {
                        Image(systemName: "hand.thumbsup.fill")
                        Text("Rekomendasi")
                    }
                HomeView()
                    .tabItem {
                        Image(systemName: "doc.plaintext.fill")
                        Text("Transaksi")
                    }
                LoopingItem()
                    .tabItem {
                        Image(systemName: "bell.badge")
                        Text("Notification")
                    }
                LoopingItem()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profil")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Item: View {
    
    let data: ItemModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ZStack(alignment: .topTrailing) {
                Image(self.data.fotoProduk)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                
                Button {
                    print(self.data.namaProduk)
                } label: {
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(Color.red)
                }
            }
            
            Text(self.data.namaProduk)
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp.\(self.data.hargaProduk)")
                .font(.subheadline)
                .padding(.leading)
                .padding(.trailing)
                .foregroundColor(Color.red)
            
            HStack {
                Image(systemName: "location.circle")
                Text(self.data.lokasi)
            }
            .font(.caption)
            .padding(.leading)
            .padding(.trailing)
            
            HStack {
                HStack {
                    
                    ForEach(0..<self.data.ratingCount) {_ in
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
            }
            .font(.caption)
            .padding(.leading)
            .padding(.trailing)
            
            Button {
                print("Add to Cart")
            } label: {
                HStack {
                    Spacer()
                    HStack {
                        Image(systemName: "cart")
                        Text("Add to cart")
                            .font(.callout)
                            .padding(.all)
                    }
                    Spacer()
                }
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding(.all)
        }
        .background(Color("warna"))
        .cornerRadius(15)
    }
}


struct LoopingItem: View {
    let data: [ItemModel] = [
        ItemModel(idnumber: 1, namaproduk: "Arcana CM", fotoproduk: "arcana-cm", hargaproduk: 309000, lokasi: "DKI Jakarta", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 2, namaproduk: "Arcana Drow", fotoproduk: "arcana-drow", hargaproduk: 490000, lokasi: "Bekasi", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 3, namaproduk: "Arcana ES", fotoproduk: "arcana-es", hargaproduk: 400000, lokasi: "Depok", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 4, namaproduk: "Arcana FV", fotoproduk: "arcana-facelessvoid", hargaproduk: 590000, lokasi: "Bogor", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 5, namaproduk: "Arcana IO", fotoproduk: "arcana-io", hargaproduk: 295000, lokasi: "Medan", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 6, namaproduk: "Arcana Jugger", fotoproduk: "arcana-jugger", hargaproduk: 350000, lokasi: "Bandung", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 7, namaproduk: "Arcana LC", fotoproduk: "arcana-lc", hargaproduk: 310000, lokasi: "Surabaya", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 8, namaproduk: "Arcana Lina", fotoproduk: "arcana-lina", hargaproduk: 300000, lokasi: "Cikarang", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 9, namaproduk: "Arcana Monkey King", fotoproduk: "arcana-monkeyking", hargaproduk: 350000, lokasi: "Karawang", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 10, namaproduk: "Arcana Ogre", fotoproduk: "arcana-ogre", hargaproduk: 360000, lokasi: "DKI Jakarta", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 11, namaproduk: "Arcana PA", fotoproduk: "arcana-pa", hargaproduk: 297000, lokasi: "Bekasi", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 12, namaproduk: "Arcana Pudge", fotoproduk: "arcana-pudge", hargaproduk: 330000, lokasi: "Magelang", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 13, namaproduk: "Arcana QOP", fotoproduk: "arcana-qop", hargaproduk: 500000, lokasi: "Bandung", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 14, namaproduk: "Arcana Razor", fotoproduk: "arcana-razor", hargaproduk: 520000, lokasi: "Bandung", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 15, namaproduk: "Arcana Rubick", fotoproduk: "arcana-rubick", hargaproduk: 260000, lokasi: "Bekasi", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 16, namaproduk: "Arcana SF", fotoproduk: "arcana-sf", hargaproduk: 250000, lokasi: "Bekasi", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 17, namaproduk: "Arcana Spectre", fotoproduk: "arcana-spectre", hargaproduk: 540000, lokasi: "Depok", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 18, namaproduk: "Arcana Techies", fotoproduk: "arcana-techies", hargaproduk: 200000, lokasi: "Tangerang", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 19, namaproduk: "Arcana TB", fotoproduk: "arcana-terrorblade", hargaproduk: 390000, lokasi: "Malang", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 20, namaproduk: "Arcana WR", fotoproduk: "arcana-wr", hargaproduk: 450000, lokasi: "Sukabumi", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 21, namaproduk: "Arcana WK", fotoproduk: "arcana-wraithking", hargaproduk: 500000, lokasi: "Cirebon", ratingcount: 4, jumlahrating: 18),
        ItemModel(idnumber: 22, namaproduk: "Arcana Zeus", fotoproduk: "arcana-zeus", hargaproduk: 310000, lokasi: "Bogor", ratingcount: 4, jumlahrating: 18)
    ]
    var body: some View {
        VStack {
            NavigationView {
                ScrollView {
                    ForEach(data) {
                        row in
                        VStack(spacing:10) {
                            Item(data: row)
                        }
                        .padding()
                    }
                }
                
                .navigationTitle("Arcana")
                .navigationViewStyle(StackNavigationViewStyle())
                
            }
        }
    }
}
