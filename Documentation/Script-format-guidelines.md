## Script formatting guidelines
Scripts should at least, but not limited by, contain the following items:
- [GENERAL INFORMATION](https://github.com/Rrtk2/bioinformatics-and-systems-biology/blob/master/Script-essentials/GENERAL-INFORMATION.R) 
- [CHECKS](https://github.com/Rrtk2/bioinformatics-and-systems-biology/blob/master/Script-essentials/CHECKS.R) 
- [INSTALL & LOAD PACKAGES](https://github.com/Rrtk2/bioinformatics-and-systems-biology/blob/master/Script-essentials/INSTALL-LOAD-PACKAGES.R) 
- [INPUT](https://github.com/Rrtk2/bioinformatics-and-systems-biology/blob/master/Script-essentials/INPUT.R) 
- MAIN - too diverse to make a standard script for this
- OUTPUT - too diverse to make a standard script for this for now...
- [REMOVE TEMP_ FILES/VARIABLES](https://github.com/Rrtk2/bioinformatics-and-systems-biology/blob/master/Script-essentials/REMOVE%20TEMP_VARS.R) 

## Variable names, constants, functions, settings naming
[varname] can contain letters, numbers and "_"

| Notation 	|   Description	|   	
|---	|---	|
| [varname] 	|  variable which **should not be removed** at the end of running the script 	|
| temp_[varname] 	|  variable which **should be removed** at the end of running the script 	|
| c_[varname] 	|   constants	|
| f_[varname] 	|   (custom) functions made within script	|
| s_[varname] 	|   settings	|

## Example(s)
- [Script R](https://github.com/Rrtk2/bioinformatics-and-systems-biology/blob/master/Script-essentials/EXAMPLE-SCRIPT-1.R) 


## GENERAL INFORMATION required information
	File description:
	Name
	**<Script name.extension>**

	Purpose 
	**<Description of what this script does>**

	Inputs
	**<Variables/data to be imported>**

	Outputs
	**<Resulting data/variables>**


	Copyright statement comment:
	Script which is part of the Rrtk2/bioinformatics-and-systems-biology 
	github repopository, script definition is described in 'Purpose' under 
	GENERAL INFORMATION section.
	Copyright (C) **<year>**  **<author>**

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see **<https://www.gnu.org/licenses/>**.



	Author comment:
	**<author name>**
	**<author email>**
	**<author Personal comments>**


	Script METRICS description:
	"Health"
	The state of the code, if it can be run and to which extend; NUMERIC value 1 - 4
	(1) Broken
	(2) Running with specific DATASET
	(3) Running with specific DATA STRUCTURE
	(4) Running with automatic DATA STRUCTURE DETECTION

	"Status"
	The state of development of the code to reach it's purpose. NUMERIC value 1 - 4
	(1) Experimental; BIG CHANGES VERY LIKELY and many upcoming modifications
	(2) In-progress; BIG CHANGES UNLIKELY, structure changes likely.
	(3) Pre-final; Structure of code remains as it is, very unlikely changes, and MAINLY BUGFIXING.
	(4) Final; No planned changes, ESSENTIAL BUGFIXES ONLY.

	"Completion"
	Essential things that the script SHOULD have; for every item that is COMPLETED, "Completion" gets a point. Max 8 points.
	[ ] GENERAL INFORMATION - (meta) information is complete and clear
	[ ] CHECKS - Script checks if items sucessfully do what they should do, and alerts user if certain objects/variables misbehave.
	[ ] SETTINGS - general settings used in script
	[ ] (INSTALL &) LOAD PACKAGES - Install packages if needed, then load all required
	[ ] INPUT - imports data / define the object that is going to be modified
	[ ] MAIN - The main algorithm that will be used. This can be separated into several sub-sections ofcourse. The collection will be MAIN.
	[ ] OUTPUT - Export the data variables as text/images/variables (output)
	[ ] REMOVE TEMP_ FILES/VARIABLES - Removes unneeded objects from the workspace to run efficiently

	Script METRICS:
	Health = **<number>**/4
	Status = **<number>**/4
	Completion = **<number>**/8


