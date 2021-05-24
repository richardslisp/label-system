(defun company-select ()
  (interactive)
  (setq companychoice (message "%s"
	   (ido-completing-read "Which Company? "
				'("ADDO POOLE BAKERY" "BAKKAVOR MEALS LONDON ELVEDEN" "BENSON PARK" "CRANSWICK GOURMET PASTRY" "FARMERS BOY" "GINSTERS" "KERRY NOON" "KERRY SPURWAY" "KETTLEBY FOODS" "PETERS" "ROWAN" "SALADWORKS" "TAMAR" "WALKERS MIDSHIRE")))))

(defun slaughter-site-select ()
  (interactive)
  (message "%s" (ido-completing-read "Which Slaughter Site?" '("UK (NI) 9502" "GB 3005" "GB 3011" "GB 4014" "GB 8016" "GB 3007 / 4014 / 8016"))))

(defun number-of-labels-to-print (orderweight bagweight)
  (interactive)
  (setq total-labels (floor (/ (+ orderweight (* 0.5 bagweight)) bagweight)))
  (message "Total Labels = %s" total-labels))

;(number-of-labels-to-print 802 5)

(defun number-of-labels-to-print-including-production (x)
  (interactive)
  (setq total-labels-incl-production (+ x 1))
  (message "Total Labels = %s" total-labels-incl-production))

(setq num-of-labels-no-production (number-of-labels-to-print 154 10))
(setq num-of-labels-no-production (+ (string-to-number(num-of-labels-no-production 1))))

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
