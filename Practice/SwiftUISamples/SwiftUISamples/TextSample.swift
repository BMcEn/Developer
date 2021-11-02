//
//  Text.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/2/21.
//

import SwiftUI

struct TextSample: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Practice")
                //Adjust font size/thickness
                .font(.largeTitle)
                .fontWeight(.medium)
                //Font color, different for light/dark modes
                .foregroundColor(Color("AccentColor"))
                .underline(true, color: Color.mint)
                .italic()
                //Single line alignment change
                .frame(width: 200, alignment: .leading)
                .background(Color.gray)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a nulla odio. Phasellus viverra quam ac lacus blandit hendrerit. Quisque ultricies turpis eu convallis molestie. Fusce rutrum ex id iaculis mattis. Nam imperdiet faucibus nunc, et sodales urna. Donec sed enim at justo blandit fermentum. Maecenas viverra nisl leo, nec placerat ante lobortis interdum.")
                .multilineTextAlignment(.trailing)
                //More font customization
                .font(.system(size: 24, weight: .thin, design: .rounded))
        }
        
    }
}

struct TextSample_Previews: PreviewProvider {
    static var previews: some View {
        TextSample()
    }
}
