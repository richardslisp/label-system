(defun dolav-labels ()
  (interactive)
  (setq theoutputfile "C:/Documents and Settings/S12Despatch.SML/Desktop/dolavs.btbat")
  (write-region
   (format "<?xml version=\"1.0\"?> <XMLScript Version=\"2.0\"> <Command> <Print> <Format CloseAtEndOfJob=\"true\" SaveAtEndOfJob=\"false\">P:/BARTENDER LABELS/BARTENDER LABELS/Primary Prep/CATEGORY 3.btw</Format> <PrintSetup> <IdenticalCopiesOfLabel>10</IdenticalCopiesOfLabel> </PrintSetup> </Print> </Command> </XMLScript>")
    nil
    theoutputfile)
  (async-shell-command "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/dolavs.btbat"))

(defun input-slice-dice-daily-code ()
  (interactive)
  (setq slicedicetextfile "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/SLICEDICECODE.txt")
	(write-region (read-string "Enter Slice/Dice Code for Today!") nil slicedicetextfile)
	(message "Slice Dice Code copied to text file")
	)

(defun morning ()
  (interactive)
  (input-slice-dice-daily-code)
  (dolav-labels)
  )

(defun pick-company ()
  "Prompt user to pick a choice from a list."
  (interactive)
  (let ((choices '("Addo Poole Bakery" "Bakkavor Meals London Elveden" "Cranswick Gourmey Pastry")))
    (message "%s" (ido-completing-read "Open bookmark:" choices ))))

(defalias bleh '(pick-company))


(defun new-test-fresh-label ()
  (interactive)
  ;Files
  (setq companynamefile "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/test.txt")
  (setq companychoice (message "%s"
	   (ido-completing-read "Which Company?"
				'("Addo Poole Bakery" "Bakkavor Caledonian" "Bakkavor Meals London Elveden"))))			
  (setq batchfile "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/testbatch.btbat")
  (setq originalbartenderfile "C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/autotest.btw")
(setq number-of-labels-to-print (read-number "How many labels do you want to print?"))
  (write-region (format "%s" companychoice) nil companynamefile)
  (write-region
   (format
"<?xml version=\"1.0\"?>
 <XMLScript Version=\"2.0\">
<Command Name = \"Job2\" >
<Print>
<Format CloseAtEndOfJob = \"true\" >
\"C:/Documents and Settings/S12Despatch.SML/Desktop/NEW LABEL SYSTEM/DO NOT OPEN data sources/autotest.btw\"
</Format>
<PrintSetup>
<NamedSubStringName=\"Example\"><Value>Example Version</Value></NamedSubString>
<IdenticalCopiesOfLabel>%d</IdenticalCopiesOfLabel>
</PrintSetup>
</Print>
</Command>
</XMLScript>"
   nil batchfile)
  (async-shell-command batchfile))

