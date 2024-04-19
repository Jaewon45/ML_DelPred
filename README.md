# The instructions to create the predictive model

This model takes patient information and electronic health records collected either upon admission to the ICU or up to the first 24 hours of ICU stay, processing them to predict (classify) delirium onset at any subsequent point. 

To run this code, modifications to the filepaths directing to data CSVs from eICU and the filenames generated from the notebooks are required. The code is mainly written in Python but some are in R - comorbidity feature.

To begin:

1. Create the identifier list of interest, i.e., all patients that had any delirium testing/diagnoses. You can find the necessary code in the Create_patientid_label_offset.ipynb notebook located in the `Dataset` folder. Save the results as a CSV file.
2. Proceed to create the feature space using the code provided in the `Features` folder.
3. Generate the final dataframe for classification using the code available in the `Dataset` folder, specifically in the generate_final_dataframe.ipynb notebook.
4. Run the classification code provided in the `Modelling` folder.

More specific instructions for each phase are in the READMEs of each folder. 


# Repository Information

This repository, created by Jaewon Shin, has referenced a study cited below:

Gong, K. D., Lu, R., Bergamaschi, T. S., Sanyal, A., Guo, J., Kim, H. B., ... & Stevens, R. D. (2023). Predicting intensive care delirium with machine learning: Model development and external validation. Anesthesiology, 138(3), 299-311.

In particular, the codes for the 'First 24 Hour model' are archived in the GitHub repository: https://github.com/ryanlu41/delirium/tree/master/First%2024%20Hour. The Python notebooks (.ipynb) in this repository either utilize the codes from the reference files (.py) or have modified/revised several files to predict delirium cases from the same dataset, albeit with slightly different aims and thresholds/conditions.

We extend our sincere appreciation to the cited researchers for their invaluable contributions, which have inspired our ongoing efforts to explore predictive models for enhanced patient care.

Below are the readme/license documentation from the reference repository.

#### ======== Original Readme ========

# delirium

This repository created by Ryan Lu, Kirby Gong, Teya Bergamaschi, Akaash Sanyal, Joanna Guo, Ike Zhang, and Han Kim, with clinical guidance from Dr. Robert Stevens, and engineering guidance from Hieu Nguyen, Joseph Greenstein, and Raimond Winslow. 
If you are not one of the original authors, and use any of this code for any purpose, including publication or commercialization, we require that you cite us. 

This repository contains code that was used to create our delirium predictive models. 

#### ======== Original License ========

Copyright (c) 2021 Johns Hopkins University, Robert Stevens, Kirby Gong, Ryan Lu, Teya Bergamaschi, Akaash Sanyal, Joanna Guo, Han Kim


Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.