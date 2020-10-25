import XCTest
import Manny



class InitialTests: XCTestCase {
  func testThing() {
    let subject = HTML {
      Element("body") {
        P(.class("red"), .id("specificThing")) {
          let ital = false
          "This was "
          if ital {
            EMPH{ "really" }
          } else {
            STRONG{ "really" }
          }
          " confusing."
        }
        BR(.class("break"))
        P {
          "Goodbye World"
        }
      }
    }
    print(subject.render())
  }
  
  
}
