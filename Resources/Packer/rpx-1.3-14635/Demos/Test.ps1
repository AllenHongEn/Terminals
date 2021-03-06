$Path = 'C:\Code\CSharp\RugProjects\Export\Tools\Rpx\Demos\' 

[System.IO.Directory]::SetCurrentDirectory($Path)

Write-Host 
Write-Host "Demo 1"
Write-Host
Write-Host "This demo creates compressed assembly from a single windows forms executable."
Write-Host "--------------------------------------------------------------------------------"

& ($Path + 'Rpx.exe') ($Path + 'Demo1\RpxDemo.exe') /o ($Path + 'Demo1\Compressed\RpxDemo1_Comp1.exe') /v Normal

Write-Host
Write-Host "Test the outputted assembly"
Write-Host "--------------------------------------------------------------------------------"  
Write-Host

& ($Path + 'Demo1\Compressed\RpxDemo1_Comp1.exe')
Write-Host

Write-Host
Write-Host "Demo 2"
Write-Host
Write-Host "This demo creates compressed assembly from a single console executable and"
Write-Host "a single supporting .dll assembly."
Write-Host "--------------------------------------------------------------------------------"  

& ($Path + 'Rpx.exe') ($Path + 'Demo2\RpxDemo2.exe') ($Path + 'Demo2\DemoLib1.dll') /o ($Path + 'Demo2\Compressed\RpxDemo2_Comp1.exe') /v Normal

Write-Host "Test the outputted assembly passing in the arguments 'Dog' 'Cat' 'Pig' 'Cow'"
Write-Host "--------------------------------------------------------------------------------"  
Write-Host

& ($Path + 'Demo2\Compressed\RpxDemo2_Comp1.exe') "Dog" "Cat" "Pig" "Cow"
Write-Host

Write-Host
Write-Host "Tool Demo"
Write-Host "This demo creates a tool assembly from multiple assemblys. and using an external"
Write-Host "source file for the assembly info ('ToolDemo\AssemblyInfo.cs')"
Write-Host "--------------------------------------------------------------------------------"  


$tools = ('Tool1:' + $Path + 'ToolDemo\ToolDemo1.exe') + ',' + ('Tool2:' + $Path + 'ToolDemo\ToolDemo2.exe') + ',' + ('Tool3:' + $Path + 'ToolDemo\ToolDemo3.exe') 

& ($Path + 'Rpx.exe') ($Path + 'ToolDemo\ToolDemo.exe') /a ($Path + 'ToolDemo\AssemblyInfo.cs') /t $tools
Write-Host

Write-Host
Write-Host "Test the outputted assembly" 
Write-Host "--------------------------------------------------------------------------------"
Write-Host

Write-Host "Test Tool 1"
Write-Host
& ($Path + 'ToolDemo\ToolDemo.exe') Tool1
Write-Host 
Write-Host

Write-Host "Test Tool 2"
Write-Host
& ($Path + 'ToolDemo\ToolDemo.exe') Tool2
Write-Host
Write-Host

Write-Host "Test Tool 3"
Write-Host
& ($Path + 'ToolDemo\ToolDemo.exe') Tool3
Write-Host
Write-Host


Write-Host
Write-Host "Demo 3 A" 
Write-Host "This demo tests the capabilities of compressed assemblys when using AppDomains" 
Write-Host "With the additional assembly compressed within the final assembly and not"
Write-Host "availible in the file system"
Write-Host "--------------------------------------------------------------------------------" 

& ($Path + 'Rpx.exe') ($Path + 'Demo3\RpxDemo3.exe') ($Path + 'Demo3\DemoLib2.dll') /o ($Path + 'Demo3\Compressed1\RpxDemo3_Comp1.exe')

Write-Host
Write-Host "Test the outputted assembly (this should fail on both Test 2 and Test 3)"
Write-Host "--------------------------------------------------------------------------------"  
Write-Host

& ($Path + 'Demo3\Compressed1\RpxDemo3_Comp1.exe')
Write-Host


Write-Host
Write-Host "Demo 3 B"
Write-Host "This demo tests the capabilities of compressed assemblys when using AppDomains" 
Write-Host "With the additional assembly availible in the file system and not compressed" 
Write-Host "within the final assembly"
Write-Host "--------------------------------------------------------------------------------"  

& ($Path + 'Rpx.exe') ($Path + 'Demo3\RpxDemo3.exe') /o ($Path + 'Demo3\Compressed2\RpxDemo3_Comp1.exe')

Write-Host
Write-Host "Copy the additonal assembly to the output folder"

Copy-Item ($Path + 'Demo3\DemoLib2.dll') ($Path + 'Demo3\Compressed2\DemoLib2.dll')

Write-Host
Write-Host "Test the outputted assembly (this should work on Test 2 but still fail on Test 3)"
Write-Host "--------------------------------------------------------------------------------" 
Write-Host

& ($Path + 'Demo3\Compressed2\RpxDemo3_Comp1.exe')

Write-Host