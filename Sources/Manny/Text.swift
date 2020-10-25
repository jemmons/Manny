import Foundation



public class Text: Node {
  public let text: String
  
  
  public init(_ text: String) {
    self.text = text
    super.init(children: [])
  }
  
  
  override public func render() -> String {
    return text
  }
}
