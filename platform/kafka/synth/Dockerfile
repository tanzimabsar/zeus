FROM wurstmeister/kafka

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

RUN apt-get update && \
    apt-get install -y curl

RUN curl --proto '=https' --tlsv1.2 -sSL https://getsynth.com/install | sh -s -- --force

# Replace the path so that you can run synth
ENV PATH="${PATH}:/root/.local/bin"

ENTRYPOINT ["/docker-entrypoint.sh"]


