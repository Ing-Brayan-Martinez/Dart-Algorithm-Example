import 'package:dart_algorithm_example/graph/dijkstra.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('dijkstra()', () {

    // Creamos un grafo
    final grafo = Grafo([
      Nodo(0),
      Nodo(1),
      Nodo(2),
      Nodo(3),
    ], [
      Arista(0, 1, 4),
      Arista(0, 2, 3),
      Arista(1, 2, 1),
      Arista(1, 3, 5),
      Arista(2, 3, 2),
    ]);

    // Calculamos las distancias y padres desde el nodo 0
    final distanciasPadres = dijkstra(grafo, 0);

    // Imprimimos las distancias de cada nodo
    for (final nodo in grafo.nodos) {
      final distancia = distanciasPadres[nodo.id]!.distancia;
      print("Distancia del nodo ${nodo.id}: $distancia");
    }

    print('Test Passed!');
  });
}