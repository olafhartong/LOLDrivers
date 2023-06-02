
rule PUA_VULN_Driver_CPUID_cpuzsys_CPUIDservice_95tV {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - f60a9b88c6ff07d4990d8653d0025683.bin, 8741e6df191c805028b92cec44b1ba88.bin, 21be10f66bb65c1d406407faa0b9ba95.bin, e323413de3caec7f7730b43c551f26a0.bin, f310b453ac562f2c53d30aa6e35506bb.bin, e425c66663c96d5a9f030b0ad4d219a8.bin, 5212e0957468d3f94d90fa7a0f06b58f.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "6befa481e8cca8084d9ec3a1925782cd3c28ef7a3e4384e034d48deaabb96b63"
		hash = "8cf0cbbdc43f9b977f0fb79e0a0dd0e1adabe08a67d0f40d727c717c747de775"
		hash = "2101d5e80e92c55ecfd8c24fcf2202a206a4fd70195a1378f88c4cc04d336f22"
		hash = "45c3d607cb57a1714c1c604a25cbadf2779f4734855d0e43aa394073b6966b26"
		hash = "600a2119657973112025db3c0eeab2e69d528bccfeed75f40c6ef50b059ec8a0"
		hash = "deecbcd260849178de421d8e2f177dce5c63cf67a48abb23a0e3cf3aa3e00578"
		hash = "955dac77a0148e9f9ed744f5d341cb9c9118261e52fe622ac6213965f2bc4cad"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004300500055004900440020004400720069007600650072 } /* FileDescription CPUID Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00430050005500490044 } /* CompanyName CPUID */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e003100360033003800350020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 6.1.7600.16385 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e00310036003300380035 } /* ProductVersion 6.1.7600.16385 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006300700075007a002e007300790073 } /* InternalName cpuz.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0043005000550049004400200073006500720076006900630065 } /* ProductName CPUID service */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006300700075007a002e007300790073 } /* OriginalFilename cpuz.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007000790072006900670068007400280043002900200032003000310034002000430050005500490044 } /* LegalCopyright Copyright(C) 2014 CPUID */
	condition:
		all of them
}