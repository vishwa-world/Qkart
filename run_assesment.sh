# Usage
# For just assessment from filtered logs - ./run_assesment.sh --from-filtered-log
# For generating filtered logs first before assessment - ./run_assesment.sh
if [[ "$1" != "--from-filtered-log" ]] 
then 
    python3 assesment/generateFilteredLogs.py ./app/chromedriver.log
fi
python3 assesment/localAssesment.py ./filtered_logs.json assesment/AIS_MO_01.json
# CRIO_SOLUTION_AND_STUB_START_MODULE_TESTNG
pip3 install -r assesment/xmlAssessment/requirements.txt
python3 assesment/xmlAssessment/xmlAssessment.py assesment/xmlAssessment/Assessment_Instruction.json test-results.xml
# CRIO_SOLUTION_AND_STUB_END_MODULE_TESTNG
