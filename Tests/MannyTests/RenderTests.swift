import XCTest
import Manny



class InitialTests: XCTestCase {
  func testMars() {
    let mars = """
    <html><body class="zavala"><blockquote><p>Whether we wanted it or not, we’ve stepped into a war with the Cabal on Mars. So let’s get to taking out their command, one by one.</p><h1>Valus Ta’aurc</h1><p>From what I can gather he commands the <emph>Siege Dancers</emph> from an imperial land tank outside of Rubicon. He’s well protected, but with the right team, we can punch through those defenses, take this beast out, and break their grip on Freehold.</p></blockquote><hr><div><img alt="A pair of Cabal in bright yellow and blue armor." src="/img/siege_dancers.jpg"></div></body></html>
    """
    let subject = HTML {
      Body(.class("zavala")) {
        Blockquote {
          P {
            "Whether we wanted it or not, we’ve stepped into a war with the Cabal on Mars. So let’s get to taking out their command, one by one."
          }
          H1 {
            "Valus Ta’aurc"
          }
          P {
            "From what I can gather he commands the "
            Emph { "Siege Dancers" }
            " from an imperial land tank outside of Rubicon. He’s well protected, but with the right team, we can punch through those defenses, take this beast out, and break their grip on Freehold."
          }
        }
        HR()
        Div {
          Img(.alt("A pair of Cabal in bright yellow and blue armor."), .src("/img/siege_dancers.jpg"))
        }
      }
    }
    XCTAssertEqual(subject.render(), mars)
  }
  
  
}
