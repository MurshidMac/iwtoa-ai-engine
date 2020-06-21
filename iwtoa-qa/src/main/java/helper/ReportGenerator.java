package helper;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;

public class ReportGenerator {
	
	public static ExtentReports extent;
	
	
	public static ExtentReports getInstance() {
		if(extent==null) {
			return createInstance("reports/extent.html");
		} else {
			return extent;
		}
	}
	
	public static ExtentReports createInstance(String reportLocation) {
		ExtentSparkReporter spark = new ExtentSparkReporter(reportLocation);
		spark.config().setDocumentTitle("IWTOA-TEST-REPORT");
		spark.config().setTheme(Theme.DARK);
		extent = new ExtentReports();
		extent.attachReporter(spark);
		return extent;
	}
}
