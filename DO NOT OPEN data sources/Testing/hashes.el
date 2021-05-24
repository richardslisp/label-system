;CompanyName (on label), product name,approved line 1, approved line 2,killdaysplus,netweight,code,preferredcolour

(setq tamar-hash
      #s(hash-table
	 test equal
	 data (
	       "DICED CHICKEN INNERS 20MM M&S" "TAMAR,DICED CHICKEN BREAST 20MM,RM01077 M&S,UK RED TRACTOR NO ALLERGENS,7,20,C09IF1X20FKST,green"
	       "C08IF1X20FKST" "TAMAR,DICED CHICKEN BREAST 20MM,rm02548 HWF  WR,UK RED TRACTOR NO ALLERGENS,7,20,C08IF1X20FKST,orange"
	       "DICED CHICKEN THIGH 20MM HWF" "TAMAR,DICED CHICKEN THIGH 20MM,rm02198 HWF  WR,UK RED TRACTOR NO ALLERGENS,7,20,C08TM1X20FKST,blue")))

(setq saladworks-hash #s(hash-table
         test equal
         data ("CHICKEN BREAST 11-18G" "SALADWORKS,CHICKEN BREAST 11-18G,RIM463    123139,m&s   UK RED TRACTOR,7,20,C07bf1x20fkss,blue"
	       "CHICKEN DICED INNER 15MM" "SALADWORKS,CHICKEN DICED INNER 15MM,PU3336005 RIM428,UK    RTA,7,20,c03if1x20fkss,orange"
	       )))



 


