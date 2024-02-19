#!/usr/bin/env bash
sudo gcsfuse --implicit-dirs -o allow_other,ro brain-ai-image-dev-media /gcs/brain-ai-image-dev-media
sudo gcsfuse --implicit-dirs -o allow_other,ro brain-ai-image-dev-media-generated /gcs/brain-ai-image-dev-media-generated
sudo gcsfuse --implicit-dirs -o allow_other,ro brain-ai-image-dev-artifacts /gcs/brain-ai-image-dev-artifacts
sudo gcsfuse --implicit-dirs -o allow_other,ro brain-ai-image-dev-image-similarity /gcs/brain-ai-image-dev-image-similarity
