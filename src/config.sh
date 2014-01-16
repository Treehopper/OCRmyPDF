TOOLNAME="OCRmyPDF"
VERSION="v2.x"

# possible exit codes
EXIT_BAD_ARGS="1"
EXIT_BAD_INPUT_FILE="2"
EXIT_MISSING_DEPENDENCY="3"
EXIT_INVALID_OUPUT_PDFA="4"
EXIT_OTHER_ERROR="15"

# possible log levels
LOG_ERR="0"				# only error messages
LOG_WARN="1"				# error messages and warnings
LOG_INFO="2"				# error messages, warnings and some infos
LOG_DEBUG="3"				# debug level logging

# various paths
SRC="$BASE/src"				# location of the source folder (except source of external tools like jhove)
TMP="$BASE/tmp"				# location of the temporary files (one sub-folder will be created per PDF file to be processed)
OCR_PAGE="$SRC/ocrPage.sh"		# path to the script aimed at OCRing one page
JHOVE="$BASE/jhove/bin/JhoveApp.jar"	# java SW for validating the final PDF/A
JHOVE_CFG="$BASE/jhove/conf/jhove.conf"	# location of the jhove config file

# other 
DEFAULT_DPI=300				# dpi value used as fall back if the page dpi cannot be determined
