//
//  ContentView.swift
//  MadlibsDemo
//
//  Created by Bennett Lee on 9/11/23.
//

import SwiftUI


enum Animal : String {
    case dog, giraffe, tortoise, cat
}


// 0-255 is normalized into  0-1
// 157, 191, 61
let backgroundColor = Color(
    red: 157.0 / 255.0,
    green: 191.0 / 255.0,
    blue: 61.0 / 255.0
)

struct ContentView: View {
    @State var name = "Bob"
    @State var city = "Las Vegas"
    @State var verb = "Gamble"
    @State var age = "20"

    @State var lessOrMoreSelection = 0
    @State var selectedAnimal = Animal.dog
    @State var favoriteNumber = 42.0
    @State var numberOfPets = 10
    @State var happyEnding = false

    @State var showAlert = false

    var story : String {
        var data = "At the age of \(age), \(name) took a trip to \(city) with \(numberOfPets) pets in order to \(verb) with a \(selectedAnimal.rawValue.lowercased()). \(name) decided to buy \(Int(favoriteNumber))."

        if happyEnding {
            data += " And they lived happliy ever after."
        } else {
            data += " Things did not go too well."
        }

        return data
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 24.0) {
            Text("Start here! 😎")
                .font(.title)

            // Name, city, verb, age
            VStack(spacing: 12.0) {
                TextField("Name", text: $name)
                    .padding(12.0)
                    .background(Color.white)

                TextField("City", text: $city)
                    .padding(12.0)
                    .background(Color.white)

                TextField("Verb", text: $verb)
                    .padding(12.0)
                    .background(Color.white)

                TextField("Age", text: $age)
                    .padding(12.0)
                    .background(Color.white)
            }

            Picker("LessOrMore", selection: $lessOrMoreSelection) {
                Text("Less").tag(0)
                Text("More").tag(1)
            }
            .pickerStyle(.segmented)

            VStack{
                Picker("Animals", selection: $selectedAnimal) {
                    Text("Dog").tag(Animal.dog)
                    Text("Giraffe").tag(Animal.giraffe)
                    Text("Tortoise").tag(Animal.tortoise)
                    Text("Cat").tag(Animal.cat)
                }
                .pickerStyle(.segmented)

                HStack {
                    Text("\(Int(favoriteNumber))")
                    Slider(value: $favoriteNumber, in: 0...100)
                }

                Stepper("Pets \(numberOfPets)", value: $numberOfPets, in: 0...100)

                Toggle("Happy Ending?", isOn: $happyEnding)
            }
            .padding()
            .background(Color.white)
            .opacity(Double(lessOrMoreSelection))

            Button {
                print(story)
                showAlert = true
            } label: {
                Text("Create Story")
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .background(Color.white)

            Spacer()
        }
        .padding(24)
        .background(backgroundColor)
        .alert("Story", isPresented: $showAlert) {
        } message: {
            Text(story)
        }



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
