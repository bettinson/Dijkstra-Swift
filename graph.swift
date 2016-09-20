import Cocoa

class Node {
    var name: String
    var paths: [Edge] = []

    init(name: String) {
        self.name = name
    }

    func addEdge(edge: Edge) {
        if edge.orgin.name == self.name {
            paths.append(edge)
        } else {
            print("Edge is not attached to node")
        }
    }
}

class Edge {
    let orgin: Node
    let destination: Node
    let weight: Int

    init(origin: Node, destination: Node, weight: Int) {
        self.orgin = origin
        self.destination = destination
        self.weight = weight
    }
}

class Graph {
    var nodes: [Node] = []

    func addNode(node: Node) {
        nodes.append(node)
    }

    func listNodes() {
        for node in nodes {
            for edge in node.paths {
                print ("\(node.name) is going to \(edge.destination.name) with a weight of \(edge.weight)")
            }
        }
    }
}

let node1 = Node(name: "Matt")
let node2 = Node(name: "Jake")
let node3 = Node(name: "Erik")

let edge1 = Edge(origin: node1, destination: node3, weight: 10)
let edge2 = Edge(origin: node2, destination: node1, weight: 20)
let edge3 = Edge(origin: node3, destination: node2, weight: 30)
let edge4 = Edge(origin: node3, destination: node1, weight: 15)




node1.addEdge(edge: edge1)

node2.addEdge(edge: edge2)

node3.addEdge(edge: edge3)
node3.addEdge(edge: edge4)

let graph = Graph()

graph.addNode(node: node1)
graph.addNode(node: node2)
graph.addNode(node: node3)

graph.listNodes()
