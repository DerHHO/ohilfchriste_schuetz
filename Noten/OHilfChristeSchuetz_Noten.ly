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



mBreak = { \break }


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
  d2 cis2) d1 | % 6
  r1 e,2 e2 \mBreak | % 7
  f2 fis2 gis2 ( a2 ~ | % 8
  a2 gis2 ) a2 e'2 | % 9
  e2 e1 d2 | \barNumberCheck #10
  d2 c2 b1 | % 11
  R1*2 | % 12
  e,2 e2 f2 fis2 \mBreak | % 13
  g2 ( gis2 ) a2 b2 ~ | % 14
  b2 c2 b1 | % 15
  a1 r1 | % 16
  a2 a2 bes2 b2 | % 17
  cis2 ( d1 cis2 ) | % 18
  d2 a1 a2 \mBreak | % 19
  c2 c2 bes1 | \barNumberCheck #20
  a1 g2 d'2 ~ | % 21
  d2 b2 e2 c2 | % 22
  gis2 ( a1 gis2 ) | % 23
  a1 r1 | % 24
  R1*2 | % 25
  r1 r2 d2 ~ \mBreak | % 26
  d2 a2 b2 g2 | % 27
  fis2 gis2 a2 c2 ~ | % 28
  c2 c2 c2 a2 | % 29
  d\breve | \barNumberCheck #30
  c1 r1 | % 31
  R1*2 \mBreak | % 32
  r1 cis4 d4 e4 f4 | % 33
  e2 d2 r2 a2 | % 34
  d2 fis,4 fis4 fis2 g2 \mBreak | % 35
  a2 b4 c4 d4 e4 b4 ( c4 ~ | % 36
  c4 b4 ) c2 r4 b4 e2 ~ | % 37
  e2 gis,4 gis4 gis2 a2 \mBreak | % 38
  b2 e,4 fis4 gis4 a4 b8 ( [ d8 c8 d8 ] | % 39
  b1 ) a2 r2 | \barNumberCheck #40
  a4 b4 c4 d4 e8 ( [ f8 d8 e8 ] c2 ) | % 41
  b\breve \bar "|."
}

tenorITextIOHilfChristeSchuetz = \lyricmode {
  O hilf, Chri -- ste, Got -- tes Sohn,
  durch dein bit -- ter Lei -- den,
  durch dein bit -- ter Lei -- den,
  o hilf, Chri -- ste Got -- tes Sohn,
  durch dein bit -- ter Lei -- den, bit -- ter Lei -- den,
  durch dem bit -- ter Lei -- den,
  dass wir dir stets un -- ter -- than,
  all __ Un -- tu -- gend mei -- den,
  dei -- nen Tod und sein Ur -- sach frucht -- bar -- lich be -- den -- ken,
  dir Dank -- o -- pfer schen -- ken,
  da -- für wie -- wohl arm und schwach,
  dir Dank -- o -- pfer schen -- ken,
  da -- für wie -- wohl arm und schwach
  dir Dank -- o -- pfer schen -- ken,
  dir Dank -- o -- pfer schen -- ken.
}

tenorITextIIOHilfChristeSchuetz = \lyricmode {
  Chri -- ste De -- us ad -- ju -- va 
  pro -- pter pas -- si -- o -- nem, 
  pro -- pter pas -- si -- o -- nem,
  Chri -- ste De -- us ad -- ju -- va pro -- pter pas -- si -- o -- nem,
  pas -- si -- o -- nem, pro -- pter pas -- si -- o -- nem,
  ut vi -- te -- mus cri -- mi -- na per con -- tri -- ti -- o -- nem,
  in fi -- de ne -- cem tu -- am ri -- te co -- gi -- te -- mus,
  gra -- ti -- am so -- ne -- mus,
  hinc ti -- bi -- que de -- bi -- tam gra -- ti -- am so -- ne -- mus,
  hinc ti -- bi -- que de -- bi -- tam gra -- ti -- am so -- ne -- mus,
  gra -- ti -- am so -- ne -- mus.
}

tenorIINotenOHilfChristeSchuetz = \tempTranspose \relative c' {
  \globalOHilfChristeSchuetz
  R1*10 | % 6
  e1 e2 e2 ~ \mBreak | % 7
  e2 d2 d2 c2 | % 8
  b1 r2 c2 | % 9
  c2 c1 b2 | \barNumberCheck #10
  b2 a2 gis1 | % 11
  a2 a2 bes2 b2 | % 12
  c2 ( cis2 ) d1 \mBreak | % 13
  e,2 e2 f2 fis2 | % 14
  gis2 ( a1 gis2 ) | % 15
  a1 r2 e2 ~ | % 16
  e2 e2 g2 g2 | % 17
  f1 e1 | % 18
  d1 d2 d2 \mBreak | % 19
  es2 e2 fis2 ( g2 ~ | \barNumberCheck #20
  g2 fis2 ) g2 b2 ~ | % 21
  b2 g2 c2 e2 | % 22
  b\breve | % 23
  a1 r2 c2 ~ | % 24
  c2 g2 a2 f2 | % 25
  e2 fis2 g1 \mBreak | % 26
  R1*2 | % 27
  r1 r2 e'2 ~ | % 28
  e2 e2 e2 c2 | % 29
  b2 ( c1 b2 ) | \barNumberCheck #30
  c1 r2 b2 | % 31
  e2 gis,4 gis4 gis2 a2 \mBreak | % 32
  b2 cis4 d4 e4 f4 cis4 ( d4 ~ | % 33
  d4 cis4 ) d2 r1 | % 34
  R1*2 \mBreak | % 35
  r1 b4 c4 d4 e4 | % 36
  d2 c2 r4 gis4 c2 ~ | % 37
  c2 b4 b4 b2 a2 \mBreak | % 38
  gis2 r2 e4 fis4 gis4 a4 | % 39
  gis4 ( a2 gis4 ) a2 a4 b4 | \barNumberCheck #40
  c4 d4 e8 ( [ f8 d8 e8 ] c8 [ d8 b8 c8 ] a2 ) | % 41
  gis\breve \bar "|."
}

tenorIITextIOHilfChristeSchuetz = \lyricmode {
  O hilf, Chri -- ste Got -- tes Sohn,
  o hilf, Chri -- ste Got -- tes Sohn,
  durch dein bit -- ter Lei -- den,
  durch dein bit -- ter Lei -- den,
  dass wir dir stets un -- ter -- than,
  durch dein bit -- ter Lei -- den,
  all Un -- tu -- gend mei -- den,
  dei -- nen Tod und sein Ur -- sach frucht -- bar -- lich be -- den -- ken,
  da -- für wie -- wohl arm und schwach,
  dir Dank -- o -- pfer schen -- ken,
  dir Dank -- o -- pfer schen -- ken,
  da -- für wie -- wohl arm und schwach
  dir Dank -- o -- pfer schen -- ken,
  dir Dank -- o -- pfer schen -- ken.
}

tenorIITextIIOHilfChristeSchuetz = \lyricmode {
  Chri -- ste De -- us ad -- ju -- va,
  Chri -- ste De -- us ad -- ju -- va pro -- pter pas -- si -- o -- nem,
  pro -- pter pas -- si -- o -- nem,
  ut vi -- te -- mus cri -- mi -- na,
  pro -- pter pas -- si -- o -- nem,
  per con -- tri -- ti -- o -- nem,
  in fi -- de ne -- cem tu -- am ri -- te co -- gi -- te -- mus,
  hinc ti -- bi -- que de -- bi -- tam gra -- ti -- am so -- ne -- mus,
  gra -- ti -- am so -- ne -- mus,
  hinc ti -- bi -- que de -- bi -- tam gra -- ti -- am so -- ne -- mus,
  gra -- ti -- am so -- ne -- mus.
}

orgelRHNotenOHilfChristeSchuetz = \tempTranspose \relative c' {
  \globalOHilfChristeSchuetz

}

orgelLHNotenOHilfChristeSchuetz = \tempTranspose \relative c {
  \globalOHilfChristeSchuetz

}

continuoNotenOHilfChristeSchuetz = \tempTranspose \relative c {
  \globalOHilfChristeSchuetz
  a1 a2 c2 ~ | % 2
    c2 g2 g2 a2 | % 3
    e'1 f2 d2 | % 4
    g2 e2 a2 g2 |
    a1 d,1 | % 6
    a1. a2 \mBreak | % 7
    d2 b2 e1~ |
    e a,1 | % 9
    a2 c1 g2 ~ | \barNumberCheck #10
    g2 a2 e'1 | % 11
    f2 d2 g2 e2 | % 12
    a,2 ~ a2 d2 ~ d2 \mBreak | % 13
    e2 ~ e2 d2 b2 |
    e1 e |
    a,1. a2 ~ | % 16
    a2 a2 g1 |
    a1 a |
    d1 d1 \mBreak | % 19
    c1 d |
    d1 g,2 g2 ~ | % 21
    g2 g2 a1 |
    e'1 e |
    a,1 f'1 | % 24
    e1 f2 d2 | % 25
    c2 d2 g,1 \mBreak | % 26
    fis'1 g2 e2 | % 27
    d2 e2 a,2 a'2 ~ | % 28
    a2 a2 a1 | % 29
    g2 f2 g1 | \barNumberCheck #30
    c,1 e2 e2 ~ | % 31
    e2 e4 e4 e2 f2 \mBreak | % 32
    e2 a4 bes4 a4 d,4 a4 d4 |
    a'2 d,2 d2 d2 ~ | % 34
    d2 d4 d4 d2 e2 \mBreak | % 35
    d2 g4 a4 g4 c,4 g4 c4 |
    g'2 c,2 e2 a,2 ~ | % 37
    a2 e'4 e4 e2 f2 \mBreak | % 38
    e2 c4 d4 e4 d4 b4 a4 | % 39
    e'4 d4 e2 a,2 a2
    ~ | \barNumberCheck #40
    a2 a2 a1 | % 41
    e'\breve \bar "|."
}

bezifferungOHilfChristeSchuetz = \figuremode {
  s1*2 |
  s1*2 |
  <_+>1 s1 |
  <_->2 <_+> q s2 |
  <4> <_+> s1 |
  s1*2 |
  
  s2 <5+> <_+> <4> |
  q <_+> s1 |
  s2 s1 s2 |
  s s <_+>1 |
  s2 s <_-> <_+> |
  <_!> <_+> <_!> <_+> |
  
  <_!> <_+> s2 <5+> |
  <_+> <6 4> <4> <_+> |
  s1*2 |
  s1 <_->2 <_!> |
  <6 _+> <6 4> <4> <_+> |
  s1*2 |
  
  <_->2 <_!> <6- _+> <6- 4> |
  <4> <_+> s1 |
  s1 s |
  <_+>2 <4> <4> <_+> |
  s1 s |
  <6> s2 s |
  s <_+> s1 |
  
  s1 s2 s |
  <_+> q s s |
  s1*2 |
  s2 s <4> <3> |
  s1 <_+>1 |
  s1*2 |
  
  <_+>2 q4 s q4 s q s |
  <4>4 <_+> q2 s s |
  s1. s2 |
  
  <_+>2 s2 s s |
  <4>4 <3> s2 <_+> s |
  s <_+>4 s s2 s |
  
  <_+>2 s4 <_+>4 q q <6+> s |
  <_+> s <4> <_+> s2 s |
  s1*2 |
  s1*2 |
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
