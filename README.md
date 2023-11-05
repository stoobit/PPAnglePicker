# PPAnglePicker
With the PPAnglePicker you can enable your users to select angles (in degrees) quickly and easily.\
**Available for iOS 17+ & macOS 14+.**

---
### Implementation 
```swift
import SwiftUI
import PPAnglePicker

struct ContentView: View {
    @State var degrees: Double = 0.0

    var body: some View {
        PPAnglePickerView(degrees: $degrees)
    }
}
```
---

![image](https://github.com/stoobit/PPAnglePicker/blob/main/img1.png?raw=true)
![image](https://github.com/stoobit/PPAnglePicker/blob/main/img2.png?raw=true)
