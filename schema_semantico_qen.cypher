// 1. Definizione Framework QEN
CREATE (qen:Framework {
    name: "Qualità Etica Naturale",
    owner: "CognitiveLogic",
    city: "Bologna",
    version: "2026.Q1"
})

// 2. Definizione dei Vettori Score
CREATE (va:Vector {id: "Va", name: "Valore Ambientale", weight: 0.35})
CREATE (vs:Vector {id: "Vs", name: "Valore Sociale", weight: 0.40})
CREATE (vt:Vector {id: "Vt", name: "Valore Territoriale", weight: 0.25})

// 3. Relazione dei Vettori con il Framework
CREATE (va)-[:COMPONENTE_DI]->(qen)
CREATE (vs)-[:COMPONENTE_DI]->(qen)
CREATE (vt)-[:COMPONENTE_DI]->(qen)

// 4. Inserimento Nodi Pilota (Target Settimana 1-2)
CREATE (ahime:Ristorante {name: "Ahimè", via: "San Gervasio 6e", focus: "Naturale"})
CREATE (sfogline:Bottega {name: "Le Sfogline", via: "Belvedere 7", focus: "Tradizione"})
CREATE (contadina:Bottega {name: "Bottega Contadina", focus: "Filiera"})

// 5. Mappatura Relazioni Semantiche
CREATE (ahime)-[:CONTRIBUISCE_A]->(va)
CREATE (sfogline)-[:CONTRIBUISCE_A]->(vs)
CREATE (contadina)-[:CONTRIBUISCE_A]->(vt)
