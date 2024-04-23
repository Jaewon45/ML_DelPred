library(comorbidity)
`%notin%` <- Negate(`%in%`)

# Read in diagnosis table
diagnosis = read.csv('Z:\\MK klin EEG Projekte\\JULIAN\\Projects\\Machine Learning\\Early Detection\\eICU_Paper_Code - Modified\\eicu\\diagnosis.csv')

# Read in patients and select codes
pids = read.csv("C:\\Users\\Mitarbeiter\\Downloads\\complete_patientstayid_label_list.csv")
colnames(pids)[colnames(pids) == "PatientStayID"] <-"patientunitstayid"
pids = pids['patientunitstayid']
relevant_diagnosis = merge(diagnosis, pids, by='patientunitstayid')
relevant_diagnosis = relevant_diagnosis[, c('patientunitstayid', 'icd9code')]
# Split codes into ICD9 and ICD10
relevant_diagnosis$icd9 <- sapply(strsplit(as.character(relevant_diagnosis$icd9code), ","), function(x) x[1])
icd9_codes <- relevant_diagnosis[, c('patientunitstayid', 'icd9')]

# Filter out rows with empty icd9 values
icd9_codes <- icd9_codes[icd9_codes$icd9 != "", ]

# Drop rows with NA values
icd9_codes <- na.omit(icd9_codes)
icd9_codes <- icd9_codes[order(icd9_codes$patientunitstayid), ]
elixhauser_icd9 <- comorbidity(x = icd9_codes, id = "patientunitstayid", code = "icd9", map = "elixhauser_icd9_quan", assign0 = FALSE)

# Save to csv
write.csv(elixhauser_icd9, 'C:\\Users\\Mitarbeiter\\Downloads\\complete_24hr_comorbidity.csv')

