//
//  AnnouncementsView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 13.08.2023.
//

import SwiftUI

struct AnnouncementsView: View {
    
    @Binding var announcements: [Announcement]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(announcements) { announcement in
                    ZStack(alignment: .topLeading) {
                        Image(announcement.image)
                            .resizable()
                            .frame(width: 125, height: 150)
                            .aspectRatio(contentMode: .fit)
                        Text(announcement.name)
                            .font(.system(size: 10, weight: .bold))
                            .padding(10)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .padding(.leading)
        }
    }
}
