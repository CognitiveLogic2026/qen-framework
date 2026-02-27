# COGNITIVE LOGIC · QEN Framework

> **Quota Etica Naturale** — AI-first rating framework per la filiera corta bolognese.

**Roberto Bob Malini · Senior Analyst | Olivia Wilson, CEO**  
cognitivelogic.it · [LinkedIn](https://www.linkedin.com/in/robertobobmalini) · [Substack](https://fuorimenu.substack.com)

-----

## Cos’è il QEN Score

Il QEN Score è un algoritmo di rating etico-sostenibile per ristoratori, botteghe e piccoli produttori. Misura in modo trasparente e machine-readable il valore etico reale di un’impresa nella filiera corta.

Nato a Bologna nel 2020, nel contesto dei Portici UNESCO e delle 100 Botteghe, il QEN è allineato agli standard GRI e alla direttiva europea CSRD per le PMI del settore HoReCa.

-----

## Formula

```
QEN Score = (V_a × 0,35) + (V_s × 0,40) + (V_t × 0,25)
```

|Variabile|Significato                                      |Peso|
|---------|-------------------------------------------------|----|
|**V_a**  |Valore Ambientale — emissioni, energia, packaging|35% |
|**V_s**  |Valore Sociale — inclusione, welfare, contratti  |40% |
|**V_t**  |Valore Territoriale — km zero, fornitori locali  |25% |

-----

## Struttura del Repository

```
qen-framework/
├── index.html                        # Sito cognitivelogic.it
├── README.md                         # Questo file
├── docs/
│   ├── QEN_specifiche_tecniche.docx  # Algoritmo completo · 9 indicatori
│   └── calendario_editoriale_2026.docx
├── graph/
│   └── qen_knowledge_graph/          # Struttura semantica Neo4j
└── assets/
    └── QEN_pitch_linkedin.pdf        # Presentazione 10 slide
```

-----

## Architettura

- **Knowledge Graph** — Neo4j · struttura semantica machine-readable
- **Infrastruttura** — Hetzner VPS · GitHub Actions
- **Compliance** — Standard GRI · Direttiva CSRD
- **Stack** — AI-first · Pure Data Node · agenti autonomi

-----

## Pilota Attivo · Bologna 2026

Cinque realtà bolognesi in assessment QEN gratuito:

- **Bottega Contadina** (Fabio Gendusa) — filiera locale esclusiva · V_t
- **Le Sfogline** — Via Belvedere 7 — tradizione documentata · V_t + V_s
- **Bottega dei Grani Antichi** — biologico · cereali non OGM · V_a + V_t
- **Trattoria Bertozzi** — km zero Colli Bolognesi · V_t
- **Ahimè** — Via San Gervasio 6e — vini naturali · menu stagionale · V_s + V_t

-----
## 🧠 Nota Metodologica: Logica del QEN Score v1.0

[span_0](start_span)[span_1](start_span)Il **QEN Score** non è un'opinione, ma un'architettura logica che trasforma 9 variabili operative in un indice di conformità e sostenibilità[span_0](end_span)[span_1](end_span). [span_2](start_span)[span_3](start_span)Il calcolo segue una ponderazione basata sulla criticità dei claim rispetto alla **Direttiva Green Claim UE 2024/825**[span_2](end_span)[span_3](end_span).

### I 9 Parametri Operativi e il loro Impatto:

1. **[span_4](start_span)Distanza Media Fornitori (Weight: 20%)**: Valida i claim "Km Zero" e "Filiera Corta"[span_4](end_span). [span_5](start_span)Se la media supera i benchmark, il rischio di contestazione legale aumenta[span_5](end_span).
2. **[span_6](start_span)Ratio Materie Prime Certificate (Weight: 15%)**: Fornisce la prova documentale per il claim "Prodotti Sostenibili"[span_6](end_span). [span_7](start_span)Senza certificazioni (es. BIO, DOP), il claim è considerato nullo[span_7](end_span).
3. **[span_8](start_span)Efficienza Energetica (Weight: 10%)**: Parametro richiesto dalla **CSRD** per i grandi clienti[span_8](end_span). [span_9](start_span)Misura l'impatto reale rispetto alla promessa di "rispettare l'ambiente"[span_9](end_span).
4. **[span_10](start_span)Indice Riduzione Scarti (Weight: 10%)**: Allineamento alla strategia **Farm to Fork**[span_10](end_span). Dimostra l'impegno operativo nell'economia circolare.
5. **Impronta Idrica (Weight: 5%)**: Analisi del consumo e dell'uso di risorse idriche per ridurre l'impronta ambientale.
6. **[span_11](start_span)Purezza Naturale del Menu (Weight: 15%)**: Analisi della percentuale di prodotti non processati per sostenere il claim "Cucina Naturale"[span_11](end_span).
7. **Eco-Rating Detergenza (Weight: 10%)**: Valutazione dell'impatto chimico delle operazioni di pulizia sulla salute e sull'ambiente.
8. **[span_12](start_span)[span_13](start_span)Ore Formazione ESG (Weight: 5%)**: Dimostra che la sostenibilità è un processo aziendale consapevole, chiave per l'accesso a bandi e fondi UE[span_12](end_span)[span_13](end_span).
9. **[span_14](start_span)Tracciabilità Logistica (Weight: 10%)**: Capacità di fornire prove verificabili per ogni affermazione sostenibile, come richiesto dalla normativa 2024/825[span_14](end_span).


### Interpretazione del Risultato:

* **80-100 (QEN High)**: Claim solidi e documentati. [span_15](start_span)Minimo rischio di sanzioni[span_15](end_span).
* **[span_16](start_span)60-79 (QEN Mid)**: Necessità di migliorare la documentazione per evitare diffide[span_16](end_span).
* **[span_17](start_span)<60 (Critical)**: Alto rischio di sanzione amministrativa (fino al 4% del fatturato) per Greenwashing[span_17](end_span).

> **[span_18](start_span)[span_19](start_span)Disclaimer:** Il QEN Score si basa sui dati forniti dall'impresa[span_18](end_span)[span_19](end_span). [span_20](start_span)[span_21](start_span)Supporta la conformità alla Direttiva Green Claim ma non la garantisce in modo autonomo; non costituisce certificazione legale accreditata (ISO/Accredia)[span_20](end_span)[span_21](end_span).

## Piano Editoriale · Feb–Apr 2026

7 settimane di contenuti coordinati su Substack, LinkedIn, CognitiveLogic.it

|Settimana       |Focus                                           |Canali|
|----------------|------------------------------------------------|------|
|1 ★ 21–27 feb   |Lancio QEN · struttura e presentazione          |Tutti |
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

© CognitiveLogic 2026 · [cognitivelogic.it](https://www.cognitivelogic.it)
