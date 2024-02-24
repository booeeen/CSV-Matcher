$csv1Path = "..." # Path from 1st csv file
$csv2Path = "..." # Path from 2nd csv file
$filterdObjectsFile = "..." # Path where the data should be saved (csv file)

$csvContent1 = Import-CSV -Path $csv1Path -Delimiter ";"
$csvContent2 = Import-CSV -Path $csv2Path -Delimiter ";"

$data1 = $csvContent1 | Select-Object Anzeigename # Anzeigename is just an example, feel free to modify it
$data2 = $csvContent2 | Select-Object Anzeigename # Anzeigename is just an example, feel free to modify it
$doubleCounter = 0

foreach ($item1 in $data1) 
{
    foreach ($item2 in $data2) 
    {
        if ($item1.Anzeigename -eq $item2.Anzeigename) 
        {
            $item1 | Export-Csv -Path $filterdObjectsFile -Append -NoTypeInformation
            $doubleCounter++
        }

    }
}

Write-Host("Duplicates successfully exported. Found $doubleCounter records.")