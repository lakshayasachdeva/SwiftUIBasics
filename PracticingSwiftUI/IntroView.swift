//
//  IntroView.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct IntroViewDemo: View {
    // it checks if there is value then keep it otherwise set this default value which is false..
    @AppStorage("isLoggedIn") var isLoggedIn:Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.red, .blue]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea(.all)
            
            // if user is signed then user profile view
            // else show onboarding view
            
            if isLoggedIn {
                ProfileViewApp()
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: .move(edge: .top)
                        )
                    )
            } else {
                Onboarding()
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .top),
                            removal: .move(edge: .bottom)
                        )
                    )
            }
        }
    }
}

struct Profile:View {
    var body: some View {
        Text("Profile View")
    }
}

struct Onboarding:View {
    
    
    /*
     0 - onboarding
     1 - add name
     2 - add age
     3 - add gender
     */
    @State var onboardingState: Int = 0
    @State var nameTextFieldText: String = ""
    @State var age: Double = 25
    @State var gender: String = "Male"
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""

    @AppStorage("name") var currUsername: String?
    @AppStorage("age") var currUserage: Int?
    @AppStorage("gender") var currUsergender: String?
    @AppStorage("isLoggedIn") var currUserSignedIn: Bool?


    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    
    var body: some View {
        ZStack {
            // content layer
            // going to be based on state
            
            ZStack {
                
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                    
                case 1:
                    addNameSection
                        .transition(transition)
                    
                case 2:
                    addAgeSection
                        .transition(transition)
                    
                case 3:
                    addGenderSection
                        .transition(transition)
                
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
                
            
            }
            
            // buttons layer
            bottomBtn
        }
        .alert(alertTitle, isPresented: $showAlert) {
            
        }
    }
    

}

#Preview {
    IntroViewDemo()
}


// MARK: Components
extension Onboarding {
    private var bottomBtn: some View {
        VStack {
            Spacer()
            Text(onboardingState == 0 ? "Sign Up" : onboardingState == 3 ? "Finish" : "Next")
                .font(.headline)
                .foregroundStyle(.purple)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    Color.white
                        .cornerRadius(5)
                )
                .padding()
                .onTapGesture {
                    handleNextBtnPressed()
                }
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                        
                    
                )
                
            
            Text("This is the number-1 app for finding your match online. In this tutorial we're practising using AppStorage and other swift ui techniques.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            
            Spacer()
            Spacer()      // to make it top 1/3 of the screen.... by adding 2 spacers at the bottom...
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        
        VStack(spacing: 40) {
            Spacer()
           
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                )
            
            TextField("Your name here....", text: $nameTextFieldText)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            
            Spacer()
            Spacer()      // to make it top 1/3 of the screen.... by adding 2 spacers at the bottom...
        }
        .padding(30)
    }
    
    
    private var addAgeSection: some View {
        
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                )
            
            Text(String(format: "%.f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Slider(value: $age, in: 18...100, step: 1) {
                
            }
            .tint(.white)
            
            Spacer()
            Spacer()      // to make it top 1/3 of the screen.... by adding 2 spacers at the bottom...
        }
        .padding(30)
    }
    
    
    private var addGenderSection: some View {
        
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                )
            
            Picker(selection: $gender, content: {
                Text("Male").tag("1")
                Text("Female").tag("2")
                Text("Non-binary").tag("2")

            }, label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.white
                            .cornerRadius(10)
                    )
                    
            })
            .tint(.white)
            .pickerStyle(.menu)
            
            Spacer()
            Spacer()      // to make it top 1/3 of the screen.... by adding 2 spacers at the bottom...
        }
        .padding(30)
    }
}


// MARK: Functions
extension Onboarding {
    
    func handleNextBtnPressed() {
        
        // check inputs..
        
        switch onboardingState {
        case 1:
            guard nameTextFieldText.count > 3 else {
                showAlertFn(title: "Your name must be atleast 3 characters long..")
                return
            }
            
        case 3:
            guard gender.count > 0 else {
                showAlertFn(title: "Please select gender")
                return
            }
        
        default:
            break
            
        }
        
        if onboardingState == 3 {
            signin()
        } else {
            withAnimation(.spring) {
                onboardingState += 1
            }
        }
        
        func showAlertFn(title:String) {
            alertTitle = title
            showAlert.toggle()
        }
        
        func signin() {
            currUsername = nameTextFieldText
            currUserage = Int(age)
            currUsergender = gender
            withAnimation(.spring) {
                currUserSignedIn = true
            }
        }
    }
    
}




struct ProfileViewApp:View {
    @AppStorage("name") var currUsername: String?
    @AppStorage("age") var currUserage: Int?
    @AppStorage("gender") var currUsergender: String?
    @AppStorage("isLoggedIn") var currUserSignedIn: Bool?
    
    var body: some View {
        
        VStack(spacing: 10) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(currUsername ?? "Your name here..")
            Text("This user is \(currUserage ?? 0) years old")
            Text("Their gender is \(currUsergender ?? "unknown")")
            
            Text("Signout")
                .padding()
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signout()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(
            .white
        )
        .cornerRadius(10)
        .shadow(radius: 10)
        
        
        
    }
    
    func signout() {
        currUsername = nil
        currUserage = nil
        currUsergender = nil
        withAnimation(.spring) {
            currUserSignedIn = false
        }
    }
}
