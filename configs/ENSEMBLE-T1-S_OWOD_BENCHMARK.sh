#!/usr/bin/env bash

echo running training of prob-detr, S-OWODB dataset

set -x

EXP_DIR=exps/SOWODB/PROB_V1
PY_ARGS=${@:1}
WANDB_NAME=PROB_OWDETR_V1

python -u main_open_world.py \
    --output_dir "${EXP_DIR}/t1" --dataset OWDETR --PREV_INTRODUCED_CLS 0 --CUR_INTRODUCED_CLS 19\
    --train_set 'owdetr_t1_train' --test_set 'owdetr_test' --epochs 41 --lr_drop 31\
    --model_type 'prob' --obj_loss_coef 1e-3 --obj_temp 1.3\
    --wandb_name "${WANDB_NAME}_t1" --exemplar_replay_selection --exemplar_replay_max_length 850\
    --exemplar_replay_dir ${WANDB_NAME} --exemplar_replay_cur_file "learned_owdetr_t1_ft.txt" --training_seed 24\
    ${PY_ARGS}
    

PY_ARGS=${@:1}
python -u main_open_world.py \
    --output_dir "${EXP_DIR}/t1" --dataset OWDETR --PREV_INTRODUCED_CLS 0 --CUR_INTRODUCED_CLS 19\
    --train_set 'owdetr_t1_train' --test_set 'owdetr_test' --epochs 41 --lr_drop 31\
    --model_type 'prob' --obj_loss_coef 1e-3 --obj_temp 1.3\
    --wandb_name "${WANDB_NAME}_t1" --exemplar_replay_selection --exemplar_replay_max_length 850\
    --exemplar_replay_dir ${WANDB_NAME} --exemplar_replay_cur_file "learned_owdetr_t1_ft.txt" --training_seed 25\
    ${PY_ARGS}
    

PY_ARGS=${@:1}
python -u main_open_world.py \
    --output_dir "${EXP_DIR}/t1" --dataset OWDETR --PREV_INTRODUCED_CLS 0 --CUR_INTRODUCED_CLS 19\
    --train_set 'owdetr_t1_train' --test_set 'owdetr_test' --epochs 41 --lr_drop 31\
    --model_type 'prob' --obj_loss_coef 1e-3 --obj_temp 1.3\
    --wandb_name "${WANDB_NAME}_t1" --exemplar_replay_selection --exemplar_replay_max_length 850\
    --exemplar_replay_dir ${WANDB_NAME} --exemplar_replay_cur_file "learned_owdetr_t1_ft.txt" --training_seed 26\
    ${PY_ARGS}