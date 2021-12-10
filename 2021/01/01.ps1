$inputdata = get-content $PSScriptRoot\input

$prior = 0
$increase = 0

foreach ($current in $inputdata) {
    if($current -gt $prior) { $increase++}
    $prior = $current
}

write-host $increase
