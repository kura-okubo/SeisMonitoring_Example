FROM julia:1.7.3

#RUN julia -e 'using Pkg; Pkg.update(); \
#    Pkg.add(PackageSpec(name="SeisIO", version="1.2.1")); \
#    Pkg.add(PackageSpec(name="SeisNoise", version="0.5.3")); \
#    Pkg.add(url="https://github.com/tclements/SeisDvv.jl"); \
#    Pkg.add(url="https://github.com/kura-okubo/SeisMonitoring.jl"); \
#    Pkg.add("IJulia"); \
#'

RUN julia -e 'using Pkg; Pkg.update(); Pkg.add(["Conda", "IJulia"]);'
RUN julia -e 'import Conda; Conda.add("jupyterlab")'

