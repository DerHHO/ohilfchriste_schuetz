\version "2.18.2"

\include "dynamicparams.ly"
\include "formatangaben.ly"
\include "mergerests.ly"
\include "optionaltranspose.ly"
\include "Bezeichnungen.ly"
\include "generaldefinitions.ly"
\include "mydrums2.ly"
\include "drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))




globalOHilfChristeSchuetz = {
  \taktstil
  \accidentalStyle modern-voice
  \time 4/2
}

vorspielpausenOHilfChristeSchuetz = {

}

tenorINotenOHilfChristeSchuetz = \tempTranspose \relative c' {
  \globalOHilfChristeSchuetz
  e1 e2 e2 ~ | % 2
  e2 d2 d2 c2 | % 3
  b1 a2 a2 | % 4
  bes2 b2 cis2 ( d2 ~ | % 5
  d2 cis2 ) d1 | % 6
  r1 e,2 e2 \break | % 7
  f2 fis2 gis2 ( a2 ~ | % 8
  a2 gis2 ) a2 e'2 | % 9
  e2 e1 d2 | \barNumberCheck #10
  d2 c2 b1 | % 11
  R1*2 | % 12
  e,2 e2 f2 fis2 \break | % 13
  g2 ( gis2 ) a2 b2 ~ | % 14
  b2 c2 b1 | % 15
  a1 r1 | % 16
  a2 a2 bes2 b2 | % 17
  cis2 ( d1 cis2 ) | % 18
  d2 a1 a2 \break | % 19
  c2 c2 bes1 | \barNumberCheck #20
  a1 g2 d'2 ~ | % 21
  d2 b2 e2 c2 | % 22
  gis2 ( a1 gis2 ) | % 23
  a1 r1 | % 24
  R1*2 | % 25
  r1 r2 d2 ~ \break | % 26
  d2 a2 b2 g2 | % 27
  fis2 gis2 a2 c2 ~ | % 28
  c2 c2 c2 a2 | % 29
  d\breve | \barNumberCheck #30
  c1 r1 | % 31
  R1*2 \break | % 32
  r1 cis4 d4 e4 f4 | % 33
  e2 d2 r2 a2 | % 34
  d2 fis,4 fis4 fis2 g2 \break | % 35
  a2 b4 c4 d4 e4 b4 ( c4 ~ | % 36
  c4 b4 ) c2 r4 b4 e2 ~ | % 37
  e2 gis,4 gis4 gis2 a2 \break | % 38
  b2 e,4 fis4 gis4 a4 b8 ( [ d8 c8 d8 ] | % 39
  b1 ) a2 r2 | \barNumberCheck #40
  a4 b4 c4 d4 e8 ( [ f8 d8 e8 ] c2 ) | % 41
  b\breve \bar "|."
}

tenorITextIOHilfChristeSchuetz = \lyricmode {
  O "hilf," "Chri-"  ste Got -- tes "Sohn," o "hilf," Chri -- ste
  Got -- tes "Sohn," durch dein bit -- ter "Lei-"  "den," durch
  dem bit -- ter "Lei-"   "den," dass wir dir stets
  un -- ter -- "than," durch dein bit -- ter "Lei-"  
   "den," all Un -- tu -- gend mei -- "den," "dei-" 
  nen Tod und sein Ur -- sach "frucht-"  bar -- lich be --
  "den-"   "ken," da -- für wie -- wohl arm und schwach du
  Dank -- o -- pfer "schen-"    "ken," dir Dank -- o
  -- pfer schen -- "ken," da -- für wie -- wohl arm und schwach
  dir Dank -- o -- pfer "schen-"   "ken," dir Dank -- o --
  pfer "schen-"       
   "ken."
}

tenorIINotenOHilfChristeSchuetz = \tempTranspose \relative c' {
  \globalOHilfChristeSchuetz
  R1*10 | % 6
  e1 e2 e2 ~ \break | % 7
  e2 d2 d2 c2 | % 8
  b1 r2 c2 | % 9
  c2 c1 b2 | \barNumberCheck #10
  b2 a2 gis1 | % 11
  a2 a2 bes2 b2 | % 12
  c2 ( cis2 ) d1 \break | % 13
  e,2 e2 f2 fis2 | % 14
  gis2 ( a1 gis2 ) | % 15
  a1 r2 e2 ~ | % 16
  e2 e2 g2 g2 | % 17
  f1 e1 | % 18
  d1 d2 d2 \break | % 19
  es2 e2 fis2 ( g2 ~ | \barNumberCheck #20
  g2 fis2 ) g2 b2 ~ | % 21
  b2 g2 c2 e2 | % 22
  b\breve | % 23
  a1 r2 c2 ~ | % 24
  c2 g2 a2 f2 | % 25
  e2 fis2 g1 \break | % 26
  R1*2 | % 27
  r1 r2 e'2 ~ | % 28
  e2 e2 e2 c2 | % 29
  b2 ( c1 b2 ) | \barNumberCheck #30
  c1 r2 b2 | % 31
  e2 gis,4 gis4 gis2 a2 \break | % 32
  b2 cis4 d4 e4 f4 cis4 ( d4 ~ | % 33
  d4 cis4 ) d2 r1 | % 34
  R1*2 \break | % 35
  r1 b4 c4 d4 e4 | % 36
  d2 c2 r4 gis4 c2 ~ | % 37
  c2 b4 b4 b2 a2 \break | % 38
  gis2 r2 e4 fis4 gis4 a4 | % 39
  gis4 ( a2 gis4 ) a2 a4 b4 | \barNumberCheck #40
  c4 d4 e8 ( [ f8 d8 e8 ] c8 [ d8 b8 c8 ] a2 ) | % 41
  gis\breve \bar "|."
}

tenorIITextIOHilfChristeSchuetz = \lyricmode {
  O "hilf," "Chri-"  ste Got -- tes "Sohn," o "hilf," Chri -- ste
  Got -- tes "Sohn," durch dein bit -- ter "Lei-"  "den," durch
  dem bit -- ter "Lei-"   "den," dass wir dir stets
  un -- ter -- "than," durch dein bit -- ter "Lei-"  
   "den," all Un -- tu -- gend mei -- "den," "dei-" 
  nen Tod und sein Ur -- sach "frucht-"  bar -- lich be --
  "den-"   "ken," da -- für wie -- wohl arm und schwach du
  Dank -- o -- pfer "schen-"    "ken," dir Dank -- o
  -- pfer schen -- "ken," da -- für wie -- wohl arm und schwach
  dir Dank -- o -- pfer "schen-"   "ken," dir Dank -- o --
  pfer "schen-"       
   "ken."
}

orgelRHNotenOHilfChristeSchuetz = \tempTranspose \relative c' {
  \globalOHilfChristeSchuetz

}

orgelLHNotenOHilfChristeSchuetz = \tempTranspose \relative c {
  \globalOHilfChristeSchuetz

}

continuoNotenOHilfChristeSchuetz = \tempTranspose \relative c {
  \globalOHilfChristeSchuetz

}

continuoNotenOHilfChristeSchuetz = \tempTranspose \relative c {
  \globalOHilfChristeSchuetz

}

metronomZeileOHilfChristeSchuetz = \drummode {
}
\include "defOHilfChristeSchuetz.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "OHilfChristeSchuetz-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreOHilfChristeSchuetz
  }
}

\book {
  \bookOutputName "OHilfChristeSchuetz-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreOHilfChristeSchuetz
  }
}
%Arbeitspartitur***
