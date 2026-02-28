// Definizione del Grafo Semantico QEN
CREATE (qen:Framework {name: "QEN Score", version: "2026.1"})

// Creazione dei Vettori di Pesatura
CREATE (va:Vector {id: "Va", name: "Valore Ambientale", weight: 0.35})
CREATE (vs:Vector {id: "Vs", name: "Valore Sociale", weight: 0.40})
CREATE (vt:Vector {id: "Vt", name: "Valore Territoriale", weight: 0.25})

// Collegamento dei Vettori al Framework
CREATE (va)-[:PARTE_DI]->(qen)
CREATE (vs)-[:PARTE_DI]->(qen)
CREATE (vt)-[:PARTE_DI]->(qen)

// Esempio Nodo Pilota (Settimana 1-2)
CREATE (bottega:Ristorante {name: "Bottega Contadina", location: "Bologna"})
CREATE (bottega)-[:VALUTATO_SU]->(vt)
