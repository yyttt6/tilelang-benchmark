#!/bin/bash
export HIP_VISIBLE_DEVICES=0

shapes=(
    # "1 512 7 7 2048 1 1 1 0"
    # "1 512 14 14 512 3 2 1 1"
    # "1 1024 14 14 512 1 1 1 0"
    # "1 256 14 14 1024 1 1 1 0"
    # "1 256 28 28 256 3 2 1 1"
    # "1 512 28 28 256 1 1 1 0"
    # "1 128 28 28 512 1 1 1 0"
    # "1 256 56 56 128 1 1 1 0"
    # "1 64 56 56 256 1 1 1 0"
    # "1 64 56 56 64 3 1 1 1"
    # "1 64 56 56 64 1 1 1 0"
    # "1 256 56 56 64 1 1 1 0"
    # "1 256 56 56 512 1 2 1 0"
    # "1 128 28 28 128 3 1 1 1"
    # "1 512 28 28 128 1 1 1 0"
    # "1 512 28 28 1024 1 2 1 0"
    # "1 256 14 14 256 3 1 1 1"
    # "1 1024 14 14 256 1 1 1 0"
    # "1 1024 14 14 2048 1 2 1 0"
    # "1 512 7 7 512 3 1 1 1"
    # "1 2048 7 7 512 1 1 1 0"
    # "1 128 56 56 128 3 2 1 1"
    # "1 3 224 224 64 7 2 1 3"
    
    "32 3 224 224 64 7 2 1 3"
    # "64 3 224 224 64 7 2 1 3"
    
    # "128 512 7 7 2048 1 1 1 0"
    # "128 512 14 14 512 3 2 1 1"
    # "128 1024 14 14 512 1 1 1 0"
    # "128 256 14 14 1024 1 1 1 0"
    # "128 256 28 28 256 3 2 1 1"
    # "128 512 28 28 256 1 1 1 0"
    # "128 128 28 28 512 1 1 1 0"
    # "128 256 56 56 128 1 1 1 0"
    # "128 64 56 56 256 1 1 1 0"
    # "128 64 56 56 64 3 1 1 1"
    # "128 64 56 56 64 1 1 1 0"
    # "128 256 56 56 64 1 1 1 0"
    # "128 256 56 56 512 1 2 1 0"
    # "128 128 28 28 128 3 1 1 1"
    # "128 512 28 28 128 1 1 1 0"
    # "128 512 28 28 1024 1 2 1 0"
    # "128 256 14 14 256 3 1 1 1"
    # "128 1024 14 14 256 1 1 1 0"
    # "128 1024 14 14 2048 1 2 1 0"
    # "128 512 7 7 512 3 1 1 1"
    # "128 2048 7 7 512 1 1 1 0"
    # "128 128 56 56 128 3 2 1 1"
    # "128 3 224 224 64 7 2 1 3"

    # "1	3	224	224	64	3	1	1	1"
    # "1	64	224	224	64	3	1	1	1"
    # "1	64	112	112	128	3	1	1	1"
    # "1	128	112	112	128	3	1	1	1"
    # "1	128	56	56	256	3	1	1	1"
    # "1	256	56	56	256	3	1	1	1"
    # "1	256	28	28	512	3	1	1	1"
    # "1	512	28	28	512	3	1	1	1"
    # "1	512	14	14	1024	3	1	1	1"
    # "1	1024	14	14	1024	3	1	1	1"
    # "1	1024	28	28	512	3	1	1	1"
    # "1	128	224	224	64	3	1	1	1"
    # "1	64	224	224	64	1	1	1	0"
    # "32	3	224	224	64	3	1	1	1"
    # "32	64	224	224	64	3	1	1	1"
    # "32	64	112	112	128	3	1	1	1"
    # "32	128	112	112	128	3	1	1	1"
    # "32	128	56	56	256	3	1	1	1"
    # "32	256	56	56	256	3	1	1	1"
    # "32	256	28	28	512	3	1	1	1"
    # "32	512	28	28	512	3	1	1	1"
    # "32	512	14	14	1024	3	1	1	1"
    # "32	1024	14	14	1024	3	1	1	1"
    # "32	1024	28	28	512	3	1	1	1"
    # "32	128	224	224	64	3	1	1	1"
    # "32	64	224	224	64	1	1	1	0"
    # "64	3	224	224	64	3	1	1	1"
    # "64	64	224	224	64	3	1	1	1"
    # "64	64	112	112	128	3	1	1	1"
    # "64	128	112	112	128	3	1	1	1"
    # "64	128	56	56	256	3	1	1	1"
    # "64	256	56	56	256	3	1	1	1"
    # "64	256	28	28	512	3	1	1	1"
    # "64	512	28	28	512	3	1	1	1"
    # "64	512	14	14	1024	3	1	1	1"
    # "64	1024	14	14	1024	3	1	1	1"
    # "64	1024	28	28	512	3	1	1	1"
    # "64	128	224	224	64	3	1	1	1"
    # "64	64	224	224	64	1	1	1	0"
    # "128	3	224	224	64	3	1	1	1"
    # "128	64	224	224	64	3	1	1	1"
    # "128	64	112	112	128	3	1	1	1"
    # "128	128	112	112	128	3	1	1	1"
    # "128	128	56	56	256	3	1	1	1"
    # "128	256	56	56	256	3	1	1	1"
    # "128	256	28	28	512	3	1	1	1"
    # "128	512	28	28	512	3	1	1	1"
    # "128	512	14	14	1024	3	1	1	1"
    # "128	1024	14	14	1024	3	1	1	1"
    # "128	1024	28	28	512	3	1	1	1"
    # "128	128	224	224	64	3	1	1	1"
    # "128	64	224	224	64	1	1	1	0"
)

mkdir -p logs/

for shape in "${shapes[@]}"; do
    read n c h w f k s d p <<< "$shape"

    /home/aiscuser/miniconda3/bin/python benchmark_tilelang_conv.py \
        --n "$n" \
        --c "$c" \
        --h "$h" \
        --w "$w" \
        --f "$f" \
        --k "$k" \
        --s "$s" \
        --d "$d" \
        --p "$p" \
        2>&1 | tee "logs/${id}.conv_${n}_${c}_${h}_${w}_${f}_${k}_${s}_${d}_${p}.log"
    id=$((id + 1))
done