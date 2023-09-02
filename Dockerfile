ARG ES_VERSION
FROM elasticsearch:${ES_VERSION} as builder

ARG ES_VERSION
RUN mkdir -p /usr/share/elasticsearch/plugins/ik \
    && cd /usr/share/elasticsearch/plugins/ik \
    && curl -L -k -o ik.zip "https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${ES_VERSION}/elasticsearch-analysis-ik-${ES_VERSION}.zip" \
    && unzip ik.zip

RUN mkdir -p /usr/share/elasticsearch/plugins/pinyi \
    && cd /usr/share/elasticsearch/plugins/pinyi \
    && curl -L -k -o pinyin.zip "https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${ES_VERSION}/elasticsearch-analysis-pinyin-${ES_VERSION}.zip" \
    && unzip pinyin.zip

ARG ES_VERSION
FROM elasticsearch:${ES_VERSION} as runner

COPY --from=builder /usr/share/elasticsearch/plugins/ik /usr/share/elasticsearch/plugins/ik
COPY --from=builder /usr/share/elasticsearch/plugins/pinyi /usr/share/elasticsearch/plugins/pinyi
