module Language.VintageBasic.Printer_test where

import Test.HUnit
import Language.VintageBasic.Printer

floatTest (x, s) = TestCase $ assertEqual "" s (printFloat x)

test_printFloat = TestList $ map floatTest [
    (       -1.337e-20,   "-1.337E-20"   ),
    (       -1,           "-1"           ),
    (        0,           " 0"           ),
    (        0.00000001,  " .00000001"   ),
    (        0.000000001, " 1.E-9"       ),
    (        0.011111111, " 1.1111111E-2"),
    (        1,           " 1"           ),
    (        1.1,         " 1.1"         ),
    (        1.1111111,   " 1.111111"    ),
    (       pi,           " 3.1415927"   ),
    (        9,           " 9"           ),
    (        1e2,         " 100"         ),
    (     1111.1111,      " 1111.1111"   ),
    ( 16777215,           " 16777215"    ),
    ( 55555555,           " 55555556"    ),
    (100000000,           " 1.E+8"       ),
    (444444444,           " 4.4444445E+8"),
    (555555555,           " 5.555556E+8" )
  ]
