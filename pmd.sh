echo "------Citeseer-------"
echo "*F1*"
grep -o "F1: ......." run_eval_${1}_Citeseer-eval-*.data_Discrete.out|grep -o "F1: ......."|sed "s/F1: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "*Accuracy*"
grep -o "Accuracy: ......." run_eval_${1}_Citeseer-eval-*.data_Categorical.out|grep -o "Accuracy: ......."|sed "s/Accuracy: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "------Cora-------"
echo "*F1*"
grep -o "F1: ......." run_eval_${1}_Cora-eval-*.data_Discrete.out|grep -o "F1: ......."|sed "s/F1: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "*Accuracy*"
grep -o "Accuracy: ......." run_eval_${1}_Cora-eval-*.data_Categorical.out|grep -o "Accuracy: ......."|sed "s/Accuracy: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "------Epinions-------"
echo "*F1*"
grep -o "F1: ......." run_eval_${1}_Epinions-eval-*.data_Discrete.out|grep -o "F1: ......."|sed "s/F1: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "*AUROC*"
grep -o "AUROC: ......." run_eval_${1}_Epinions-eval-*.data_Ranking.out|grep -o "AUROC: ......."|sed "s/AUROC: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "------LastFM-------"
echo "*MSE*"
grep -o "MSE: ......." run_eval_${1}_LastFM-eval-*.data_Continuous.out|grep -o "MSE: ......."|sed "s/MSE: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "*AUROC*"
grep -o "AUROC: ......." run_eval_${1}_LastFM-eval-*.data_Ranking.out|grep -o "AUROC: ......."|sed "s/AUROC: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "------Jester-------"
echo "*MSE*"
grep -o "MSE: ......." run_eval_${1}_Jester-eval-*.data_Continuous.out|grep -o "MSE: ......."|sed "s/MSE: //g"|tr "\n" ",">a ; python print_mean_std.py a
echo "*AUROC*"
grep -o "AUROC: ......." run_eval_${1}_Jester-eval-*.data_Ranking.out|grep -o "AUROC: ......."|sed "s/AUROC: //g"|tr "\n" ",">a ; python print_mean_std.py a
rm a
