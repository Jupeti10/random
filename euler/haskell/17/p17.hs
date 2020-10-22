main = print toThousand

oneToNine = length "onetwothreefourfivesixseveneigthnine"
tenToNineTeen = length "teneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen"
twentyToNinety = length "twentythirtyfourtyfiftysixtyseventyeightyninety"
hundred = length "hundred"
thousand = length "onethousand"
andd = length "and"

upToHundred = oneToNine*9 + tenToNineTeen + twentyToNinety*10
hundreds = oneToNine + hundred*9
untilThousand = hundreds + upToHundred * 10 + oneToNine * 99 + (hundred + andd) * 9 * 99
toThousand = untilThousand + thousand
