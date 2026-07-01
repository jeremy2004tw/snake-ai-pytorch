# Create venv
python -m venv venv
source venv/Scripts/activate

# Test with human player
pip install pygame
python snake_game_human.py

# Train with CPU
pip install torch
pip install numpy matplotlib ipython

python -c "import torch; print(torch.__version__); print(torch.version.cuda); print(torch.cuda.is_available())"
python agent.py

# Train with GPU
pip uninstall -y torch
python -m pip install torch --index-url https://download.pytorch.org/whl/cu126

python -c "import torch; print(torch.__version__); print(torch.version.cuda); print(torch.cuda.is_available())"
python agent.py

# Delete venv
deactivate
rm -rf venv
