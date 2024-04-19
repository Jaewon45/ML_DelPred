The code in this file was used to determine what medications patients received. It searches across the medication, infusiondrug, and treatment tables.

Steps:
1. Put together lists of drug names to search for in medication/infusion drug, and treatment strings to search. They are used for the parameter (DrugNameLists * TreatmentStrings) in the subsequent notebooks and were constructed from online websites.
2. Run `Create HICL Drug Name Legend.ipynb`, which creates a legend to convert drug names to HICL codes or vice versa.
3. Run `24hrAllDrugFeatures.ipynb`, which calls the function 'FirstdayDrugFeature' that determines what medications patients received in their first 24 hours then generates a csv of all the medication features. Additionally the notebook generates the feature 'Anticholinergics' for the first (static) model since we regarded it as a primary predictive variable for delirium.