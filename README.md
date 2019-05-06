# Jasper Reporting Engine

The version in the VERSION file matches the Jasper Reports version number.

This jar `JasperReportPrinter`.jar is called from the commandline to generate a Jasper report or send it to a printer.

Example of call:

[source,bash]
----
java -jar JasperReportPrinter.jar "full path to dir that houses reports" report_name "printer_address" "postgresql://host:port/database?user=username&password=password" "rpt_param1=1" "rpt_param2=VALUE" "MODE=GENERATE" "OUT_FILE_NAME=path_for_output_file_without_ext" "OUT_FILE_TYPE=PDF" "SUBREPORT_DIR=usually_same_as_first_dir_but_could_point_to_sub_dir"
----

The first four parameters are required: `reports directory`, `report name`, `printer`, `database connection`.

The paramters `rpt_param1` and `rpt_param2` are examples of parameters to be sent to the specific report.

MODE must be `GENERATE` or `PRINT`. When `GENERATE`, the printer address can be anything.

OUT_FILE_NAME is required for `GENERATE` and that is the name of the file to be created (but with no file extension).

OUT_FILE_TYPE is required for `GENERATE`. Can be `PDF`, `CSV`, `XLS` or `RTF`.

SUBREPORT_DIR is required - it will ususally be the same as the `reports directory`, but may point to a subdir if the report is below the `reports directory`.

Reports must be in a folder of the same name as `report_name`. e.g. `reports directory` = 'reports' and `report name` = 'invoice', there should be a report named `reports/invoice/invoice.jasper`.
