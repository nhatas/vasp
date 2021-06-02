
FROM materialstheory/base-cuda

ADD vasp.5.4.4.pl2.tgz /software/vasp
ADD makefile.include /software/vasp/vasp.5.4.4.pl2/
RUN cd /software/vasp/vasp.5.4.4.pl2/ \
    && make gpu \
    && rm -rf src/ build/ arch/

ENV PATH=/software/vasp/vasp.5.4.4.pl2/bin:${PATH}