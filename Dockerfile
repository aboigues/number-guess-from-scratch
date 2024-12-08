FROM python:slim-bookworm AS compiler
WORKDIR /app
COPY number-guess.py ./

RUN apt-get update \
    && apt-get install -y build-essential patchelf \
    && pip install staticx pyinstaller \ 
    && pyinstaller -F number-guess.py \
    && staticx /app/dist/number-guess  /ngs

FROM scratch
WORKDIR /
COPY --from=compiler /ngs /
COPY --from=compiler /tmp /tmp
CMD ["/ngs"]

