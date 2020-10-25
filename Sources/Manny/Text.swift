import Foundation



public class Text: Node {
  public let text: String
  
  
  public init(raw: String) {
    text = raw
    super.init(children: [])
  }
  
  
  convenience public init(_ text: String) {
    #warning("Escape the text here...")
    let escapedText = text
    self.init(raw: escapedText)
  }
  
  
  override public func render() -> String {
    return text
  }
}
