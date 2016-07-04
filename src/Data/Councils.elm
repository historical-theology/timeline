module Data.Councils (councils) where

import Date exposing (..)
import History exposing (..)


councils : List Event
councils =
  [ event (occurred <| duringYear  50              ) "Council of Jerusalem"
  , event (occurred <| duringMonth 313 Feb         ) "Edict of Milan"
  , event (occurred <| duringYear  325             ) "Council of Nicaea (I)"
  , event (occurred <| duringMonth 359 Jul         ) "Council of Ariminum"
  , event (occurred <| duringMonth 359 Sep         ) "Council of Seleucia"
  , event (occurred <| duringYear  363             ) "Council of Laodicea"
  , event (occurred <| duringYear  381             ) "Council of Constantinople (I)"
  , event (occurred <| duringYear  431             ) "Council of Ephesus"
  , event (occurred <| duringYear  451             ) "Council of Chalcedon"
  , event (occurred <| duringYear  553             ) "Council of Constantinople (II)"
  , event (occurred <| duringYear  680             ) "Council of Constantinople (III)"
  , event (occurred <| duringYear  787             ) "Council of Nicaea (II)"
  , event (occurred <| duringYear  869             ) "Council of Constantinople (IV)"
  , event (occurred <| duringYear  1123            ) "Council of Lateran (I)"
  , event (occurred <| duringYear  1139            ) "Council of Lateran (II)"
  , event (occurred <| duringYear  1179            ) "Council of Lateran (III)"
  , event (span (on 1213 Apr 19 ) (on 1215 Nov 11 )) "Council of Lateran (IV)"
  , event (occurred <| duringYear  1245            ) "Council of Lyon (I)"
  , event (span (on 1272 Mar 31 ) (duringYear 1274)) "Council of Lyon (II)"
  , event (occurred <| duringYear  1311            ) "Council of Vienne"
  , event (span (duringYear 1414) (duringYear 1418)) "Council of Constance"
  , event (span (duringYear 1431) (duringYear 1449)) "Council of Florence"
  , event (span (duringYear 1512) (duringYear 1517)) "Council of Lateran (V)"
  , event (occurred <| duringYear  1521            ) "Diet of Worms"
  , event (span (duringYear 1545) (duringYear 1563)) "Council of Trent"
  , event (occurred <| duringMonth 1572 Aug        ) "St. Bartholomew's Day massacre"
  , event (occurred <| duringYear  1619            ) "Synod of Dort"
  , event (occurred <| on          1662 May 19     ) "Act of Uniformity"
  , event (occurred <| on          1689 May 24     ) "Act of Toleration"
  , event (span (on 1869 Dec 8  ) (on 1870 Oct 20 )) "Vatican Council (I)"
  , event (span (on 1962 Oct 11 ) (on 1965 Dec 8  )) "Vatican Council (II)"
  ]
