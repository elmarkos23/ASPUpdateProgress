<%@ Page Title="UpdateProgress" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPUpdateProgress._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<asp:UpdatePanel ID="PanelPrincipal" runat="server">
		</asp:UpdatePanel>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		 <ContentTemplate>
			 <div class="jumbotron">
        <h1>UpdateProgress</h1>
        <p class="lead"><asp:Label ID="Label1" runat="server" Text="Tiempo de Espera..."></asp:Label></p>
				 <asp:Button ID="btnSendMail" runat="server" Text="Enviar Correo" OnClick="btnSendMail_Click" CssClass="btn btn-primary btn-lg"/>
    </div>
    </ContentTemplate>
	</asp:UpdatePanel>
	<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="PanelPrincipal">
		<ProgressTemplate>
			<center>
			<img src="../Image/load.gif" alt="Cargando" width="250" />	
				<p>Enviando...</p>
			</center>
    </ProgressTemplate>
	</asp:UpdateProgress>
	<asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
		<ProgressTemplate>
			<div class="overlay">
			<div style=" z-index: 1000; margin-left: 350px;margin-top:200px;opacity: 1;-moz-opacity: 1;">
			<img src="../Image/load.gif" alt="Cargando" width="250" />	
			</div>
			</div>
    </ProgressTemplate>
	</asp:UpdateProgress>
  <div class="jumbotron">
	<p>Estado de la pantalla con gif animado</p>	
	</div>
	
</asp:Content>
