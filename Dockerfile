FROM julia:1.9.2

RUN julia -e 'using Pkg; Pkg.update(); Pkg.add(["Conda", "IJulia"]);'
RUN julia -e 'import Conda; Conda.add("jupyterlab")'

