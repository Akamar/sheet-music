\version "2.18.2"
\language "english"

{\paper {
  fonts = #
  (make-pango-font-tree
   "PT Serif"
   "PT Sans"
   "PT Mono"
   (/ (* staff-height pt) 2.5))
}

\header {
  title = "Ноктюрн"
  composer = "Р . Глиэр"
  opus = "Соч. 35 № 10"
  copyright = \markup { \teeny { Engraved by Alex Maryson Jr. } }
}

global = {
  \numericTimeSignature
  \time 9/8
  \override DynamicTextSpanner.style = #'none
}

contrabass = \relative c {
  \global
  \key e \minor

  %\transposition d
  % ÐÐ¿Ð¸ÑÑÐ²Ð°Ð¹ÑÐµ Ð¼ÑÐ·ÑÐºÑ ÑÑÐ´Ð°
  % Page 1
  R1*27/8 |
  d4.\mf\downbow( e~ e4 b8) |
  c( d e) g4.~( g4 fs8) |
  e4. a~( a4 b8) |

  a( g fs) b2.~ |
  \tuplet 2/3 { b8  b,\upbow } \tuplet 2/3 { fs'( g) } \tuplet 2/3 { fs( e) } |
  e( d c) b'2.~\< |
  \tuplet 2/3 { b8\! a~ } \tuplet 2/3 { a fs~ } \tuplet 2/3 { fs e~ } |
  e4 a,8~( a b c) cs4\>( d8\!) |

  d4.\upbow( e~ e4 b8) |
  c( d e) g4.~( g4 fs8) |
  e4. a~( a4 b8) |
  a( g fs) b4.\cresc~ b4 b8--( |

  % Page 2
  c4.) g4.~( g8 fs-- g--) |
  b2. b4.~\upbow |
  b e,~ e8 ds e |
  g2.~\upbow( g8 ds e) |

  fs2.~\f\>(  fs4.~\! |
  fs4) r8 r4 r8 r4 r8 |
  R8*9 |
  \tuplet 2/3 { r8 a,\mf\downbow-- } \tuplet 2/3 { e'-- d-- } \tuplet 2/3 { e-- f~ } |   %

  \tuplet 2/3 { f gs, } e'4.~( e4~\> e16 ef\!) | %
  ef4.~\> ef4\! r8 r4 r8 |
  R8*9 |

  \tuplet 2/3 { r8 as,\mf--\downbow } \tuplet 2/3 { es'-- ds-- } \tuplet 2/3 { es-- fs~ } | %
  \tuplet 2/3 { fs gss, } es'4.~( es4~ es16 ds) |
  cs4.\downbow as'\cresc~( as4 b8) |

  % Page 3
  as( gs fs) \tuplet 2/3 { as_\markup {\italic {poco}}( es) } \tuplet 2/3 { es-- fs-- } |
  ds4.\downbow \tuplet 2/3 { es8--_\markup {\italic {a}} fs-- } \tuplet 2/3 { gs-- as-- } |
  b2._\markup {\italic {poco}} b,4.~ |

  \tuplet 2/3 { b8 c-- } \tuplet 2/3 { e-- g~ } g b( c) |
  cs2. cs,4. |
  \tuplet 2/3 { d8\<( f) } \tuplet 2/3 { g-- a-- } bf( c cs) |
  d2.\!\f\> d,4.\! |

  r4 r8 r b'4~_\markup {\dynamic f \italic {espress.}}\downbow b8 g-- d-- |
  e4.~\upbow e r4 r8 |
  r4 r8 r c'4~_\markup {\italic {espress.}}\downbow( c8 a e) |

  ds4.\upbow^~ ds8 b-- cs-- ds-- e-- fs-- |
  g2. b,4.\downbow |
  c~( \tuplet 2/3 { c8 d) } \tuplet 2/3 { ds-- e-- } |

  % Page 4
  fs2.~\> fs8\! r r |
  R8*9 |
  d4.\mf( e~ e4 b8) |

  c( d e) g4.~( g4 fs8) |
  e4.\upbow a~( a4 b8) |

  a( g fs) b4.~ b4 b8( | %
  \tuplet 2/3 { c\cresc) f,--\downbow } \tuplet 2/3 { g\upbow-- a-- } \tuplet 2/3 { bf-- c-- } |

  d2.\upbow d4.~( |
  \tuplet 2/3 { d8 g,--) } \tuplet 2/3 { a\<--\! b-- } \tuplet 2/3 { c-- d\!-- } |

  % Page 5
  \tuplet 2/3 { ef_\markup {\italic {piÃº} \dynamic f}\upbow ef,~( } \tuplet 2/3 { ef c') } \tuplet 2/3 { c( b) } |
  bf2.( ef,4.) |

  ds as'\dim~( as4 a8) |
  gs2.\>( ds4.\!) |

  ef2.~( ef4.~ |
  ef!2.\> d4.\!) |
  d\p( e!~ e4 b8) |

  c( d e) g4.~( g4 fs8)
  e4.\downbow a~( a4 e8) |
  ef4.\dim a~( a4 ef8) |
  d2.~\p\>\downbow d4.~ | d~ d8\! r r r4 r8 \bar "|." |

}

rightNoVoices = \relative c {
  \global
  \key fs \minor
%%%%%%%%%%%%%%%%%%%

  r4_\markup { \dynamic pp \italic { tranquillo } }  r8s2. |
  s8*9*2 |
  <e a cs>2.~ <e a cs>4. |
  s8*9 |
  <b' d fs>2.~ <b d fs>4. |

  <cs es>2.( <b es>4.) |
  s8*9*2 |
  <gs d' gs>4.~ <gs d' gs>8 r r r4 r8 |
  R8*9 |

  \clef treble
  \set tieWaitForNote = ##t
  r4\p r8 cs~ e~ a_~ <cs, e a cs> r r |
  r4 r8 d~ fs~ b_~ <d, fs b d> r r |
  r4 r8 b'~ d~ fs~ <b, d fs b> r r |
  r4 r8 b\cresc~ cs_~ e~ <b cs e cs'> r r |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  r4 r8 r d, d'~ <a d> r r |
  r4 r8 a~ cs_~ a'~ <a, cs a'>4. |
  r4 r8 fs~ a~ cs_~ <fs, a cs fs> r r |
  r4 r8 fs~ a~ bs~ <fs a bs d> r r |

  r4\f r8 fs~ gs~ bs~ <fs gs bs gs'> r r |
  s8*9*8 |
  <bs, ds gs bs>4.~ <bs ds gs bs>8 bs'\cresc( ds <gs bs>) r r |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <bs,, ds bs'>4.~ <bs ds bs'>8  bs'_\markup { \italic { poco } }( ds <fss bs>) r r |
  <gs,, cs es>4.~ <gs cs es>8( es' gs <cs es>_\markup { \italic { a } }) r r |
  <cs, fs cs'>4.~ <cs fs cs'>8( cs' fs_\markup { \italic { poco } }~ <fs as cs>) r r |

  \tuplet 2/3 { <cs, fs a cs>8 <d fs a d>~ } <d fs a d> d'~ fs~ <d fs a d> r r |
  <ds, fs bs ds>4.~ <ds fs bs ds>8 ds'~ fs_~ <ds fs bs ds> r r |
  s8*9 |
  <gs,, b e gs>4.\<( <b e gs b> <e gs b e>\!) |

  s8*9*4 |
  \tuplet 2/3 { r8 <cs fs cs'> } \tuplet 2/3 { <gs' cs gs'> <a cs a'> } \tuplet 2/3 { <gs cs gs'> <fs cs' fs> } |
  <fs fs'>( <e e'> <d d'>) <cs' cs'>2.~ |

%%%%%%%%%%%%%%%%%%%%%%

  \tuplet 2/3 { <cs cs'>8 <b b'>~ } \tuplet 2/3 { <b b'> <gs gs'>~ } \tuplet 2/3 { <gs gs'> <fs fs'>~ } |
  \tuplet 2/3 { <fs fs'>( b~ } b cs d ds4 e8) |

  <cs e>16\mf( <a fs'> <cs e> <a fs'> <cs e> <a fs'>
  <cs fs> <a gs'> <cs fs> <a gs'> <cs fs> <a gs'>
  <cs fs> <a gs'> <cs fs> <a gs'> <cs fs> <a gs'>) |

  <d fs>( <b gs'> <d fs> <b gs'> <d fs> <b gs'>
  <d fs> <b gs'> <d fs> <b gs'> <d fs> <b gs'>
  <d fs> <b gs'> <d fs> <b gs'> <d fs> <b gs'>) |
  <fs' b>( <d cs'> <fs b> <d cs'> <fs b> <d cs'>
  <fs b> <d cs'> <fs b> <d cs'> <fs b> <d cs'>
  <fs b> <d cs'> <fs b> <d cs'> <fs b> <d cs'>) |

  <es b'>( <cs cs'> <es b'> <cs cs'> <es b'> <cs cs'>
  <es b'> <cs cs'> <es b'> <cs cs'> <es b'> <cs cs'>
  <es b'> <cs cs'> <es b'> <cs cs'> <es b'> <cs cs'>) |
  <f b>\cresc( <d d'> <f b> <d d'> <f b> <d d'>
  <f b> <d d'> <f b> <d d'> <f b> <d d'>
  <f b> <d d'> <f b> <d d'> <f b> <d d'>) |

  <g d'>( <e e'> <g d'> <e e'> <g d'> <e e'>
  <g d'> <e e'> <g d'> <e e'> <g d'> <e e'>
  <g d'> <e e'> <g d'> <e e'> <g d'> <e e'>) |
  <g cs!>( <e e'> <g cs> <e e'> <g cs> <e e'>\!\<
  <g cs> <e e'> <g cs> <e e'> <g cs> <e e'>
  <g cs> <e e'> <g cs> <e e'> <g cs> <e e'>)\! |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <a d>( <f f'>_\markup {\italic {piÃº} \dynamic f} <a d> <f f'> <a d> <f f'>
  <a d> <f f'> <a d> <f f'> <a d> <f f'>
  <a d> <f f'> <a d> <f f'> <a d> <f f'>) |
  <af c>( <f f'> <af c> <f f'> <af c> <f f'>)
  <f af>( <c c'> <f af> <c c'> <f af> <c c'>)
  <c f>( <af af'> <c f> <af af'> <c f> <af af'>) |

  <bs es>( <g fss'> <bs es> <g fss'> <bs es> <g fss'>
  <bs es>\dim <g fss'> <bs es> <g fss'> <bs es> <g fss'>
  <bs es> <g fss'> <bs es> <g fss'> <b es> <g fss'>) |
  <as es'>\>( <g fss'> <as es'> <g fss'> <as es'> <g fss'>
  <as es'> <g fss'> <as es'> <g fss'> <as es'> <g fss'>
  <as es'> <g fss'> <as es'> <g fss'> <as es'> <g fss'>\!) |

  <d' fs>( <a! g'> <d fs> <a g'> <d fs> <a g'>)
  <a d>( <f e'> <a d> <f e'> <a d> <f e'>)
  <f a>( <d bf'> <f a> <d bf'> <f a> <d bf'>) |
  <d g>\>( <b a'> <d g> <b a'> <d g> <b a'>
  <d g> <b a'> <d g> <b a'> <d g> <b a'>\!) <d g>4. |
  <cs e a cs>2.~\p <cs e a cs>4. |

  <d fs b d>2.~ <d fs b d>4. |
  <fs b d fs>2.~ <fs b d fs>4. |
  <gs b d gs>2.\dim~ <gs b d gs>4. |

  s8*13 r8 r r4 r8


}


rightOne = \relative c' {
  \global
  \key fs \minor
  \tempo "Andante"
  % ÐÐ¿Ð¸ÑÑÐ²Ð°Ð¹ÑÐµ Ð¼ÑÐ·ÑÐºÑ ÑÑÐ´Ð°
  s4. <cs e>2.( |
  <fs, ds'>4. <f d'~>2.() |
  d'4. cs <e, bs'>) |

  s8*9 |

  d'2.( es4.) |

  s8*9*2 |

  fs4.( es e) |
  d\<( \tuplet 2/3 { d8 e } \tuplet 2/3 { es fs\!) } |

  s8*9*11 |

  gs4.\mf( a~ a4 e8) |
  fs( gs a cs4.~ cs4 bs8) |
  b2.~ b4. |

  as2.~ as4. |
  a4.( bf4.~ bf4 f8) |
  g( a bf d4.~ d4 cs8) |

  bs2.~ bs4. |
  ass2.~ ass4. |

  s8*9*6 |

  <e g c e>4. <a,_~ a'~> \tuplet 2/3 { <a a'>8 <b b'> } |

  s8*9

  <e e'>4.(\f <fs_~ fs'~> <fs fs'>4 <cs cs'>8) |
  <d d'>( <e e'> <fs fs'> <a_~ a'~>4. <a a'>4 <gs gs'>8) |
  <fs fs'>4.( <b_~ b'~> <b b'>4 <cs cs'>8) |

  \stemDown
  <b b'>( <a a'> <gs gs'> \stemUp <cs cs'>2.) |

  s8*9*21

  \stemDown <cs e a cs>2.~\p \stemUp <cs e a cs>4.~
  <cs e a cs>~ <cs e a cs>8


}

rightTwo = \relative c'' {
  \global
  % ÐÐ¿Ð¸ÑÑÐ²Ð°Ð¹ÑÐµ Ð¼ÑÐ·ÑÐºÑ ÑÑÐ´Ð°
  s4. gs, a^~ |
  a2. b4.( |
  <f gs~>2.) \stemUp gs4. |
  \stemDown

  s8*9

  <fs b>2.~ <fs b>4. |

  s8*9*2

  a2. s4. |
  <a d>2.~ <a d>4. |

  s8*9*11

  r8 <cs e> <cs e>~ <cs e> <cs e> <cs e> <cs e> <cs e> r |
  s4. r8 <fs a> <fs a> <fs a> <fs a>4 |
  r8 <e g> <e~ g^~> <e g>2. |

  r8 <cs e> <cs~ e^~> <cs e>2. |
  r8 <d f> <d~ f^~> <d f> <d f> <d f> <d f> <d f> r |
  s4. r8 <g bf> <g bf> <g bf> <g bf>4 |

  r8 <es gs> <es gs>~ <es gs>2. |
  r8 <css es> <css es>~ <css es>2. |

  s8*9*6

  s4. d2. |

  s8*9

  r8 <a' cs> <a cs>~ <a cs> <a cs> <a cs> <a cs> <a cs> r |
  s4. r8 <d fs> <d fs> <d fs> <d fs> r |
  r <b d> <b d> r <d fs> <d fs> <d fs> <d fs> r |
  s4. r8 <es b'> <es b'> <es b'> <es b'> <es b'>

  s8*9*21

  s2. \parenthesize a,8 cs e

}

leftNoVoices = \relative c, {
  \global
  \key fs \minor
  % ÐÐ¿Ð¸ÑÑÐ²Ð°Ð¹ÑÐµ Ð¼ÑÐ·ÑÐºÑ ÑÑÐ´Ð°
  <a a'>2.~ <a a'>4.~ |
  <a a'>2.~ <a a'>4. |
  <a a'>2.~ <a a'>4. |
  <a a'>2.~ <a a'>4. |
  <a a'>2.~ <a a'>4. |
  <a' a'>2.~ <a a'>4. |

  <gs gs'>2.( <cs, cs'>4.) |
  <fs fs'>2.~ <fs fs'>4. |
  <b b'>2.~ <b b'>4. |
  <e e'>4.~ <e e'>8 r r r4 r8 |
  R8*9 |

  s8*7 r8 r |
  s8*7 r8 r |
  s8*7 r8 r |
  s8*7 r8 r |

%%%%%%%%%%%%%%%%%

  s8*7 r8 r |
  s8*9 |
  s8*7 r8 r |
  s8*7 r8 r |

  s8*7 r8 r |
  r <cs gs'>8 <cs gs'>~ <cs gs'> <cs gs'> <cs gs'> <cs gs'> <cs gs'> r8 |
  r4 r8 r s8*5 |
  r8 e,( b' e g b e) r8 r |

  r8 fs,( fs, cs' fs as d) r8 r |
  r8 <d, a'!> <d a'>~ <d a'> <d a'> <d a'> <d a'> <d a'> r |
  r4 r8 r s8*5 |

  r8 es,( bs' es gs bs es) r8 r |
  r8 fss,( fss, css' fss ass dss) r8 r |
  gs,,( ds' gs bs ds gs bs) r r |

%%%%%%%%%%%%%%%%%%%%%

  bs,,,( bs' bs' as ds fss bs) r r |
  cs,,,( gs' cs es gs cs es) r r |
  as,,( cs fs as cs fs as) r r |

  a,,!( d fs~ fs a d fs) r r |
  gs,,( ds' gs bs fs' ds bs') r r |
  g,,( g' c) fs,,( fs' d!) f,( f' b,) |
  e,( b' e~ e gs b~ b) r r |

  r <a, e' cs'> <a e' cs'>~ <a e' cs'> <a e' cs'> <a e' cs'> <a e' cs'> <a e' cs'> r |
  r <a fs' b> <a fs' b>~ <a fs' b> <a fs' b> <a fs' b> <a fs' b> <a fs' b> r |
  r <a' d fs> <a d fs>~ <a d fs> <a d fs> <a d fs> <a d fs> <a d fs> r |

  r <gs cs es> <gs cs es>~ <gs cs es> <gs cs es> <gs cs es> <gs cs es> <gs cs es> <gs cs es> |
  fs,( cs' a'~ a cs fs a, cs a) |
  gs,,( b' fs' d' fs b, cs fs, b) |

%%%%%%%%%%%%%%%%%%%%%%%%%

  e,,( e' d' gs b, d gs, b d) |
  fs( gs, d' b, gs' b, e, b' gs') |
  a,\sustainOn( gs' cs) cs4.( a,) |

  a8( fs' d') d4.( a,) |
  a'8( fs' b) b4.( a,) |

  gs8( <cs es> b') b4.( gs,) |
  g8( <d f> b) b4.( g,) |

  \clef treble
  bf''8( <e g> d') d4.( bf,) |
  a8( <e' g> cs') cs4.( a,) |

  \clef bass

%%%%%%%%%%%%%%%%%%

  d,8( a' f') f4.( d,) |
  f8( c' af') af4.( f,) |

  c8( gs' es') es4.( gs,) |
  css,8( as' es') es4.( css,) |

  d8( a'! f') f4.( d,) |
  e,8( b' e') e4.( e,) |
  <a, e' a>2.~ <a e' a>4. |

  <a fs' b>2.~ <a fs' b>4. |
  <a' d>2.~ <a d>4. |
  <a b d>2.~ <a b d>4. |

  \set tieWaitForNote = ##t

  r8 a,( e' a~ cs~ e~ <a, cs e a>4.~) |
  <a cs e a>~ <a cs e a>8 r8 r r4 r8 |

}

leftOne = \relative c' {
  \global
  % ÐÐ¿Ð¸ÑÑÐ²Ð°Ð¹ÑÐµ Ð¼ÑÐ·ÑÐºÑ ÑÑÐ´Ð°
  s8*9*11 |

  \set tieWaitForNote = ##t
  a,8 e'_~ a~ <e a>4.~ <e a>8 s4
  a,8 fs'_~ b~ <fs b>4.~ <fs b>8 s4
  a8 d_~ fs~ <d fs>4.~ <d fs>8 s4
  gs,8 cs_~ es~ <cs es>4.~ <cs es>8 s4

  fs,8 a_~ d~ fs4.~  <a, d fs>8 s4
  f8 a~ cs~ <a cs>4.  e8 a cs8
  ds, a'~ cs~ <a_~ cs~>4. <a cs>8 s4
  d,8 a'~ bs~ <a_~ bs~>4. <a bs>8 s4

  gs,8 ds'_~ bs'~ <ds, bs'>4.~ <ds bs'>8 s4
  s8*9
  s2. cs'8 cs( bs)
  s8*9*3
  s2. d8 d( cs)

}

leftTwo = \relative c' {
  \global
  % ÐÐ¿Ð¸ÑÑÐ²Ð°Ð¹ÑÐµ Ð¼ÑÐ·ÑÐºÑ ÑÑÐ´Ð°
  s8*9*11

  a,2.~ a8 s4
  a2.~ a8 s4
  a'2.~ a8 s4
  gs2.~ gs8 s4

  fs2.~ fs8 s4
  f2. e4.
  ds2.~ ds8 s4
  d2.~ d8 s4

  gs,2.~ gs8 s4
  s8*9
  s2 <cs a' cs>8 <d a' cs> <ds a'> <ds a'>4
  s8*9*3
  s2 <d bf' d>8 <ef bf' d> <e bf'> <e bf'>4

}

%{
dynamicBass = {

  s8*9*3

  s8*69\mf s4\> s8\!

  s8*30

  s8*42\cresc s8*9\f\> s4\! s8*7

  s8*9



}

dynamicPiano = {

}
%}

contrabassPart = %<<
\new Staff \with {
  midiInstrument = "contrabass"
} { \clef bass \contrabass }
%\new Dynamics \dynamicBass
%>>

pianoPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass << \rightNoVoices << \rightOne \\ \rightTwo >> >> }
  % \new Dynamics \dynamicPiano
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass << \leftNoVoices << \leftOne \\ \leftTwo >> >> }
>>

\score {
  <<
    \accidentalStyle piano
    \contrabassPart
    \transpose fs e {
      \pianoPart
    }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}