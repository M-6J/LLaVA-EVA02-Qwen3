# LLaVA-EVA02-Qwen3

This repository implements a customization of the [LLaVA-1.5](https://github.com/haotian-liu/LLaVA) VLM architecture. The original model is enhanced by integrating the [EVA02-CLIP](https://huggingface.co/QuanSun/EVA-CLIP) vision encoder and the [Qwen3](https://github.com/QwenLM/Qwen3) language model. This project aims to enhance fine-grained visual recognition and complex reasoning capabilities beyond the original baseline.

 ## 🚀 Model Architecture

Vision Encoder: EVA02-CLIP-L-14-336  - Utilizes Masked Image Modeling (MIM) to capture fine-grained geometric and structural visual features.

Language Model: Qwen3  - A high-performance LLM trained on 36T tokens, offering superior multilingual support and complex reasoning capabilities.

## 🛠️ Installation
To get started, please follow the steps below to set up the environment.
1. Clone the Repository
Clone this repository to your local machine and navigate to the project directory.
```bash
git clone https://github.com/YOUR_USERNAME/LLaVA-EVA02CLIP-Qwen3.git
cd LLaVA-EVA02CLIP-Qwen3
```

2. Set Up the Environment
Create a new Conda environment and install the required base packages.
```shell
conda create -n llava_qwen3 python=3.10 -y
conda activate llava_qwen3
pip install --upgrade pip  # Ensure PEP 660 support
pip install -e .
```

3. Install Training Dependencies

Install additional packages required for training, including Flash Attention for optimization.
```shell
pip install -e ".[train]"
pip install flash-attn --no-build-isolation
```
## Dataset for Train

[LLaVA Dataset](https://github.com/haotian-liu/LLaVA?tab=readme-ov-file#visual-instruction-tuning)


## Pretrain Qwen2

```bash
bash scripts/v1.5/pretrain_evaclip2_qwen3.sh
```

The checkpoint for the pretrain projector is located at `checkpoints/llava-v1.5-evq02clip-qwen3-8b-pretrain-2mm_projector.bin`

## Finetune Qwen2

```bash
bash scripts/v1.5/finetune_evaclip2_qwen3.sh
```




