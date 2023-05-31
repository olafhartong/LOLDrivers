
rule PUA_VULN_Driver_MSI_NTIOLibsys_NTIOLib_8a58 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 4a06bcd96ef0b90a1753a805b4235f28.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "30706f110725199e338e9cc1c940d9a644d19a14f0eb8847712cba4cacda67ab"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004d0053004900200043006f006d00430065006e00530065007200760069006300650020004400720069007600650072 } /* FileDescription MSI ComCenService Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d00530049 } /* CompanyName MSI */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e0030002e0030 } /* FileVersion 1.0.0.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e0030002e0030 } /* ProductVersion 1.0.0.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* InternalName NTIOLib.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004e00540049004f004c00690062 } /* ProductName NTIOLib */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* OriginalFilename NTIOLib.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800430029002000320030003100330020004d00530049002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Copyright (C) 2013 MSI. All rights reserved. */
	condition:
		all of them
}
