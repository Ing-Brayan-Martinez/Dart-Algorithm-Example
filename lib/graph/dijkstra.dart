

class Nodo {
  final int id;
  final int distancia;
  final Nodo? padre;

  Nodo(this.id, this.distancia, this.padre);
}

class Arista {
  final int nodoInicio;
  final int nodoFin;
  final int peso;

  Arista(this.nodoInicio, this.nodoFin, this.peso);
}

// Clases para representar el grafo
class Grafo {
  final List<Nodo> nodos;
  final List<Arista> aristas;

  Grafo(this.nodos, this.aristas);
}

Map<int, Nodo> dijkstra(Grafo grafo, int nodoInicio) {
  // Creamos un conjunto de nodos sin visitar
  final sinVisitar = <Nodo>{};

  // Inicializamos las distancias de cada nodo
  for (final nodo in grafo.nodos) {
    sinVisitar.add(Nodo(nodo.id, int.MAX_VALUE, null));
  }

  // Marcamos el nodo inicial como visitado y con distancia 0
  sinVisitar.lookup(nodoInicio)?.distancia = 0;

  // Bucle principal del algoritmo
  while (sinVisitar.isNotEmpty) {
    // Encontramos el nodo con la menor distancia sin visitar
    final nodoActual = sinVisitar.reduce((nodoMinimo, nodoActual) =>
    nodoMinimo.distancia < nodoActual.distancia ? nodoMinimo : nodoActual);

    // Lo marcamos como visitado
    sinVisitar.remove(nodoActual);

    // Para cada vecino del nodo actual
    for (final arista in grafo.aristas.where((arista) => arista.nodoInicio == nodoActual.id)) {
      final nodoVecino = sinVisitar.lookup(arista.nodoFin);

      // Si el nodo vecino no ha sido visitado y la nueva distancia es menor
      if (nodoVecino != null && nodoActual.distancia + arista.peso < nodoVecino.distancia) {
        // Actualizamos la distancia y el padre del nodo vecino
        nodoVecino.distancia = nodoActual.distancia + arista.peso;
        nodoVecino.padre = nodoActual;
      }
    }
  }

  // Devolvemos un mapa con las distancias y padres de cada nodo
  return {
    for (final nodo in grafo.nodos) nodo.id: sinVisitar.lookup(nodo.id)!,
  };
}
