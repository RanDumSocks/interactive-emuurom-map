# USAGE: Take a full 1920x1080 screenshot of the game while it is in fullscreen mode. Run the script and it will save an image file to the current directory.
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName Microsoft.VisualBasic

if ([System.Windows.Forms.Clipboard]::ContainsImage()) {
   $srcImg = [System.Windows.Forms.Clipboard]::GetImage()
   
   $srcRect = New-Object System.Drawing.Rectangle(120, 65, 1680, 950)
   
   $targetWidth = 1680
   $targetHeight = 950
   $destRect = New-Object System.Drawing.Rectangle(0, 0, $targetWidth, $targetHeight)
   
   $bmp = New-Object System.Drawing.Bitmap($targetWidth, $targetHeight)
   
   $graphics = [System.Drawing.Graphics]::FromImage($bmp)
   
   $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
   $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
   $graphics.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
   
   $graphics.DrawImage($srcImg, $destRect, $srcRect, [System.Drawing.GraphicsUnit]::Pixel)
   
   try {
   # Custom Form for Map Type selection
   $form = New-Object System.Windows.Forms.Form
   $form.Text = "Select Map Type"
   $form.Size = New-Object System.Drawing.Size(250, 130)
   $form.StartPosition = "CenterScreen"
   $form.FormBorderStyle = 'FixedDialog'
   $form.MaximizeBox = $false
   $form.MinimizeBox = $false

   $label = New-Object System.Windows.Forms.Label
   $label.Location = New-Object System.Drawing.Point(10, 10)
   $label.Size = New-Object System.Drawing.Size(200, 20)
   $label.Text = "Select the map type:"
   $form.Controls.Add($label)

   $comboBox = New-Object System.Windows.Forms.ComboBox
   $comboBox.Location = New-Object System.Drawing.Point(10, 30)
   $comboBox.Size = New-Object System.Drawing.Size(210, 20)
   $comboBox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
   [void]$comboBox.Items.Add("ow (Overworld)")
   [void]$comboBox.Items.Add("fc (Forest's Cover)")
   $comboBox.SelectedIndex = 0
   $form.Controls.Add($comboBox)

   $okButton = New-Object System.Windows.Forms.Button
   $okButton.Location = New-Object System.Drawing.Point(10, 60)
   $okButton.Text = "OK"
   $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
   $form.Controls.Add($okButton)
   $form.AcceptButton = $okButton

   $dialogResult = $form.ShowDialog()
   $mapType = if ($comboBox.SelectedItem -like "fc*") { "fc" } else { "ow" }
   $form.Dispose()

   if ($dialogResult -ne [System.Windows.Forms.DialogResult]::OK) {
       return
   }

   $y = [Microsoft.VisualBasic.Interaction]::InputBox("Enter Row (Y) coordinate (e.g., 1-8):", "Input Y")
   $x = [Microsoft.VisualBasic.Interaction]::InputBox("Enter Column (X) coordinate (e.g., 1-8):", "Input X")
   
   if ([string]::IsNullOrWhiteSpace($y) -or [string]::IsNullOrWhiteSpace($x)) {
       return
   }

   $targetDir = Join-Path -Path $PSScriptRoot -ChildPath "images\$mapType"
   if (-not (Test-Path -Path $targetDir)) {
       New-Item -ItemType Directory -Path $targetDir | Out-Null
   }

   $outputPath = Join-Path -Path $targetDir -ChildPath "${mapType}_$y-$x.png"
   $bmp.Save($outputPath, [System.Drawing.Imaging.ImageFormat]::Png)
   } finally {
       if ($graphics) { $graphics.Dispose() }
       if ($bmp) { $bmp.Dispose() }
       if ($srcImg) { $srcImg.Dispose() }
   }
}
