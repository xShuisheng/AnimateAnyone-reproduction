#!/bin/bash


VENV_DIR=venv
REQUIREMENTS=requirements.txt

echo Setting up virtual environment...
if [ ! -d "$VENV_DIR" ]; then
python3 -m venv "$VENV_DIR"
fi
. "$VENV_DIR/bin/activate"


pip3 show torch > /dev/null
if [ $? -ne 0 ]; then
    pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
fi

echo Installing requirements...
pip3 install -r "$REQUIREMENTS"

echo Setup complete.

echo Running the application...
. "$VENV_DIR/bin/activate"
nohup python aiyo_api_server_main.py --config "debug_dp" --listen "0.0.0.0" > nohup.out 2>&1 &