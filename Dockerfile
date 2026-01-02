# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: CheckpointLoaderSimple (no aux_id provided)
# Could not resolve unknown_registry node: CLIPTextEncode (no aux_id provided)
# Could not resolve unknown_registry node: CLIPTextEncode (no aux_id provided)
# Could not resolve unknown_registry node: EmptyLatentImage (no aux_id provided)
# Could not resolve unknown_registry node: KSampler (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: LatentUpscale (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: KSampler (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: VAEDecode (no aux_id provided)
# Could not resolve unknown_registry node: SaveImage (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)
# Could not resolve unknown_registry node: Note (no aux_id provided)

# download models into comfyui
RUN comfy model download --url https://huggingface.co/artificialguybr/Anything-XL/blob/main/AnythingXL_xl.safetensors --relative-path models/checkpoints --filename AnythingXL_xl.safetensors
# RUN # Could not find URL for <other-model-if-any>

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
