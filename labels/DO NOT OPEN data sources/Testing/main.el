(load-file "functions.el")

(defun print-out ()
  (interactive)
  (setq titles "company,product,approvedone,approvedtwo,killdays,code,colour,slaughtersite,numtoprint")
  (setq list-of-info-from-hash-value (return-hash-value-as-list))
  (setq slaughter-site-selected (slaughter-site-select))
  (setq numberoflabelstoprint (alt-num-labels-to-print))
  (setq rawinfo (concat titles "\n" list-of-info-from-hash-value "," slaughter-site-selected "," numberoflabelstoprint))
  (setq output-string rawinfo)
  (write-region output-string nil "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/Testing/outputfromemacs.txt")
  (start-process-shell-command "" nil "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/Testing/testbatch.btbat")
  )

(print-out)


