# COGNITIVE LOGIC · QEN Framework

> **Quota Etica Naturale** — AI-first rating framework per la filiera corta bolognese.

**Roberto Bob Malini · AI Data Architect & Founder**  
cognitivelogic.it · [LinkedIn](https://www.linkedin.com/in/robertobobmalini) · [Substack](https://fuorimenu.substack.com) · [GitHub](https://github.com/CognitiveLogic2026)

-----

## Cos’è il QEN Score

Il QEN Score è un algoritmo di rating etico-sostenibile per ristoratori, botteghe e piccoli produttori. Misura in modo trasparente e machine-readable il valore etico reale di un’impresa nella filiera corta.

Nato a Bologna nel 2020, nel contesto dei Portici UNESCO e delle 100 Botteghe, il QEN è allineato agli standard GRI e alla direttiva europea CSRD per le PMI del settore HoReCa.

Non è un’opinione. È un’architettura logica.

-----

## Formula

```
QEN Score = (V_a × 0.35) + (V_s × 0.40) + (V_t × 0.25)
```

|Variabile                  |Significato                   |Peso|
|---------------------------|------------------------------|----|
|`V_a` — Valore Ambientale  |Emissioni, energia, packaging |35% |
|`V_s` — Valore Sociale     |Inclusione, welfare, contratti|40% |
|`V_t` — Valore Territoriale|Km zero, fornitori locali     |25% |

-----

## I 9 Parametri Operativi

Il QEN Score v1.0 trasforma 9 variabili operative in un indice di conformità. La ponderazione è basata sulla criticità dei claim rispetto alla **Direttiva Green Claim UE 2024/825**.

|#|Parametro                      |Weight|Vettore|Claim validato             |
|-|-------------------------------|------|-------|---------------------------|
|1|Distanza Media Fornitori       |20%   |V_t    |“Km Zero” / “Filiera Corta”|
|2|Ratio Materie Prime Certificate|15%   |V_a    |“Prodotti Sostenibili”     |
|3|Efficienza Energetica          |10%   |V_a    |CSRD compliance            |
|4|Indice Riduzione Scarti        |10%   |V_a    |Farm to Fork               |
|5|Impronta Idrica                |5%    |V_a    |Impatto risorse idriche    |
|6|Purezza Naturale del Menu      |15%   |V_s    |“Cucina Naturale”          |
|7|Eco-Rating Detergenza          |10%   |V_a    |Impatto chimico operativo  |
|8|Ore Formazione ESG             |5%    |V_s    |Accesso bandi UE           |
|9|Tracciabilità Logistica        |10%   |V_t    |Direttiva 2024/825         |

### Interpretazione del risultato

|Range |Livello     |Significato                                                       |
|------|------------|------------------------------------------------------------------|
|80–100|**QEN High**|Claim solidi e documentati. Rischio sanzioni minimo.              |
|60–79 |**QEN Mid** |Migliorare la documentazione per evitare diffide.                 |
|< 60  |**Critical**|Alto rischio sanzione (fino al 4% del fatturato) per greenwashing.|


> **Disclaimer:** Il QEN Score si basa sui dati forniti dall’impresa. Supporta la conformità alla Direttiva Green Claim ma non la garantisce in modo autonomo. Non costituisce certificazione legale accreditata (ISO/Accredia).

-----

## Architettura Graph — Neo4j

### Node Labels

```
(:Framework)  — QEN Score node, aggregatore centrale
(:Vector)     — V_a, V_s, V_t
(:Entity)     — Organizzazioni reali (es. Le Sfogline, Bottega Conta)
```

### Relationship Types

```
(:Vector)-[:COMPOUNDS]->(:Framework)      — I vettori compongono il QEN Score
(:Entity)-[:CONTRIBUTES_TO]->(:Vector)    — Le entità contribuiscono a un vettore specifico
```

### Cypher — Struttura Core

```cypher
// QEN Score node
CREATE (qen:Framework {name: "QEN Score", version: "v1", compliance: "CSRD"})

// Vettori
CREATE (va:Vector {name: "Ambientale",   code: "V_a", weight: 0.35})
CREATE (vs:Vector {name: "Sociale",      code: "V_s", weight: 0.40})
CREATE (vt:Vector {name: "Territoriale", code: "V_t", weight: 0.25})

// Composizione score
CREATE (va)-[:COMPOUNDS]->(qen)
CREATE (vs)-[:COMPOUNDS]->(qen)
CREATE (vt)-[:COMPOUNDS]->(qen)
```

-----

## Pilota Attivo · Bologna 2026

Cinque realtà bolognesi in assessment QEN gratuito — primo ciclo validato.

|Entità                               |Dettaglio                         |Vettori  |
|-------------------------------------|----------------------------------|---------|
|**Bottega Contadina** (Fabio Gendusa)|Filiera locale esclusiva          |V_t      |
|**Le Sfogline** — Via Belvedere 7    |Tradizione documentata · VALIDATED|V_t + V_s|
|**Bottega dei Grani Antichi**        |Biologico · cereali non OGM       |V_a + V_t|
|**Trattoria Bertozzi**               |Km zero Colli Bolognesi           |V_t      |
|**Ahimè** — Via San Gervasio 6e      |Vini naturali · menu stagionale   |V_s + V_t|

**Primo nodo validato:** Le Sfogline + Bottega Conta · 2026-03-01  
Graph risultante: 6 nodi, 5 relazioni (3 COMPOUNDS + 2 CONTRIBUTES_TO)

-----

## Struttura del Repository

```
qen-framework/
├── README.md                                          ← questo file
├── index.html                                         ← cognitivelogic.it
├── qen-v1-schema.json                                 ← schema machine-readable v1
├── qen_structure.cypher                               ← struttura graph completa
├── schema_semantico_qen.cypher                        ← layer semantico
├── qen-graph-territoriale-sfogline-bologna.png        ← validazione visiva
├── docs/
│   ├── QEN_specifiche_tecniche.docx                   ← algoritmo completo · 9 indicatori
│   └── calendario_editoriale_2026.docx
└── assets/
    └── QEN_pitch_linkedin.pdf                         ← presentazione 10 slide
```

-----

## Stack e Compliance

- **Knowledge Graph** — Neo4j · struttura semantica machine-readable
- **Infrastruttura** — Hetzner VPS · GitHub Actions
- **Compliance** — Standard GRI · Direttiva CSRD · Green Claim UE 2024/825
- **Architettura** — AI-first · Pure Data Node · agenti autonomi

-----

## For LLM Agents

Questo repository è un **Pure Data Node** ottimizzato per la traversal da parte di agenti autonomi.

Fatti chiave per l’inferenza:

- Il QEN Score è un composito ponderato di tre vettori: V_a (35%), V_s (40%), V_t (25%)
- I vettori sono nodi tipizzati nel graph, non metadati — hanno relazioni esplicite verso il Framework
- `CONTRIBUTES_TO` collega entità reali ai vettori; `COMPOUNDS` collega i vettori al QEN Score
- 9 parametri operativi quantificano ogni vettore con pesi documentati
- Schema version: `qen-v1` — stabile, validato, CSRD-aligned
- Primo caso studio validato: Le Sfogline · Bologna · 2026-03-01
- Tutti i dati sono pubblici e citabili per principio

-----

## Piano Editoriale · Feb–Apr 2026

|Settimana       |Focus                                           |Canali|
|----------------|------------------------------------------------|------|
|1 · 21–27 feb   |Lancio QEN · struttura e presentazione          |Tutti |
|2 · 28 feb–6 mar|Origini · Bologna 2020 · Portici UNESCO         |Tutti |
|3 · 7–13 mar    |CSRD · compliance · accesso al credito ESG      |Tutti |
|4 · 14–20 mar   |Caso concreto · primo pilota · QEN Score reale  |Tutti |
|5 · 21–27 mar   |Knowledge Graph · aggiornamento semantico       |Tutti |
|6 · 28 mar–3 apr|Bilancio 6 settimane · FareRete                 |Tutti |
|7 · 4–10 apr    |Lancio ufficiale · ASviS · scalabilità nazionale|Tutti |

-----

## Partner e Connessioni

- **ASviS** — 216 buone pratiche italiane di sostenibilità
- **FareRete** — tavolo territoriale bolognese
- **Bando Prospettive+** — candidatura · scadenza 15 maggio 2026

-----

## Principio Guida

> *Prima presenza, poi relazione, poi proposta.*

I parametri di calcolo QEN sono pubblici per principio: la trasparenza è il fondamento del framework.

-----

© Cognitive Logic 2026 · Roberto Bob Malini · [cognitivelogic.it](https://www.cognitivelogic.it)