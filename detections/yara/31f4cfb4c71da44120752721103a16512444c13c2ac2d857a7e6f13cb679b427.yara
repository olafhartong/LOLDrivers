
rule PUA_VULN_Driver_WindowsRServerDDKprovider_gdrvsys_WindowsRServerDDKdriver_4No6 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 9ab9f3b75a2eb87fafb1b7361be9dfb3.bin, 31f34de4374a6ed0e70a022a0efa2570.bin, 7907e14f9bcf3a4689c9a74a1a873cb6.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "31f4cfb4c71da44120752721103a16512444c13c2ac2d857a7e6f13cb679b427"
		hash = "6f1fc8287dd8d724972d7a165683f2b2ad6837e16f09fe292714e8e38ecd1e38"
		hash = "17927b93b2d6ab4271c158f039cae2d60591d6a14458f5a5690aec86f5d54229"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0047004900470041004200590054004500200054006f006f006c0073 } /* FileDescription GIGABYTE Tools */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00570069006e0064006f007700730020002800520029002000530065007200760065007200200032003000300033002000440044004b002000700072006f00760069006400650072 } /* CompanyName Windows (R) Server 2003 DDK provider */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0035002e0032002e0033003700390030002e00310038003300300020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 5.2.3790.1830 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0035002e0032002e0033003700390030002e0031003800330030 } /* ProductVersion 5.2.3790.1830 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0067006400720076002e007300790073 } /* InternalName gdrv.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00570069006e0064006f007700730020002800520029002000530065007200760065007200200032003000300033002000440044004b0020006400720069007600650072 } /* ProductName Windows (R) Server 2003 DDK driver */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0067006400720076002e007300790073 } /* OriginalFilename gdrv.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]00a90020004d006900630072006f0073006f0066007400200043006f00720070006f0072006100740069006f006e002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright © Microsoft Corporation. All rights reserved. */
	condition:
		all of them
}