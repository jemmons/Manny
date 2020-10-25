import Foundation



public class Node {
  public var children: [Node]
  public func render() -> String {
    preconditionFailure("Abstract method.")
  }
  
  
  public init(children: [Node]) {
    self.children = children
  }
}
