//
//  StroriesView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 10.08.2023.
//

import SwiftUI

struct StroriesView: View {
    
    @Binding var stories: [Story]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0..<stories.count) { index in
                    VStack {
                        Image(stories[index].image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .background {
                                Circle()
                                    .stroke(lineWidth: 3)
                                    .foregroundColor(stories[index].isViewed ? .gray : .green)
                            }
                            .onTapGesture {
                                withAnimation {
                                    stories[index].isViewed = true
                                }
                            }
                        Text(stories[index].name)
                            .font(.system(size: 8))
                            .multilineTextAlignment(.center)
                    }
                    .padding(.vertical, 5)
                    .frame(width: 60)
                }
            }
            .padding(.leading)
        }
    }
}

struct StroriesView_Previews: PreviewProvider {
    @State static var stories = [Story(name: "qwe", image: "logo", isViewed: false)]
    static var previews: some View {
        StroriesView(stories: $stories)
    }
}
