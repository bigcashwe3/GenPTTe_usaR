
FileSizeMB := 1.2
FileName := "p1001.p" 

FileSizeBytes := FileSizeMB * 1024 * 1024

ScriptDir := A_ScriptDir

FilePath := ScriptDir "\" FileName

File := FileOpen(FilePath, "w")
if !File {
    MsgBox, Error creating file: "" FilePath
    ExitApp
}

Loop, % FileSizeBytes {
    Random, RandChar, 32, 126 ; Generate a random ASCII character (printable range)
    File.WriteChar(RandChar)
}

File.Close()

MsgBox, File created successfully at> %FilePath% > Size: %FileSizeMB% MB
