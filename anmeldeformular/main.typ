#let event = [15hackn8\@gcm]
#let start_date = [27.06.2025 18:00]
#let end_date = [28.06.2025 14:00]
#let no_gaming = true

#import "@preview/icu-datetime:0.1.1": fmt-date
#set text(
  lang: "de",
  number-type: "old-style",
)
#set par(
  justify: true,
  leading: .5em,
)
#set page(
  numbering: none,
  margin: (y: 1.5cm, rest: 2cm),
)

#show heading.where(level: 1): it => v(-2mm) + it

#box(image("gcm-wordmark.svg", height: 6mm), inset: (y: 0mm))
#h(1fr)
#box(align(right)[
  Fachbereich Informatik #math.dot
  //#link("mailto:info@hackn8.de")[info\@hackn8.de] #math.dot
  #fmt-date(datetime.today(), locale: "de", length: "long") \
  Weitere Informationen: https://hackn8.de
])

#box(inset: (bottom: 0mm), text(size: 10mm)[Anmeldung #event])

Sehr geehrte Schülerinnen und Schüler, natürliche und künstliche Intelligenzen,

wir führen eine weitere HackN8 *vom #start_date zum #end_date* durch.
Ziel ist es, sich intensiv mit Technologie auseinanderzusetzen.
Bei der HackN8 treffen sich Gleichgesinnte aller Generationen, um sich auszutauschen und einander zu helfen.
Dabei legen wir großen Wert auf das respektvolle Miteinander und achten die Unterschiede der Anderen.
#if no_gaming [*Die #event findet ohne Gaming statt.*]

= Regeln

+ *Rücksicht und Respekt*
  + Im Ruheraum herrscht Ruhe.
  + Eigentum bleibt beim Eigentümer~/ bei der Eigentümerin.
  + Technik ist empfindlich und wird mit Sorgfalt behandelt.
  + Benutzung fremder Technik ist nur auf Nachfragen erlaubt.
+ *Hacks und das Auffinden von Sicherheitslücken* ist erwünscht, wird aber offen kommuniziert. Sinn eines jeden Hacks ist die Verbesserung der Situation, nicht das Ausnutzen und Bereichern.
+ *Drogen und Konsum*
  + Sämtliche Drogen (auch Alkohol) sind verboten.
  + Es gilt die Schulordnung, insbesondere das Rauchverbot.
  + Hochprozentige Koffein-Drinks (aka. Energy-Drinks) sind nicht erwünscht.
+ *Computer sind dazu da, Schönes zu erschaffen.*

= Angaben Teilnehmer:in

#let input_box = box(width: 90mm, height: 10mm, stroke: black)

#box(
  inset: (top: 2mm),
  grid(
    columns: (40mm, auto),
    align: horizon,
    [Vorname], input_box,
    [Nachname], input_box,
    [Alter], input_box,
    [Projekt], input_box,
  )
)

= Kontakt Erziehungsberechtigte
_nur bei Minderjährigen_

#box(
  inset: (top: -2mm),
  grid(
    columns: (40mm, auto),
    align: horizon,
    [E-Mail-Adresse], input_box,
    [Telefonnummer], input_box,
  )
)

_für Volljährige:_ \
#grid(
  inset: (top: -2mm),
  columns: (auto, auto),
  gutter: 2mm,
  box(width: 4mm, height: 4mm, stroke: black),
  [*Ich habe die Regeln gelesen und zur Kenntnis genommen.* \ Mit meiner Unterschrift bestätige ich die Richtigkeit der angegebenen Informationen zu meiner Person. Ich übernehme die Haftung für durch mich verursachte Schäden.],
)

_für Erziehungsberechtigte:_ \
#grid(
  inset: (top: -2mm),
  columns: (auto, auto),
  gutter: 2mm,
  box(width: 4mm, height: 4mm, stroke: black),
  [*Ich habe die Regeln mit meinem Kind besprochen, und hole es auf Aufforderung ab.* \ Mit meiner Unterschrift bestätige ich die Richtigkeit der angegebenen Informationen zu meinem Kind, sowie die meiner Kontaktinformationen. Ich übernehme die Haftung für durch mein Kind verursachte Schäden.],
)

#v(1fr)
#box(line(stroke: (dash: "dotted"), length: 120mm)) \
Ort, Datum, Unterschrift (ggf. Erziehungsberechtigte)
