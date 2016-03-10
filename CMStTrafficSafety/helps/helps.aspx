<%@ Page Language="VB" AutoEventWireup="false" CodeFile="helps.aspx.vb" Inherits="helps_helps" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td style="width:300px;">
    <asp:TreeView   
             ID="TreeView1"  
             runat="server"  
            
             Width="300px"  
             BorderWidth="2"  
         
             BackColor="#0af"  
             ForeColor="White"  
             >  
               <Nodes>    
                   <asp:TreeNode Text="Hướng dẫn sử dụng" NavigateUrl="#home">
                        <asp:TreeNode Text="Hướng dẫn quản trị-Quản trị tin tức/videos" NavigateUrl="#mot">
                            <asp:TreeNode Text="Hướng dẫn quản trị-Danh mục tin tức" NavigateUrl="#mot-mot" />
                             <asp:TreeNode Text="Hướng dẫn quản trị-Tin tức" NavigateUrl="#mot-hai" />
                              <asp:TreeNode Text="Hướng dẫn quản trị-Video/Media" NavigateUrl="#mot-ba" />
                               <asp:TreeNode Text="Hướng dẫn quản trị-Phần bình luận" NavigateUrl="#mot-bon" />       
                          
                           
                      
                       </asp:TreeNode>  
                  
                   </asp:TreeNode>  
               </Nodes> 
        </asp:TreeView>  
    </td>
    
    <td></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
