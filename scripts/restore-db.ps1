param(
    [string] $bak,
    [string] $project
)

if ($bak -eq "") {
    $here = (resolve-path . ).Path;
    $bak = "${here}\NORTHWND-20180518-1.bak";
}

if ($project -eq "") {
    $project = (resolve-path .. ).Path;
}

$host.ui.RawUI.WindowTitle = "infoShare Academy Workshops - restore db"

try {
    SqlLocalDB.exe stop LocalDbInfoShare;
    SqlLocalDB.exe delete LocalDbInfoShare;
}
finally {
    SqlLocalDB.exe create LocalDbInfoShare 13.0;
    SqlLocalDB.exe start LocalDbInfoShare;
 
    sqlcmd.exe -S "(localdb)\LocalDbInfoShare" -d master -Q "RESTORE DATABASE Northwind FROM DISK = '${bak}' WITH MOVE 'Northwind' TO '${project}\post-manager\db\Northwind.mdf', MOVE 'Northwind_log'  TO '${project}\post-manager\db\Northwind.ldf', REPLACE;";
}
