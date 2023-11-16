source /workspace/jiangtao16/conda3/bin/activate
conda activate xuemin_lang

TOKENIZERS_PARALLELISM=false
python init_database.py --recreate-vs
python server/api.py

