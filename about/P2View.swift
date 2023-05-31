import SwiftUI
import AVFoundation

struct P2View: View {
    @State private var index = 0
    @State private var player: AVAudioPlayer?
    @State private var makespring = true
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Click for special effect ->")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .bold()
                        .font(.title2)
                        .cornerRadius(10)
                    Button(action: {
                        if let url = URL(string: "https://tk.sg/ImportantLink") {
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                            withAnimation {
                                index += 100
                                playSoundtrack()
                            }
                        }
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Circle())
                    })
                }
                .padding(.top, 20)
                if makespring {
                    Image("lmao")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .scaleEffect(CGFloat(index) / 100.0 + 1.0)
                        .animation(.spring())
                }
                Text("Ethan")
                    .padding()
                    .frame(maxWidth: 150)
                    .foregroundColor(.white)
                    .bold()
                    .underline()
                    .font(.largeTitle)
                    .cornerRadius(10)
                
                Text("About:\n- Studies at SJI\n- Enjoys Coding and Gaming")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)
                    .cornerRadius(10)
            }
        }
        .onAppear {
            prepareSoundtrack()
        }
    }
    
    func prepareSoundtrack() {
        guard let url = Bundle.main.url(forResource: "hehe", withExtension: "mp3") else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
        } catch {
            print("Failed to load soundtrack.")
        }
    }
    
    func playSoundtrack() {
        player?.currentTime = 0
        player?.play()
    }
}

struct P2View_Previews: PreviewProvider {
    static var previews: some View {
        P2View()
    }
}
