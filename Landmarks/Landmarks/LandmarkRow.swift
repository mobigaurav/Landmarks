//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Gaurav Kumar on 11/15/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            VStack(alignment: .leading) {
                            Text(landmark.name)
                                .bold()
#if !os(watchOS)
                            Text(landmark.park)
                                .font(.caption)
                                .foregroundColor(.secondary)
#endif
                        }
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        .padding(.vertical, 4)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        LandmarkRow(landmark: ModelData().landmarks[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
