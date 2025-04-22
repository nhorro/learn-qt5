FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Instalar Qt5, QtCreator y módulos QML
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    qt5-qmake \
    qtbase5-dev \
    qtbase5-dev-tools \
    qtdeclarative5-dev \
    qtquickcontrols2-5-dev \
    qttools5-dev-tools \
    qttools5-dev \
    qtcreator \
    qml-module-qtquick-controls2 \
    qml-module-qtquick-dialogs \
    qml-module-qtgraphicaleffects \
    qml-module-qtquick-xmllistmodel \
    qml-module-qtquick2 \
    x11-xserver-utils \
    libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*


# Crear usuario para evitar correr como root
RUN useradd -ms /bin/bash devuser
USER devuser


ENV QML2_IMPORT_PATH=/usr/lib/x86_64-linux-gnu/qt5/qml
ENV QML_IMPORT_PATH=/usr/lib/x86_64-linux-gnu/qt5/qml

WORKDIR /home/devuser

CMD ["bash"]
