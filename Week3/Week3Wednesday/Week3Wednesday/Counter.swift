//
//  Counter.swift
//  Week3Wednesday
//
//  Created by Bennett Lee on 9/6/23.
//

import SwiftUI

struct Counter: View {

    @Binding var count: Int
    @State var stepperCount = 0
    @State var name = ""
    @State var isOn = false
    @State var favoriteColorSelection = 0
    @State var sliderValue = 0.0

    var body: some View {
        VStack {
            Button("Increment") {
                count += 1
            }

            Text("the current **count** \(count)")


            Image(systemName: "photo.on.rectangle.angled")
                .font(.largeTitle)
                .foregroundColor(.green)


            Slider(value: $sliderValue, in: 10.0...20.0)
                .tint(.green)

            Picker("Favorite color", selection: $favoriteColorSelection) {
                Text("Red").tag(0)
                Text("Blue").tag(1)
            }
            .pickerStyle(.menu)

            Toggle("Toggle label", isOn: $isOn)
                .tint(.cyan)

            TextField("Zip Code", text: $name)
                .keyboardType(.numberPad)

            Image("bestPicture")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 260)
                .clipShape(RoundedRectangle(cornerRadius: 50.0))


            Stepper("Brightness \(stepperCount)", value: $stepperCount, in: 0...100)
        }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter(count: .constant(10))
    }
}
