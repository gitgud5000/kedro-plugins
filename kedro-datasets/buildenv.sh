conda create --name kedro-plugins python=3.12 -y
conda activate kedro-plugins
pip install ipykernel
python -m ipykernel install --user --name=kedro-plugins
pip install uv


uv pip install -e '.[test,docs,lint]'
uv pip install -e '.[test]'
uv pip install opencv-python



# tests/docs env
uv pip install -e '.[test,docs]'

# separate lint env
conda create -n kd-lint python=3.12 -y
conda activate kd-lint
uv pip install -e '.[lint]'

uv pip install -e '.[lint]'
pre-commit run --all-files


