

(defun print-out ()
  (interactive)
  (setq titles "company,product,approvedone,approvedtwo,killdays,boxweight,code,colour,slaughtersite,numtoprint")
  (setq list-of-info-from-hash-value (return-hash-value-as-list))
  ;(setq list-plus-titles (concat titles "\n" list-of-info-from-hash-value))
  ;(setq slaughter-site-selected (slaughter-site-select))
  ;(setq numberoflabelstoprint (number-of-labels-to-print))
  ;(setq output-string(message "%s,%s,%s" rawinfo slaughter-site-selected numberoflabelstoprint))
  ;(write-region output-string nil "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/Testing/outputfromemacs.txt")
					;(start-process-shell-command "" nil "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/Testing/testbatch.btbat")
  )

;(nth 2 (nth 1 (gethash "DICED CHICKEN THIGH 20MM" tamar-hash)))


(print-out)




