Dim ie_1


On Error Resume Next
Dim wso
Set wso = CreateObject("Scripting.WindowSystemObject")
If Err.Number <> 0 Then
	Msgbox "Please install WindowSystemObject before!" & vbCrLf & "You can download WSO from http://www.veretennikov.org/WSO/Download.aspx"
	WScript.Quit 1
End If
On Error GoTo 0

Dim form_0
Set form_0 = wso.CreateForm(0, 0, 513, 310, Clng(13565952))
WScript.ConnectObject form_0, "form_0_"
With form_0
  .Text = "maratl"
End With
form_0.BevelWidth = 0
With form_0
  .MaximizeBox = False
  .MinimizeBox = False
  .ControlBox = False
  .SizeGrip = False
  .Caption = False
End With


Set ie_1 = form_0.CreateActiveXControl(0, 0, 497, 271, "{8856F961-340A-11D0-A96B-00C04FD705A2}")
With ie_1
  .Align = wso.Translate("AL_CLIENT")
  .Cursor = wso.Translate("IDC_UPARROW")
End With
ie_1.Control.Silent = True
Set timer_7 = wso.CreateTimer()
WScript.ConnectObject timer_7, "timer_7_"

Set edit_9 = form_0.CreateEdit(200, 235, 1, 1)
WScript.ConnectObject edit_9, "edit_9_"
With edit_9
  .Text = "file://C:/osmp/system/group_undefined.html"
  .Visible = False
End With


ie_1.Control.Navigate("file://C:\osmp\system\chk_1.html")
On Error Resume Next
form_0.Width = 1280
form_0.Height = 1024
form_0.Show()
wso.Run()



Function timer_7_OnExecute(Sender)'timer_7
  If ie_1.Control.LocationURL = edit_9.Text Then
    Wscript.Echo ""
  End If
End Function


Set wso = Nothing

'Generated with VBS pack for HiAsm Studio, www.hiasm.com
