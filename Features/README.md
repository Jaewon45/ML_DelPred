The codes in this folder generate the features that comprise the feature space for the predictive model.

The `Feature Extraction.ipynb` notebook integrates some of the feature extraction codes from the reference model, with modifications tailored to our project's aim: predicting the onset of delirium upon admission to the ICU and in earlier stages of the stay (up to 24 hours so far).

The following data files are utilized for extracting features related to patient history records and ICD9 classification: 'HistoryFeatureList.csv', 'HistoryListNames.csv', 'ICD9_codes_exact.csv', and 'ICD9_codes_rounded.csv'.

'featurelist_static.csv' and 'featurelist_dynamic.csv' contain lists of features to be generated when running the feature extraction notebook. The first model, referred to as the `Static model`, incorporates information collected upon admission to the ICU. The second model, termed the `Dynamic Model`, includes information collected within the first 24 hours of ICU stay. 
The second model is termed 'dynamic' because it is expected the flexibility for extension and improvement, particularly concerning the timepoint that distinguishes when data should be collected before and when tests/diagnoses should be conducted after.

For comorbidity and medication features, I kept the separate folders. The comorbidity features extraction code utilizes the 'comorbidity' package in R, although you can explore the equivalent Python package available at 'https://pypi.org/project/comorbidipy/'. Medication features rely on separate files for the drug list and treatment lists. More specific instructions for handling medications are provided in the README file within the corresponding folder.