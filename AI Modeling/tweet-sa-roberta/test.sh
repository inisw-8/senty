# test.sh
pip install transformers
pip install wandb


# 💙 3가지를 수정해 주시면 정상적으로 돌아가요! 💙



# 1. 허깅페이스 로그인 토큰
# 환경변수 HF_TOKEN을 설정해주세요
huggingface-cli login --token $HF_TOKEN



# 2. wandb 로그인 토큰
# 환경변수 WANDB_TOKEN을 설정해주세요
wandb login --relogin $WANDB_TOKEN




# 3. 요기 아래에 --entity_name 에 이름을 wandb 아이디로 해주셔야 합니다.!!
python main.py \
    --drive \
    --data 'result_all' \
    --batch_size 256 \
    --optimizer 'sgd' \
    --learning_rate 5.999e-5 \
    --epochs 30 \
    --run_name 'inisw08-twitter-sentiment-analysis-roberta_ep30_bs256_all' \
    --project_name 'inisw08-twitter-sentiment-analysis-roberta' \
    --entity_name 'inisw08' \
    --model_fold_name 'inisw08-twitter-sentiment-analysis-roberta' \
    --test \
    --test_data 'test_final' \
    --test_model_name 'cardiffnlp/twitter-roberta-base-sentiment' \
    --project_test_name 'which-SA-model-is-test'
    
