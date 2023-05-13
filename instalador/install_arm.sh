#!bash

REPORT_HOME=$HOME/ReportesNetsuite
REPORT_HOME_JAVA=$REPORT_HOME/java
REPORT_HOME_REPORTE_ARCHIVOS=$REPORT_HOME/ReporteArchivos


# xcode-select --install &&
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
brew install wget &&

mkdir $REPORT_HOME &&

# Download JAVA 17
mkdir $REPORT_HOME_JAVA &&
cd $REPORT_HOME_JAVA &&
wget https://cdn.azul.com/zulu/bin/zulu17.42.19-ca-jdk17.0.7-macosx_aarch64.zip  &&
unzip zulu17.42.19-ca-jdk17.0.7-macosx_aarch64.zip &&
mv zulu17.42.19-ca-jdk17.0.7-macosx_aarch64 zulu17 &&

# Download JAR and Execute shell
mkdir $REPORT_HOME_REPORTE_ARCHIVOS &&
cd $REPORT_HOME_REPORTE_ARCHIVOS &&
wget https://github.com/AlexEscamilla/lifehome-netsuite-report/raw/main/ReporteArticulos-1.0.jar    &&
wget https://github.com/AlexEscamilla/lifehome-netsuite-report/raw/main/execute.sh  &&

# Download Libs
wget https://github.com/AlexEscamilla/lifehome-netsuite-report/raw/main/lib.zip  &&
unzip lib.zip &&

# Executable app
cd $REPORT_HOME_REPORTE_ARCHIVOS &&
chmod +x ReporteNetsuite.workflow &&
cp -R ReporteNetsuite.workflow /Applications &&

echo "All Done!"
echo ""
echo "Next Step, execute execute shell"

