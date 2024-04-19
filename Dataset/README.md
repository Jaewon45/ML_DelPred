There are two scripts here:

1. `Create_patientid_label_offset.ipynb` generates a list of all patient stays we might ever use, based on if they had CAM-ICU, ICDSC, or any diagnosis of delirium. The feature generation scripts use the resulting dataframe has 3 columns, 
    (1) patientunitstayid : used as unique identifier of each row
    (2) Class : binary label value whether delirium-positive or not
    (3) final_offset : the offset of the earliest positive delirium test or the latest negative delirium test for the patient with no positive test

2. `generate_final_dataframe.ipynb` generates the final dataframe for classification, integrating all the features extracted/prepared from the raw dataset.
