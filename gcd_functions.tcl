#!/usr/bin/tclsh

#this function returns the greatest common dividor ot two given numbers
proc gcd { a b } {
	set a [expr abs($a)]
	set b [expr abs($b)]
        if {$b==0} {return $a} else {gcd $b [expr {$a%$b}]}
}

#this function checks whether all the inputs in the input_file are integer numbers
#if they are, the function returns true, and returns false otherwise
proc check_input {} {
        set file_data [read_data "input.txt"]
        set data [split $file_data "\n"]
        foreach line $data {
                set str1 [lindex $line 0]
                set str2 [lindex $line 1]
                if {![string is int $str1] || ![string is int $str2]} { return false}
        }
        return true
}

#this function reads data from the given file and returns that
proc read_data { file_name } {
        set fp [open $file_name]
        set file_data [read $fp]
        close $fp
        return $file_data
}

#this function writes the given data in the given file
proc write_data { file_name output_data } {
        set fp [open $file_name w+]
        puts $fp $output_data
        close $fp
}

#this function deletes the generated files
proc clean_files {} {
        file delete -force "output.txt"
        file delete -force "result.txt"
}

#this function reads the data drom the given file 
#splits it into lines and returns the list
proc get_data { file_name } {
        set file_data [read_data $file_name]
        set data [split $file_data "\n"]
        return $data
}

