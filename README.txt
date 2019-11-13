This folder contains all the code, model and data required to run all experiments.

File explanation:
*.psl: PSL model files. e.g. Citeseer.psl, Cora.psl, ...
*.data: data file required to run PSL. e.g. Citeseer-learn-0.data, Citeseer-eval-0.data,...
data/: folder containing all data. 
    Compilation of datasets from :
        https://github.com/stephenbach/bach-uai13-code/tree/0079c8f02d3aca58521946699afcfd6bfc1d00c6/data, and 
        https://github.com/pkouki/recsys2015
psl_code.zip: Contains PSL code found in http://psl.linqs.org/ .
psl-cli-2.2.0-SNAPSHOT.jar: Jar file compiled using the code in psl_code.zip


Running experiments:
BOWLSS learning:
To perform learning using BOWLSS one may run the following command:
./bowlSS_learn.sh Citeseer.psl Citeseer-learn-0.data Discrete

The above command will run BOWLSS and learn weights for rules in Citeseer.psl using Citeseer-learn-0.data and optimize over F1 score
Metric values that are feasible.
    Discrete : F1
    Cointinuous: MSE
    Categorical: Accuracy (Applicable only for Citeseer and Cora)
    Ranking: AUROC

Note that the fold number has to be changed to run learning on different fold data.

OUTPUT: the above mentioned command will generate inferred-predicates, bowlSS_learn.log, and Citeseer-learned.psl

TO learn using other approaches similarly replace the .sh file:
    BOWLOS: ./bowlOS_learn.sh
    MLE: ./MLE.sh
    MPLE: ./MPLE.sh

Evaluation :
./inference.sh Citeseer-learned.psl Citeseer-eval-0.data Discrete

Will run evaluation on Citeseer-eval-0.data and produce run_eval.out which will contain the F1 metric. 
