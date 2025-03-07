function Pretty-PrintXML {
    param (
        [string]$filePath
    )

    # Create a new XmlDocument object
    $xmlDoc = New-Object System.Xml.XmlDocument
    
    # Load the XML file
    $xmlDoc.Load($filePath)
    
    # Create a new XmlTextWriter to output the pretty-printed XML
    $stringWriter = New-Object System.IO.StringWriter
    $xmlTextWriter = New-Object System.Xml.XmlTextWriter($stringWriter)
    
    # Set formatting options
    $xmlTextWriter.Formatting = [System.Xml.Formatting]::Indented
    
    # Write the XML document to the writer
    $xmlDoc.WriteTo($xmlTextWriter)
    
    # Return the formatted XML
    $stringWriter.ToString()
}

# Example usage: Replace 'path_to_your_file.xml' with your XML file's path
$prettyXml = Pretty-PrintXML -filePath "path_to_your_file.xml"
Write-Output $prettyXml
