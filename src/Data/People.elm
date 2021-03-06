module Data.People exposing (people)

import Date exposing (..)
import History exposing (..)

-- People to research and add:
--
-- https://en.wikipedia.org/wiki/Gregory_of_Rimini
-- https://en.wikipedia.org/wiki/Thomas_Halyburton
-- https://en.m.wikipedia.org/wiki/Gottschalk_of_Orbais
-- https://en.m.wikipedia.org/wiki/Benedictus_Aretius
-- https://en.m.wikipedia.org/wiki/Isidore_of_Seville
-- https://en.m.wikipedia.org/wiki/Maximus_the_Confessor
-- https://en.m.wikipedia.org/wiki/Theognostus_of_Alexandria
-- https://en.m.wikipedia.org/wiki/Leontius_of_Jerusalem
-- https://en.m.wikipedia.org/wiki/Pope_Dionysius_of_Alexandria
-- http://cyclopedia.lcms.org/display.asp?t1=s&word=SOHNIUS.GEORG
-- https://en.m.wikipedia.org/wiki/Lambert_Daneau
-- https://en.m.wikipedia.org/wiki/Keckermann
-- https://en.m.wikipedia.org/wiki/Salomon_van_Til
-- https://en.m.wikipedia.org/wiki/William_Greenough_Thayer_Shedd
-- https://en.m.wikipedia.org/wiki/Cyprian
-- https://en.wikipedia.org/wiki/Pope_Leo_I
-- https://en.wikipedia.org/wiki/Bede
-- https://en.wikipedia.org/wiki/Thomas_Erastus
-- https://en.wikipedia.org/wiki/Victor_of_Tunnuna
-- https://en.wikipedia.org/wiki/Cassiodorus
-- Gilbert de la Porree (d. 1154)
-- William of Auxerre (d. 1231)
-- Alain of Lille (d. 1202)
-- Ralph Cudworth
-- Theophilus Gale
-- Alcuin
-- Rabanus Maurus
-- Ratramnus
-- Andrew of St. Victor
-- Giles of Rome
-- Robert Kilwardby
-- Robert Grosseteste
-- William de la Mare
-- Peter Aureole
-- Haimo of Halberstadt
-- Alphonsus Vargas
-- Hervaeus Natalis
-- Roger Bacon
-- Stephen Harding
-- Nicholas Manjacoria
-- Hugh of St Cher
-- Anselm of Laon
-- Stephen Langton
-- Berengar of Tours
--
-- For review:
-- https://en.wikipedia.org/wiki/Prosper_of_Aquitaine
--

people : Ymd -> List Life
people current =
  [ life (duringYear  6          ) (duringYear  100        ) "John the Apostle"
  -- We don't have good data on some of these early guys. Not knowing when
  -- Clement was born, but having the sense that he was old when he died, I
  -- have applied Moses' saying that some life's years are seventy
  , life (duringYear  29         ) (duringYear   99        ) "Clement"
  , life (duringYear  35         ) (duringYear  108        ) "Ignatius of Antioch"
  , life (duringYear  69         ) (duringYear  155        ) "Polycarp"
  , life (duringYear  70         ) (duringYear  163        ) "Papias"
  , life (duringYear  100        ) (duringYear  165        ) "Justin Martyr"
  -- The initial date given for Irenaeus is the not the actual date of his
  -- birth, but a shot into the middle of the vicinity around which the
  -- speculation of his birth lies.
  , life (duringYear  128        ) (duringYear  202        ) "Irenaeus"
  , life (duringYear  155        ) (duringYear  240        ) "Tertullian"
  , life (duringYear  184        ) (duringYear  153        ) "Origen"
  , life (duringYear  216        ) (duringYear  274        ) "Mani"
  , life (duringYear  250        ) (duringYear  336        ) "Arius"
  , life (duringYear  250        ) (duringYear  325        ) "Lactantius"
  , life (duringYear  260        ) (duringYear  339        ) "Eusebius"
  , life (on          272 Feb 27 ) (on          337  May 22) "Constantine I"
  , life (duringYear  297        ) (on          373  May 2 ) "Athanasius of Alexandria"
  , life (duringYear  310        ) (duringYear  367        ) "Hilary of Poitiers"
  -- Years on Didymus the Blind from footnote in Owen Vol 3 (Banner of Truth edition, page 28).
  -- Wikipedia has 313 - 398.
  , life (duringYear  311        ) (duringYear  396        ) "Didymus the Blind"
  , life (duringYear  320        ) (duringMonth 379  Jan   ) "Basil of Caesarea"
  , life (duringYear  329        ) (on          390  Jan 25) "Gregory of Nazianzus"
  , life (duringYear  335        ) (duringYear  395        ) "Gregory of Nyssa"
  , life (duringYear  340        ) (on          397  Apr 4 ) "Aurelius Ambrosius"
  , life (duringYear  345        ) (duringYear  410        ) "Rufinus of Aquileia"
  , life (duringYear  347        ) (on          420  Sep 30) "Jerome"
  , life (duringYear  349        ) (duringYear  407        ) "John Chrysostom"
  , life (on          354 Nov 13 ) (on          430  Aug 28) "Augustine of Hippo"
  , life (duringYear  360        ) (duringYear  418        ) "Pelagius"
  , life (duringYear  360        ) (duringYear  435        ) "John Cassian"
  , life (duringYear  380        ) (duringYear  456        ) "Eutyches"
  , life (duringYear  390        ) (duringYear  455        ) "Prosper of Aquitaine"
  -- Date of death for Fulgentius given as 527 or 533. I averaged it to 530.
  , life (duringYear  462        ) (on          530  Jan 1 ) "Fulgentius of Ruspe"
  , life (duringYear  480        ) (duringYear  524        ) "Anicius Boethius"
  , life (duringYear  540        ) (on          604  Mar 12) "Gregory the Great"
  , life (duringYear  675        ) (on          749  Dec 4 ) "John of Damascus"
  --, life (duringYear  955        ) (on          1010       ) "Ælfric of Eynsham"
  , life (duringYear  1033       ) (on          1109 Apr 21) "Anselm of Canterbury"
  , life (duringYear  1079       ) (on          1142 Apr 21) "Peter Abelard"
  , life (duringYear  1090       ) (on          1153 Aug 20) "Bernard of Clairvaux"
  , life (duringYear  1096       ) (duringMonth 1160 Jul   ) "Peter Lombard"
  , life (duringYear  1096       ) (on          1141 Feb 11) "Hugh of Saint Victor"
  , life (duringYear  1140       ) (duringYear  1205       ) "Peter Waldo"
  , life (duringYear  1185       ) (on          1245 Aug 21) "Alexander of Hales"
  , life (duringYear  1193       ) (duringYear  1280       ) "Albertus Magnus"
  , life (duringYear  1221       ) (on          1274 Jul 15) "Bonaventure"
  , life (duringYear  1225       ) (on          1274 Mar 7 ) "Thomas Aquinas"
  , life (duringYear  1265       ) (duringYear  1321       ) "Dante Alighieri"
  , life (duringYear  1266       ) (on          1308 Nov 8 ) "John Duns Scotus"
  , life (duringYear  1287       ) (duringYear  1347       ) "William of Ockham"
  , life (duringYear  1290       ) (on          1349 Aug 26) "Thomas Bradwardine"
  , life (duringYear  1320       ) (on          1384 Dec 31) "John Wycliffe"
  , life (duringMonth 1340 Oct   ) (on          1384 Aug 20) "Gerard Groote"
  , life (duringYear  1369       ) (on          1415 Jul 6 ) "Jan Hus"
  , life (duringYear  1380       ) (on          1471 Jul 25) "Thomas a Kempis"
  , life (duringYear  1398       ) (on          1468 Feb 3 ) "Johannes Gutenberg"
  , life (duringYear  1400       ) (on          1455 Sep 3 ) "Alonso Tostado"
  , life (duringYear  1419       ) (on          1489 Oct 4 ) "Wessel Gansfort"
  , life (on          1466 Oct 28) (on          1536 Jul 12) "Desiderius Erasmus"
  , life (on          1477 Jul 12) (on          1547 Oct 18) "Jacopo Sadoleto"
  , life (duringYear  1482       ) (on          1531 Nov 24) "Johannes Oecolampadius"
  , life (on          1483 Nov 10) (on          1546 Feb 18) "Martin Luther"
  , life (on          1484 Jan 1 ) (on          1531 Oct 11) "Huldrych Zwingli"
  , life (duringYear  1486       ) (on          1541 Dec 24) "Andreas Karlstadt"
  , life (on          1486 Nov 13) (on          1543 Feb 13) "Johann Eck"
  , life (duringYear  1489       ) (on          1565 Sep 13) "William Farel"
  , life (on          1491 Nov 11) (on          1551 Feb 28) "Martin Bucer"
  , life (duringYear  1494       ) (duringYear  1536       ) "William Tyndale"
  , life (on          1497 Feb 16) (on          1560 Apr 19) "Philip Melanchthon"
  , life (on          1497 Sep 10) (on          1563 Aug 30) "Wolfgang Musculus"
  , life (on          1498 Dec 19) (on          1552 Oct 17) "Andreas Osiander"
  , life (on          1499 Sep 8 ) (on          1562 Nov 12) "Peter Martyr Vermigli"
  , life (on          1504 Jul 18) (on          1575 Sep 17) "Heinrich Bullinger"
  , life (duringYear  1513       ) (on          1589 Sep 16) "Michael Baius"
  , life (on          1509 Jul 10) (on          1564 May 27) "John Calvin"
  , life (duringYear  1511       ) (duringYear  1564       ) "Andreas Gerhard Hyperius"
  , life (duringYear  1513       ) (on          1572 Nov 24) "John Knox"
  , life (on          1514 Nov 29) (on          1581 Sep 29) "Andreas Musculus"
  , life (duringYear  1515       ) (on          1572 Aug 26) "Peter Ramus"
  , life (on          1516 Feb 2 ) (on          1590 Nov 19) "Girolamo Zanchi"
  , life (on          1519 Jun 24) (on          1605 Oct 13) "Theodore Beza"
  , life (on          1522 Nov 9 ) (on          1586 Apr 8 ) "Martin Chemnitz"
  , life (duringYear  1534       ) (duringYear  1599       ) "Peter Baro"
  , life (on          1534 Jul 18) (on          1583 May 6 ) "Zacharias Ursinus"
  , life (on          1539 Dec 5 ) (on          1604 Mar 4 ) "Fausto Sozzini"
  , life (on          1542 Oct 4 ) (on          1621 Sep 17) "Robert Bellarmine"
  , life (on          1545 May 1 ) (on          1602 Oct 13) "Franciscus Junius"
  , life (on          1548 Jan 5 ) (on          1617 Sep 25) "Francisco Suarez"
  , life (on          1548 Dec 30) (on          1622 Jun 15) "David Pareus"
  , life (duringYear  1549       ) (on          1607 May 21) "John Rainolds"
  , life (on          1554 Oct 1 ) (on          1623 Jan 15) "Leonardus Lessius"
  , life (duringYear  1558       ) (duringYear  1602       ) "William Perkins"
  , life (on          1560 Oct 10) (on          1609 Oct 19) "Jacobus Arminius"
  , life (on          1561 Dec 16) (on          1610 Jul 17) "Amandus Polanus"
  , life (duringYear  1562       ) (on          1621 Dec 4 ) "Andrew Willet"
  , life (on          1563 Jan 19) (on          1616 Oct 23) "Leonhard Hutter"
  , life (on          1563 Jan 30) (on          1641 Jan 11) "Franciscus Gomarus"
  , life (duringYear  1564       ) (duringYear  1621       ) "Daniel Chamier"
  , life (duringYear  1565       ) (duringYear  1640       ) "Antonius Thysius"
  , life (on          1568 Mar 28) (on          1646 Feb 4 ) "Johannes Polyander"
  , life (duringYear  1569       ) (duringYear  1614       ) "Robert Parker"
  , life (on          1569 Jul 19) (on          1622 Sep 29) "Conrad Vorstius"
  , life (duringYear  1573       ) (duringYear  1617       ) "Paul Baynes"
  , life (duringMonth 1573 Oct   ) (on          1639 Jul  3) "Antonius Walaeus"
  , life (duringYear  1576       ) (on          1633 Nov 14) "William Ames"
  , life (on          1576 Jun 6 ) (on          1649 Oct 3 ) "Giovanni Deodati"
  , life (duringYear  1577       ) (duringYear  1635       ) "Richard Sibbes"
  --, life (duringYear  1577       ) (on          1649 Mar 19) "Gerardus Vossius"
  , life (duringYear  1579       ) (duringYear  1625       ) "John Cameron"
  , life (on          1579 Jan 4 ) (on          1629 Apr 8 ) "Willem Teellinck"
  , life (duringYear  1581       ) (duringYear  1656       ) "James Ussher"
  , life (on          1582 Oct 17) (on          1637 Aug 17) "Johannes Gerhard"
  , life (on          1583 Apr 10) (on          1645 Aug 28) "Hugo Grotius"
  , life (on          1583 Jul 22) (on          1654 Apr  5) "Jacob Trigland"
  , life (duringYear  1583       ) (duringYear  1652       ) "Thomas Adams"
  , life (duringMonth 1585 Oct   ) (on          1640 Oct 20) "John Ball"
  , life (on          1585 Oct 28) (on          1638 May 6 ) "Cornelius Jansen"
  , life (on          1585 Dec 4 ) (on          1652 Dec 23) "John Cotton"
  , life (on          1586 Jul 5 ) (on          1647 Jul 7 ) "Thomas Hooker"
  , life (on          1586 Dec 14) (on          1656 Mar 19) "Georg Calixtus"
  , life (duringYear  1588       ) (duringYear  1644       ) "Johannes Maccovius"
  , life (on          1589 Mar 3 ) (on          1676 Nov 1 ) "Gisbertus Voetius"
  , life (duringYear  1589       ) (duringYear  1629       ) "Johannes Wollebius"
  , life (on          1596 Mar 31) (on          1650 Feb 11) "Rene Descartes"
  , life (duringYear  1596       ) (on          1669 Apr 22) "Richard Mather"
  , life (duringMonth 1596 Sep   ) (on          1664 Jan 8 ) "Moses Amyraut"
  , life (duringYear  1600       ) (on          1646 Nov 13) "Jeremiah Burroughs"
  , life (duringYear  1600       ) (duringYear  1655       ) "Richard Vines"
  , life (duringYear  1600       ) (duringYear  1658       ) "Obadiah Sedgwick"
  , life (duringYear  1600       ) (on          1661 Mar 29) "Samuel Rutherford"
  , life (on          1600 Oct 5 ) (on          1679 Feb 23) "Thomas Goodwin"
  , life (duringYear  1602       ) (duringYear  1673       ) "Joseph Caryl"
  , life (duringYear  1603       ) (duringYear  1671       ) "Edward Leigh"
  , life (on          1603 Aug 9 ) (on          1669 Nov 4 ) "Johannes Cocceius"
  , life (duringYear  1604       ) (duringYear  1664       ) "Isaac Ambrose"
  , life (duringYear  1604       ) (on          1690 May 21) "John Eliot"
  , life (on          1608 Dec 9 ) (on          1674 Nov 8 ) "John Milton"
  , life (duringYear  1609       ) (duringYear  1675       ) "Francis Roberts"
  , life (on          1612 Apr 16) (on          1686 Feb 25) "Abraham Calovius"
  , life (duringYear  1613       ) (duringYear  1648       ) "George Gillespie"
  , life (on          1615 Nov 12) (on          1691 Dec 8 ) "Richard Baxter"
  , life (duringYear  1616       ) (on          1679 Oct 12) "William Gurnall"
  , life (duringYear  1616       ) (on          1683 Aug 24) "John Owen"
  , life (duringYear  1617       ) (duringYear  1675       ) "Patrick Gillespie"
  , life (duringYear  1618       ) (on          1651 Aug 22) "Christopher Love"
  , life (duringYear  1619       ) (duringYear  1698       ) "Matthew Barker"
  , life (duringYear  1620       ) (duringYear  1665       ) "William Guthrie"
  , life (duringYear  1620       ) (duringYear  1686       ) "Thomas Watson"
  , life (duringYear  1622       ) (duringYear  1658       ) "James Durham"
  , life (on          1623 Jun 19) (on          1662 Aug 19) "Blaise Pascal"
  , life (on          1623 Oct 17) (on          1687 Sep 28) "Francis Turretin"
  , life (duringYear  1624       ) (duringYear  1696       ) "Henry Erskine"
  , life (duringYear  1627       ) (duringYear  1673       ) "George Swinnock"
  , life (duringYear  1627       ) (duringYear  1691       ) "John Flavel"
  , life (on          1628 Jun 15) (duringMonth 1680 Aug   ) "Walter Marshall"
  , life (duringYear  1628       ) (duringYear  1680       ) "Stephen Charnock"
  , life (on          1628 Nov 30) (on          1688 Aug 31) "John Bunyan"
  , life (duringYear  1630       ) (duringYear  1705       ) "John Howe"
  , life (duringYear  1630       ) (on          1706 Feb 9 ) "Peter van Mastricht"
  , life (on          1631 Aug 24) (on          1696 Jun 24) "Philip Henry"
  , life (duringYear  1634       ) (on          1668 Nov 17) "Joseph Alleine"
  , life (on          1635 Jan 2 ) (on          1711 Oct 30) "Wilhelmus a Brakel"
  , life (on          1636 Feb 12) (on          1708 Oct 22) "Hermann Witsius"
  , life (duringYear  1637       ) (duringYear  1669       ) "Eleazar Mather"
  , life (on          1639 Jun 21) (on          1723 Aug 23) "Increase Mather"
  , life (on          1643 Sep 27) (on          1729 Feb 11) "Solomon Stoddard"
  , life (duringYear  1648       ) (on          1680 Jul 22) "Richard Cameron"
  , life (on          1662 Feb 15) (on          1688 Feb 17) "James Renwick"
  , life (on          1662 Oct 18) (on          1714 Jun 22) "Matthew Henry"
  , life (on          1663 Feb 12) (on          1728 Feb 13) "Cotton Mather"
  , life (on          1676 Mar 17) (on          1732 May 20) "Thomas Boston"
  , life (on          1680 Jun 22) (on          1754 Jun 2 ) "Ebenezer Erskine"
  , life (on          1685 Mar 18) (on          1752 Nov 6 ) "Ralph Erskine"
  , life (on          1697 Nov 23) (on          1771 Oct 14) "John Gill"
  , life (on          1703 Jun 28) (on          1791 Mar 2 ) "John Wesley"
  , life (on          1707 Dec 18) (on          1788 Mar 29) "Charles Wesley"
  , life (on          1703 Oct 5 ) (on          1758 Mar 22) "Jonathan Edwards"
  , life (duringYear  1706       ) (duringYear  1774       ) "Alexander Comrie"
  , life (on          1710 Apr 26) (on          1796 Oct 7 ) "Thomas Reid"
  , life (on          1711 May 7 ) (on          1776 Aug 25) "David Hume"
  , life (on          1714 Dec 27) (on          1770 Sep 30) "George Whitefield"
  , life (on          1718 Apr 20) (on          1747 Oct 9 ) "David Brainerd"
  , life (duringYear  1722       ) (on          1787 Jun 19) "John Brown of Haddington"
  , life (on          1723 Feb 5 ) (on          1794 Nov 15) "John Witherspoon"
  , life (on          1724 Apr 22) (on          1804 Feb 12) "Immanuel Kant"
  , life (on          1761 Aug 17) (on          1834 Jun 9 ) "William Carey"
  , life (on          1764 Feb 28) (on          1842 Dec 12) "Robert Haldane"
  , life (on          1768 Nov 21) (on          1834 Feb 12) "Friedrich Schleiermacher"
  , life (on          1770 Aug 27) (on          1831 Nov 14) "GWF Hegel"
  , life (on          1772 Apr 17) (on          1851 Oct 22) "Archibald Alexander"
  , life (duringYear  1780       ) (duringYear  1847       ) "Thomas Chalmers"
  , life (on          1792 Jun 21) (on          1860 Dec 2 ) "F.C. Baur"
  , life (on          1797 Dec 27) (on          1878 Jun 19) "Charles Hodge"
  , life (on          1802 Jul 26) (on          1880 Oct 22) "William Plumer"
  , life (on          1804 Apr 14) (on          1870 Apr 19) "James Buchanan"
  , life (on          1812 Dec 9 ) (on          1862 Aug 1 ) "James Thornwell"
  , life (on          1813 May 5 ) (on          1855 Nov 11) "Soren Kierkegaard"
  , life (on          1813 May 21) (on          1843 Mar 25) "Robert Murray M'Cheyne"
  , life (on          1814 Apr  8) (on          1889 Apr 14) "George Smeaton"
  , life (on          1816 May 10) (on          1900 Jun 10) "J.C. Ryle"
  , life (on          1820 Mar 5 ) (on          1898 Jan 3 ) "R.L. Dabney"
  , life (on          1820 Mar 30) (on          1879 Jul 25) "Heinrich Heppe" 
  , life (on          1822 Mar 25) (on          1889 Mar 20) "Albrecht Ritschl"
  , life (on          1823 Jul 18) (on          1886 Nov 12) "A.A. Hodge"
  , life (on          1832 May 21) (on          1905 Jun 3 ) "James Hudson Taylor"
  , life (on          1834 Jun 19) (on          1892 Jan 31) "Charles Spurgeon"
  , life (on          1835 Aug 15) (on          1913 Aug 24) "Edward McKendree Bounds"
  , life (on          1837 Oct 29) (on          1920 Nov 8 ) "Abraham Kuyper"
  , life (on          1844 May 17) (on          1918 Jan 7 ) "Julius Wellhausen"
  , life (on          1851 May 7 ) (on          1930 Jun 10) "Adolf von Harnack"
  , life (on          1851 Nov 5 ) (on          1921 Feb 16) "B.B. Warfield"
  , life (on          1854 Dec 13) (on          1921 Jul 29) "Herman Bavinck"
  , life (on          1862 Mar 14) (on          1949 Aug 13) "Geerhardus Vos"
  , life (on          1873 Oct 14) (on          1957 May 18) "Louis Berkhof"
  , life (on          1875 Jan 14) (on          1965 Sep 4 ) "Albert Schweitzer"
  , life (on          1914 Jun 11) (on          1995 Dec 17) "Hendrikus Berkhof"
  , life (on          1881 Jul 28) (on          1937 Jan 1 ) "J Gresham Machen"
  , life (on          1886 Apr 1 ) (on          1952 Jul 15) "Arthur Walkington Pink"
  , life (on          1886 May 10) (on          1968 Dec 10) "Karl Barth"
  , life (on          1894 Oct 7 ) (on          1977 Feb 12) "Herman Dooyeweerd"
  , life (on          1895 May 3 ) (on          1987 Apr 17) "Cornelius Van Til"
  , life (on          1898 Oct 14) (on          1975 May 8 ) "John Murray"
  , life (on          1898 Nov 29) (on          1963 Nov 22) "C.S. Lewis"
  , life (on          1899 Dec 20) (on          1981 Mar 1 ) "D. Martyn Lloyd-Jones"
  , life (on          1902 Jan 16) (on          1945 Feb 21) "Eric Liddell"
  , life (duringYear  1903       ) (duringYear  1983       ) "J.G. Vos"
  , life (on          1903 Jun 8 ) (on          1996 Jan 26) "G.C. Berkouwer"
  , life (on          1904 Mar 5 ) (on          1984 Mar 30) "Karl Rahner"
  , life (on          1907 Jun 18) (on          1994 Nov 27) "Leonard Ravenhill"
  , life (on          1907 Nov 29) (on          1968 Feb 14) "Edward J. Young"
  , life (on          1909 Feb 13) (on          2007 Mar 8 ) "Herman Ridderbos"
  , life (on          1912 Jan 30) (on          1984 May 15) "Francis Schaeffer"
  , life (on          1914 Nov 22) (on          1996 Mar 24) "John Gerstner"
  , life (on          1922 Dec 15) (on          2007 Apr 14) "Meredith Kline"
  , life (duringYear  1926       ) (current                ) "J.I. Packer"
  , life (on          1929 Jan 30) (current                ) "Jay Adams"
  , life (on          1930 Aug 30) (current                ) "Bruce Waltke"
  , life (on          1932 Jan 21) (current                ) "Nicholas Wolterstorff"
  , life (on          1932 Nov 15) (current                ) "Alvin Plantinga"
  , life (on          1939 Feb 13) (current                ) "R.C. Sproul"
  , life (on          1939 Jun 19) (current                ) "John MacArthur"
  , life (on          1946 Feb 14) (current                ) "Cornelius Plantinga, Jr."
  , life (duringYear  1952       ) (current                ) "Joel Beeke"
  , life (on          1952 Sep 8 ) (current                ) "Tremper Longman III"
  , life (duringYear  1961       ) (current                ) "Paul Washer"
  ]

