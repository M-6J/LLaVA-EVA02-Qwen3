#!/bin/bash

python -m llava.eval.model_vqa_science \
    --model-path ./checkpoints/llava-evaclip2-qwen3-8b \
    --question-file ./playground/data/eval/scienceqa/llava_test_CQM-A.json \
    --image-folder ./playground/data/eval/scienceqa/images/test \
    --answers-file ./playground/data/eval/scienceqa/answers/llava-eva02-qwen3.jsonl \
    --single-pred-prompt \
    --temperature 0 \
    --conv-mode qwen_3

python llava/eval/eval_science_qa.py \
    --base-dir ./playground/data/eval/scienceqa \
    --result-file ./playground/data/eval/scienceqa/answers/llava-eva02-qwen3.jsonl \
    --output-file ./playground/data/eval/scienceqa/answers/llava-eva02-qwen3_output.jsonl \
    --output-result ./playground/data/eval/scienceqa/answers/llava-eva02-qwen3_result.json
