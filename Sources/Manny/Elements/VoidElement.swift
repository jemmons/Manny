import Foundation



public class VoidElement: Element {
  public init(_ name: String, attributes: [Attribute] = []) {
    super.init(name: name, attributes: attributes, children: [])
  }
  
  
  override public func render() -> String {
    return TagHelper.makeTag(name: name, attributes: attributes)
  }
}
