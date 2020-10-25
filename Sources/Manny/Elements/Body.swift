import Foundation



public class Body: Element {
  public init(attributes: [Attribute], children: [Node]) {
    super.init(name: "body", attributes: attributes, children: children)
  }
  
  
  convenience public init(_ attributes: Attribute..., @HTMLBuilder buildChildren: ()->[Node]) {
    self.init(attributes: attributes, children: buildChildren())
  }
}
