\header {
  title = "SUMMERTIME"
  composer = "G.GERSHWIN"
  subsubtitle = "trascritto ed arrangiato da L.Presicci"
  instrument = "Contrabbasso"
  composer = \markup \bold "G.GERSCHWIN"

}
% markups
espress = \markup \center-align { \line {
              \hspace #3.7 \smaller \bold { \italic { " espressivo" } } } }
pizz = \markup \center-align {\italic { " Pizz." } }
allarg = \markup \center-align {\italic { " allarg. " } }
pocorit = \markup  \line {
              \hspace #2 \italic { " poco rit." } } 

\score {
  \relative {
   
    \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)

    \tempo \markup{\italic "Allegretto semplice"}
    \numericTimeSignature
\time 4/4
    \clef bass
    \compressMMRests {
  R1
  R1
  R1
  R1 
  R1
  R1
}
    r2 e'4\p c_\espress e1 (8) r d8. (c16) d8. (e16) c4
    a2 e2(4) r4 e'4 c4 d8 8 (d4) 2 r4 c8. (a16) c8. (a16) c4
    b1 (2) r8 e4 c8 e8 4 8 (2)
    r4 d8. (c16) d8. (e16) c4
    a2 e2(2) r4 e4
    g4 e8. (g16) a4 c4
    e8(d4.) c2
    \appoggiatura c8 a1 (1) (4) r4 r2 \clef treble
    r2_\pocorit \tuplet 3/2 { e''4 4 c4 }
    e4 2.
    r8. e16 d8. (c16) d8. (e16) c4
    a2 e2 (4.) r8 e'4 c4
    d8 4 8 (2)
    r4 c8. (a16) c8. (a16) c4
    b1 (2) r8 e8 8 [c8]
    e8 8 (4) 2
    r4 d8. (c16) d8. (e16) c4
    a2 e2 (2) (8) r8 e4
    g4 e8. (g16) a4 c4
    e8 (d8 ~ 4) c2
    \appoggiatura c8 a1 (1_\allarg) (4) r4 r4 \clef bass r8.^\fermata e,16^\pizz \break

    \tempo \markup{\italic "Swing"} 4 = 152
    a,4 b4 c4 e4
    a4 b4 c4 cis4
    bes4 aes4 g4 f4
    \tuplet 3/2 { a8 e8 c8 } f8. ees16 e4 gis8. e16
    \tuplet 3/2 { a8 e8 c8 } bes'8. e,16 a4 ees'4
    d4 c4 b4 a8. fis16
    f4 g4 gis4 a8. e16
    fis4 4 b,4 ees 8. b16
    e8. e'16 d4 c4 b4
    a4 g4 f4 e8. b'16
    bes4 aes4 g4 f4 
    a4 b4 c4 cis8. e,16
    d'4 c4 b4 a8. des16
    c4 e,8. c16 a4 a'4
    d,4 d'4 e4 bes4
    a4 4 d4 a8. d,16
    \tuplet 3/2 { b'8 fis8 b,8 } f'8. ees16 e4 4\p
    a4 g4 f4 e8. b'16
    bes4 c4 cis4 d8. e,16
    a4 c8. a16 e'8. e,16 e'4
    a,4 c8. e,16 a4 ees4
    d4 e4 f4 fis8. d16
    f4 g4 gis4 a8. g16
    fis4 4 b,4 ees8. b16
    e4 d4 c4  b8._\mf e16
    a4 g4 f4 e8. a16
    bes4 aes4 g4 f4 
    a4 g4 f4 e8. ees'16
    d4 c4 b8. d,16 a'8. d16
    c,4 e8. c16 a'4 ees'8. e,16
    d'4 d,8. f16 e4 bes'4
    a8. e16 a4 e4 c4
    d4_\f fis4 g4 des4
    c4 e4 f4 b,4
    bes4 d4 e4 b4 
    r4 a2._\ff
    \bar "|."

    }
  \layout {
  \context {
      \Score
       \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      proportionalNotationDuration = #(ly:make-moment 1/8)
    }
    }
  \midi {}
}