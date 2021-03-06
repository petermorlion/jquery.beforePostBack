﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BeforePostBackSample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>jQuery beforePostBack plugin sample</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>jQuery beforePostBack plugin sample</h1>
        <div>
            <asp:Button runat="server" id="buttonPostBack" Text="Submit" OnClick="OnButtonPostBackClick"/>
            <asp:LinkButton runat="server" ID="linkButtonPostBack" Text="PostBack" OnClick="LinkButtonPostBackOnClick"></asp:LinkButton>
            
            <input id="stopPostBackCheckbox" type="checkbox"/><label for="stopPostBackCheckbox">Stop postback</label>
        </div>
        <div>
            You've posted back <asp:Label runat="server" ID="labelPostBackCount"></asp:Label> times.<br/>
            You've submitted <asp:Label runat="server" ID="labelSubmitCount"></asp:Label> times.
        </div>
    </form>
    <script type="text/javascript" src="jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="jquery.beforePostBack.js"></script>
    <script type="text/javascript">
        $(function () {
            $('form').submit(function() { alert('Submitting'); });

            $.beforePostBack(function () {
                if ($('#stopPostBackCheckbox').is(':checked')) {
                    return false;
                } else {
                    alert('Going to post back!');
                }
            });
        });
    </script>
</body>
</html>
