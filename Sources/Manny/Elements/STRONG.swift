import Foundation



public class STRONG: Element {
  public init(_ attributes: Attribute ..., @HTMLBuilder buildChildren: ()->[Node]) {
    super.init(name: "strong", attributes: attributes, children: buildChildren())
  }
}
