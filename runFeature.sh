mkdir -p ./test/report
mkdir -p ./test/output
export startTime=$(date)
# Run feature file
node node_modules/@cucumber/cucumber/bin/cucumber-js -f json:report/cucumber_report.json features/test.feature
result=$?
export endTime=$(date)
# Export report
node multiReport.js
exit $result