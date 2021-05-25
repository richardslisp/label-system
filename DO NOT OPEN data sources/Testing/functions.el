(defun company-select ()
  (interactive)
  (setq companychoice (message "%s"
	   (ido-completing-read "Which Company? "
				'("ADDO POOLE BAKERY" "BAKKAVOR MEALS LONDON ELVEDEN" "BENSON PARK" "CRANSWICK GOURMET PASTRY" "FARMERS BOY" "GINSTERS" "KERRY NOON" "KERRY SPURWAY" "KETTLEBY FOODS" "PETERS" "ROWAN" "SALADWORKS" "TAMAR" "WALKERS MIDSHIRE")))))

(defun slaughter-site-select ()
  (interactive)
  (setq returns (ido-completing-read "Which Slaughter Site?" '("UK (NI) 9502" "GB 3005" "GB 3011" "GB 4014" "GB 8016" "GB 3007 / 4014 / 8016"))))



(defun number-of-labels-to-print (orderweight bagweight)
  (interactive)
  (setq total-labels (floor (/ (+ orderweight (* 0.5 bagweight)) bagweight)))
  (message "Total Labels = %s" total-labels))

;(number-of-labels-to-print 802 5)

(defun number-of-labels-to-print-including-production (x)
  (interactive)
  (setq total-labels-incl-production (+ x 1))
  (message "Total Labels = %s" total-labels-incl-production))

;(setq num-of-labels-no-production (number-of-labels-to-print 154 10))
;(setq num-of-labels-no-production (+ (string-to-number(num-of-labels-no-production 1))))

(defun hash-select (x)
  (interactive)
  (setq correct-hash-table
	(cond
	 ((equal x "TAMAR") tamar-hash)
	 ((equal x "SALADWORKS") saladworks-hash)
	 )))

(defun return-hash-value-as-list ()
  (interactive)
  (setq company (company-select)) ;TAMAR
  (setq correct-hash (hash-select company))
  (setq selection (ido-completing-read "Which Product? "
				       (hash-table-keys (hash-select company))))
  (message "%s" (gethash selection correct-hash )))

       
(defun alt-num-labels-to-print ()
  (interactive)
  (message "%s" (read-number "how many labels to print? " )))

(defun todays-date-correctly-formatted ()
  (interactive)
  (setq return (upcase(format-time-string "%d %b %y"))))


(defun other-time-function ()
  (interactive)
  (decode-time(org-time-string-to-time(org-read-date nil nil (message "%s"
								      (message "%s" (concat "+" (message "%s"(read-number "How many days into the future?")))))))))


(defun basic-time-string ()
  (interactive)
  (setq return (decode-time(org-time-string-to-time (org-read-date)))))


(defun month-converter (x)
  (interactive)
  (setq inputmonth (message "%s" x))
  (cond
   ((equal inputmonth "1") (setq month "JAN"))
   ((equal inputmonth "2") (setq month "FEB"))
   ((equal inputmonth "3") (setq month "MAR"))
   ((equal inputmonth "4") (setq month "APR"))
   ((equal inputmonth "5") (setq month "MAY"))
   ((equal inputmonth "6") (setq month "JUN"))
   ((equal inputmonth "7") (setq month "JUL"))
   ((equal inputmonth "8") (setq month "AUG"))
   ((equal inputmonth "9") (setq month "SEP"))
   ((equal inputmonth "10") (setq month "OCT"))
   ((equal inputmonth "11") (setq month "NOV"))
   ((equal inputmonth "12") (setq month "DEC"))))


(defun year-converter (x)
  (interactive)
  (setq inputyear (message "%s" x))
  (cond
   ((equal inputyear "2021") (setq year "21"))
   ((equal inputyear "2022") (setq year "22"))
   ((equal inputyear "2023") (setq year "23"))
   ((equal inputyear "2024") (setq year "24"))))


(defun new-time-function ()
  (interactive)
  (setq baselist (basic-time-string))
  ;;; DAY ;;;
  (setq day (message "%s" (nth 3 baselist)))
  (if (= (length day) 1) (setq day (concat "0" (message "%s" (nth 3 baselist)))) (setq day (message "%s" (nth 3 baselist))))
  ;;; MONTHS ;;;
  (setq month (month-converter (nth 4 baselist)))
  ;;; YEAR ;;;
  (setq year (year-converter (nth 5 baselist)))
  ;;; FINAL ;;;
  (setq string-return (cons baselist (message "%s %s %s" day month year)
  )

(new-time-function)

