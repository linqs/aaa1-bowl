for dataset in LastFM 
do
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Continuous LCB
    cp ${dataset}-learned.psl LCB_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Continuous UCB
    cp ${dataset}-learned.psl UCB_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Continuous TS
    cp ${dataset}-learned.psl TS_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Continuous PI
    cp ${dataset}-learned.psl PI_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Continuous EI
    cp ${dataset}-learned.psl EI_${dataset}.psl
done
'''
for dataset in Epinions Cora Citeseer
do
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Discrete LCB
    cp ${dataset}-learned.psl LCB_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Discrete UCB
    cp ${dataset}-learned.psl UCB_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Discrete TS
    cp ${dataset}-learned.psl TS_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Discrete PI
    cp ${dataset}-learned.psl PI_${dataset}.psl
    ./bowlSS_new.sh ${dataset}.psl ${dataset}-learn-0.data Discrete EI
    cp ${dataset}-learned.psl EI_${dataset}.psl
done
'''
