FROM dzaharee/dev

RUN apt-get install -qy haskell-platform

RUN echo ':set prompt "ghci> "' > /home/dev/.ghci && \
    chown dev:dev /home/dev/.ghci
