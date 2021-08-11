//
//  ContentView.swift
//  RatingView
//
//  Created by Thongchai Subsaidee on 11/8/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rating: Int?
    
    var body: some View {

        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: ImageRating(index: index))
                    .foregroundColor(.orange)
                    .scaleEffect(1.5)
                    .padding()
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
    
    private func ImageRating(index: Int) -> String {
        return index <= rating ?? 0 ? "star.fill" : "star"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
