\header {
  title = "Gavotte"
  composer = "Lorenziti"
}

pianoRHMusic = \relative c { 
  \time 2/2
  \key g \major }

pianoLHMusic = \relative c { 
  \time 2/2
  \clef bass \key g \major
   }
bassMusic = \relative c {
  \time 2/2
  \clef bass
  \key g \major
  }
\score {
<<
      \new StaffGroup = "StaffGroup_strings" <<
      \new Staff = "Staff_bass" {
        \set Staff.instrumentName = #"Double Bass"
        \bassMusic
      }
    >>
      \new PianoStaff <<
        \set PianoStaff.instrumentName = #"Piano"
        \new Staff { \pianoRHMusic }
        \new Staff { \pianoLHMusic }
    >>
>>
  \layout {}
}