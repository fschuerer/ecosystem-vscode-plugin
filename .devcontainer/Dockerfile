FROM mcr.microsoft.com/devcontainers/typescript-node:22-bookworm

ARG PAYARA_VERSION=7.2025.2
RUN curl https://artifactory.thyssenkrupp-steel.com/artifactory/dla-releases/fish/payara/distributions/payara/${PAYARA_VERSION}-seal/payara-${PAYARA_VERSION}-seal.zip -o payara-${PAYARA_VERSION}-seal.zip \
    && unzip payara-${PAYARA_VERSION}-seal.zip \
    && rm -f payara-${PAYARA_VERSION}-seal.zip \
    && mv payara7 /opt

# Payara domain permissions
RUN chown -R node:node /opt/payara7/glassfish/domains/domain1
