
chorpartiturOHilfChristeSchuetz = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Tenor 1"
        shortInstrumentName = "T 1"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vten1" {
          \tag #'transponierendepartitur {
            \clef "G_8"
            \transpose c c \tenorINotenOHilfChristeSchuetz
          }
          \tag #'klingendepartitur {
            \clef "G_8"
            \tenorINotenOHilfChristeSchuetz
          }
        }
        \addlyrics { \tenorITextIOHilfChristeSchuetz }

      >>


      \new Staff \with {
        instrumentName = "Tenor 2"
        shortInstrumentName = "T 2"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vten2" {
          \tag #'transponierendepartitur {
            \clef "G_8"
            \transpose c c \tenorIINotenOHilfChristeSchuetz
          }
          \tag #'klingendepartitur {
            \clef "G_8"
            \tenorIINotenOHilfChristeSchuetz
          }
        }
        \addlyrics { \tenorIITextIOHilfChristeSchuetz }

      >>
    >>
  >>
}
orgelsystemOHilfChristeSchuetz = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org." <<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vrH" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenOHilfChristeSchuetz
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenOHilfChristeSchuetz
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "vlH" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenOHilfChristeSchuetz
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenOHilfChristeSchuetz
            }
          }

        >>

      >>
    >>
  >>

}

scoreOHilfChristeSchuetz = {
  <<
    \chorpartiturOHilfChristeSchuetz
    \orgelsystemOHilfChristeSchuetz


    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenOHilfChristeSchuetz
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenOHilfChristeSchuetz
        }
      }

    >>


    \new Staff \with {
      instrumentName = "Violoncello/Kontrabass/Fagott"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vBassgruppe" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenOHilfChristeSchuetz
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenOHilfChristeSchuetz
        }
      }

    >>
  >>
}