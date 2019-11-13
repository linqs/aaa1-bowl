for j in Ranking Discrete; do for i in 0 1 2 3 4 5 6 7 ; do echo "---------------Runnning : $i------------------"; ./bowlOS_learn.sh Epinions.psl Epinions-learn-${i}.data ${j}; cp Epinions-learned.psl Epinions-learned-bowlOS-${i}-${j}.psl; ./inference.sh Epinions-learned-bowlOS-${i}-${j}.psl Epinions-eval-${i}.data ${j} bowlOS;done ; done

for j in Categorical Discrete; do for i in 0 1 2 3 4 5 6 7 ; do echo "---------------Runnning : $i------------------"; ./bowlOS_learn.sh Citeseer.psl Citeseer-learn-${i}.data ${j}; cp Citeseer-learned.psl Citeseer-learned-bowlOS-${i}-${j}.psl; ./inference.sh Citeseer-learned-bowlOS-${i}-${j}.psl Citeseer-eval-${i}.data ${j} bowlOS;done ; done

for j in Categorical Discrete; do for i in 0 1 2 3 4 5 6 7 ; do echo "---------------Runnning : $i------------------"; ./bowlOS_learn.sh Cora.psl Cora-learn-${i}.data ${j}; cp Cora-learned.psl Cora-learned-bowlOS-${i}-${j}.psl; ./inference.sh Cora-learned-bowlOS-${i}-${j}.psl Cora-eval-${i}.data ${j} bowlOS;done ; done

for j in Continuous Ranking; do for i in 0 1 2 3 4 ; do echo "---------------Runnning : $i------------------"; ./bowlOS_learn.sh LastFM.psl LastFM-learn-${i}.data ${j}; cp LastFM-learned.psl LastFM-learned-bowlOS-${i}-${j}.psl; ./inference.sh LastFM-learned-bowlOS-${i}-${j}.psl LastFM-eval-${i}.data ${j} bowlOS;done ; done

for j in Continuous Ranking; do for i in 0 1 2 3 4 5 6 7 ; do echo "---------------Runnning : $i------------------"; ./bowlOS_learn.sh Jester.psl Jester-learn-${i}.data ${j}; cp Jester-learned.psl Jester-learned-bowlOS-${i}-${j}.psl; ./inference.sh Jester-learned-bowlOS-${i}-${j}.psl Jester-eval-${i}.data ${j} bowlOS;done ; done

