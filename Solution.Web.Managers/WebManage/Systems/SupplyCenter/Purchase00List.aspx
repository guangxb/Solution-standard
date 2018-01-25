﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase00List.aspx.cs" Inherits="Solution.Web.Managers.WebManage.Systems.SupplyCenter.Purchase00List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
        <f:Panel ID="Panel1" runat="server" ShowBorder="false" ShowHeader="false" Layout="Region">
            <Items>
                <f:Panel runat="server" ID="panelCenterRegion" RegionPosition="Center"
                    Title="采购作业信息" ShowBorder="true" ShowHeader="true" BodyPadding="5px">
                    <Toolbars>
                    <f:Toolbar ID="Toolbar1" runat="server">
                      <Items>
                          <f:Button ID="ButtonUpdate" runat="server" Text="保存" Icon="Disk" OnClick="BtnPur01_Save"></f:Button>
                          <f:Button ID="ButtonCheck" runat="server" Text="核准" Icon="Disk"></f:Button>
                          <f:Button ID="ButtonCancel" runat="server" Text="作废" Icon="Disk"></f:Button>
                      </Items>
                      </f:Toolbar>
                    </Toolbars>
                    <Items>
                     <f:Form ID="Form5" LabelAlign="Left"  BodyPadding="5px" LabelWidth="90px" EnableCollapse="true"
                            runat="server" Title="表单" ShowBorder="true" ShowHeader="false">
                        <Rows>
                            <f:FormRow ColumnWidths="300px">
                                <Items>
                                    <f:TextBox runat="server" Label="采购单号" ID="tbxPurchase_ID" Required="true" ShowRedStar="true" Width="250px" Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" Label="分店编码"  ID="tbxSHOP_ID" Required="true" ShowRedStar="true" Width="250px"  Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" Label="分店名称"  ID="tbxSHOP_NAME1" Required="true" ShowRedStar="true" Width="250px"  Enabled="false"></f:TextBox>
                                </Items>
                            </f:FormRow>

                            <f:FormRow ColumnWidths="300px">
                                <Items>
                                    <f:DropDownList runat="server" ID="ddlStatus" Required="true" ShowRedStar="true" Label="单据状态" Enabled="false">
                                        <f:ListItem Text="存档" Value="1" Selected="true" />
                                        <f:ListItem Text="核准" Value="2" />
                                        <f:ListItem Text="作废" Value="3" />
                                        <f:ListItem Text="已引入" Value="4" />
                                    </f:DropDownList>
                                    <f:DatePicker ID="dpINPUT_DATE" Label="单据日期" Required="true" Readonly="false" DateFormatString="yyyy-MM-dd" runat="server" ShowRedStar="True" Enabled="false">
                                    </f:DatePicker>
                                    <f:DatePicker ID="dpEXPECT_DATE" Label="期望日期" Required="true" Readonly="false" DateFormatString="yyyy-MM-dd" runat="server" ShowRedStar="True" Enabled="false">
                                    </f:DatePicker>
                                </Items>
                            </f:FormRow>

                            <f:FormRow ColumnWidths="300px">
                                <Items>
                                    <f:TextBox runat="server" Label="厂商编码"  ID="tbxSUP_ID" Required="true" ShowRedStar="true" Width="250px" Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" Label="厂商名称"  ID="tbxSUP_NAME" Required="true" ShowRedStar="true" Width="250px" Enabled="false"></f:TextBox>
                                    <f:DropDownList runat="server" ID="ddlSUP_ID" Required="true" ShowRedStar="true" Label="厂商编码" Enabled="false"></f:DropDownList>
                                    <f:DropDownList runat="server" ID="ddlPAY_STATUS" Required="true" ShowRedStar="true" Label="付款状态" Enabled="false">
                                        <f:ListItem Text="预付" Value="1" Selected="true" />
                                        <f:ListItem Text="全付" Value="2" />
                                    </f:DropDownList>
                                    <f:TextBox runat="server" Label="制单人" ID="tbxUSER_ID" Required="true" ShowRedStar="true" Width="250px" Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" Label="审核人" ID="tbxAPP_USER" Required="true" ShowRedStar="true" Width="250px" Enabled="false"></f:TextBox>
                                    <f:DatePicker ID="dpAPP_DATETIME" Label="审核时间" Required="true" Readonly="true" Enabled="false" DateFormatString="yyyy-MM-dd" runat="server">
                                    </f:DatePicker>
                                </Items>
                            </f:FormRow>

                            <f:FormRow ColumnWidths="300px">
                                <Items>
                                    <f:NumberBox ID="numTOT_AMOUNT" Label="采购总金额" runat="server" NoDecimal="false" DecimalPrecision="6" Enabled="false" ></f:NumberBox>
                                    <f:NumberBox ID="numTOT_TAX" Label="采购总税额" runat="server" NoDecimal="false" DecimalPrecision="6" Enabled="false" ></f:NumberBox>
                                    <f:NumberBox ID="numTOT_QTY" Label="采购总数量" runat="server" NoDecimal="false" DecimalPrecision="6" Enabled="false" ></f:NumberBox>
                                    <f:NumberBox ID="numPRE_PAY" Label="采购预付款" runat="server" NoDecimal="false" DecimalPrecision="6" Enabled="false" ></f:NumberBox>
                                </Items>
                            </f:FormRow>

                            <f:FormRow ColumnWidths="300px">
                                <Items>
                                    <f:TextBox runat="server" ID="tbxPRE_PAY_ID" Label="预付款单号" Enabled="false"></f:TextBox>
                                    <f:DropDownList runat="server" ID="ddlEXPORTED" Required="true" ShowRedStar="false" Label="付款状态">
                                       <f:ListItem Text="已引入" Value="0" Selected="true"/>
                                       <f:ListItem Text="未引入" Value="1" />
                                    </f:DropDownList>
                                    <f:TextBox runat="server" ID="tbxEXPORTED_ID" Label="引入单号" Enabled="false"></f:TextBox>
                                    <f:CheckBox runat="server" ID="chxLOCKED" Enabled="false" Label="月结锁定"></f:CheckBox>
                                </Items>
                            </f:FormRow>

                            <f:FormRow ColumnWidths="300px">
                                <Items>
                                    <f:TextBox runat="server" ID="tbxMemo" Label="备注" Enabled="true"></f:TextBox>
                                </Items>
                            </f:FormRow>
                            <f:FormRow ColumnWidths="300px">
                                <Items>
                                    <f:TextBox runat="server" ID="tbxCRT_DATETIME" Label="建档日期" Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" ID="tbxCRT_USER_ID" Label="建档人员" Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" ID="tbxMOD_DATETIME" Label="修改日期" Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" ID="tbxMOD_USER_ID" Label="修改人员" Enabled="false"></f:TextBox>
                                    <f:TextBox runat="server" ID="tbxLAST_UPDATE" Label="最后异动时间" Enabled="false"></f:TextBox>
                                </Items>
                            </f:FormRow>
                        </Rows>
                     </f:Form>
                    </Items>

                    <Items>
                       <f:Panel ID="Panel12" runat="server" Title="商品设定">
                           <Toolbars>
                             <f:Toolbar ID="Toolbar21111" runat="server">
                               <Items>
                                  <f:Button ID="Button4123" runat="server" Text="添加" Icon="Add"></f:Button>
                                  <f:Button ID="Button_Replace" runat="server" Text="替换" Icon="Add" OnClick="btn_Replace"></f:Button>
                               </Items>
                             </f:Toolbar>
                           </Toolbars>
                           <Items>
                              <f:Grid ID="Grid2" Title="采购作业子表" EnableFrame="false" EnableCollapse="true" ShowHeader="false" runat="server" Height="600px"
                                   DataKeyNames="Id" EnableColumnLines="true" AllowPaging="true"
                                    EnableCheckBoxSelect="true" AllowCellEditing="true" ClicksToEdit="1"> 
                                      <Columns>
                                        <f:RowNumberField />
                                        <f:RenderField Width="130px" ColumnID="Id" DataField="Id" FieldType="String" Hidden="true"
                                                HeaderText="编码">
                                                <Editor>
                                                    <f:TextBox ID="tbxId" runat="server" Required="true" ShowRedStar="true">
                                                    </f:TextBox>
                                                </Editor>
                                        </f:RenderField>
                                        <f:RenderField Width="130px" ColumnID="SHOP_ID01" DataField="SHOP_ID" FieldType="String" Enabled="false"
                                                HeaderText="采购分店编号">
                                                <Editor>
                                                    <f:TextBox ID="tbxSHOP_ID01" runat="server" Required="true" ShowRedStar="true" Enabled="false">
                                                    </f:TextBox>
                                                </Editor>
                                        </f:RenderField>
                                        <f:RenderField Width="130px" ColumnID="Purchase_ID01" DataField="Purchase_ID" FieldType="String" Enabled="false"
                                                HeaderText=" 采购单号">
                                                <Editor>
                                                    <f:TextBox ID="tbxPurchase_ID01" runat="server" Required="true" ShowRedStar="true" Enabled="false">
                                                    </f:TextBox>
                                                </Editor>
                                        </f:RenderField>
                                        <f:RenderField Width="130px" ColumnID="SNo01" DataField="SNo" FieldType="String" Enabled="false"
                                                HeaderText=" 序号">
                                                <Editor>
                                                    <f:TextBox ID="tbxSNo" runat="server" Required="true" ShowRedStar="true" Enabled="false">
                                                    </f:TextBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="PROD_ID01" DataField="PROD_ID" FieldType="String" Enabled="false"
                                                HeaderText="商品编码">
                                                <Editor>
                                                    <f:TextBox ID="tbxPROD_ID" runat="server" Required="true" ShowRedStar="true" Enabled="false">
                                                    </f:TextBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="QUANTITY01" DataField="QUANTITY" FieldType="Int"
                                                HeaderText="最小单位数量">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numQUANTITY" NoNegative="true" DecimalPrecision="6" Enabled="false"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="STD_UNIT01" DataField="STD_UNIT" FieldType="String" Enabled="false"
                                                HeaderText="采购单位">
                                                <Editor>
                                                    <f:TextBox ID="tbxSTD_UNIT01" runat="server" Required="true" ShowRedStar="true" Enabled="false">
                                                    </f:TextBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="STD_CONVERT01" DataField="STD_CONVERT" FieldType="Int" Enabled="false" Hidden="false"
                                                HeaderText="标准转换量">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numSTD_CONVERT"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="STD_QUAN01" DataField="STD_QUAN" FieldType="Float" Enabled="false"
                                                HeaderText="标准采购量">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numSTD_QUAN" NoNegative="true" DecimalPrecision="6"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="STD_PRICE01" DataField="STD_PRICE" FieldType="Float" Enabled="false"
                                                HeaderText="标准单价">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numSTD_PRICE" NoNegative="true" DecimalPrecision="6"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="Tax01" DataField="Tax" FieldType="Int" Enabled="false"
                                                HeaderText="税额">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numTax" NoNegative="true" DecimalPrecision="6"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="QUAN101" DataField="QUAN1" FieldType="Int" Enabled="false"
                                                HeaderText="验收量">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numQUAN1" NoNegative="true" DecimalPrecision="6" Enabled="false"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="QUAN201" DataField="QUAN2" FieldType="Int" Enabled="false"
                                                HeaderText="取消量">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numQUAN2" NoNegative="true" DecimalPrecision="6" Enabled="false"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="Item_DISC_Amt01" DataField="Item_DISC_Amt" FieldType="Float" Enabled="false"
                                                HeaderText="折价金额">
                                                <Editor>
                                                    <f:NumberBox runat="server" ID="numItem_DISC_Amt" NoNegative="true" DecimalPrecision="6"></f:NumberBox>
                                                </Editor>
                                         </f:RenderField>
                                         <f:RenderField Width="130px" ColumnID="MEMO" DataField="MEMO" FieldType="String" Enabled="True"
                                                HeaderText="备注">
                                                <Editor>
                                                    <f:TextBox ID="tbxMEMO01" runat="server" Required="true" ShowRedStar="true">
                                                    </f:TextBox>
                                                </Editor>
                                         </f:RenderField>
                                      </Columns>
                              </f:Grid>
                           </Items>
                       </f:Panel>
                    </Items>
                </f:Panel>

                <f:Panel runat="server" ID="panelLeftRegion" EnableFrame="false" RegionPosition="Right" RegionSplit="true" EnableCollapse="true" Expanded="false"
                    Width="400px" Title="采购作业查询" ShowBorder="true" ShowHeader="true"
                    BodyPadding="5px">
                    <Items>
                        <f:RadioButtonList ID="FilterDateRadio" Label="日期" runat="server">
                            <f:RadioItem Text="单据日期" Value="1" Selected="true" />
                            <f:RadioItem Text="期望日期" Value="2"  />
                        </f:RadioButtonList>
                        <f:DatePicker runat="server" Required="true" Label="开始日期" DateFormatString="yyyy-MM-dd" EmptyText="请选择开始日期"
                            ID="DatePicker1" ShowRedStar="True">
                        </f:DatePicker>
                        <f:DatePicker ID="DatePicker2" Required="true" Readonly="false" CompareControl="DatePicker1" DateFormatString="yyyy-MM-dd"
                            CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期" Label="结束日期"
                            runat="server" ShowRedStar="True">
                        </f:DatePicker>
                        <f:Button ID="ButtonSearch" runat="server" Text="查询" Icon="Magnifier" OnClick="BtnSearchOrderDep_click"></f:Button>
                    </Items>
                    <Items>
                       <f:Grid ID="Grid1" Title="采购作业列表" ShowHeader="false" ShowBorder="false" runat="server" DataKeyNames="Id"
                         EnableCheckBoxSelect="true" KeepCurrentSelection="true" EnableMultiSelect="false" PageSize="15" AllowPaging="true"
                         EnableRowClickEvent="true" OnRowClick="Grid1_RowClick" ><%-- --%>
                         <Columns>
                           <f:RowNumberField />
                           <f:BoundField Width="125px" DataField="Purchase_ID" HeaderText="采购单编码" />
                           <f:BoundField Width="125px" DataField="SHOP_ID" HeaderText="分店编码" ExpandUnusedSpace="true"  />
                           <f:BoundField Width="125px" DataField="SHOP_NAME1" HeaderText="分店名称" ExpandUnusedSpace="true"  />
                         </Columns>
                       </f:Grid>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <f:Window ID="Window3" Width="600px" Height="800px" Icon="TagBlue" Hidden="true" BodyPadding="10px"
            EnableMaximize="true" EnableCollapse="true" runat="server" EnableResize="true"
            IsModal="false" CloseAction="HidePostBack" OnClose="Window3_Close" Layout="Fit">
            <%--<Toolbars>
                <f:Toolbar ID="tools" runat="server">
                    <Items>
                        <f:Button ID="ButtonSearchPROD1" runat="server" Text="查询" Icon="Magnifier" </f:Button> OnClick="ButtonPRODSearch2_Click" >
                    </Items>
                </f:Toolbar>
            </Toolbars>--%>
            <Content>
                <f:Panel runat="server" ID="PanelGrid4" RegionPosition="Right" RegionSplit="true" EnableCollapse="true" Expanded="true"
                    Width="400px" Title="商品资料" ShowBorder="true" ShowHeader="true"
                    BodyPadding="5px">
                    <Toolbars>
                        <f:Toolbar runat="server">
                            <Items>
                                 <f:Button ID="BtnEditCon" runat="server" Text="确定" Icon="Magnifier" ></f:Button>
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                    <Items>
                       <f:Grid ID="Grid4" Title="商品资料" ShowHeader="false" ShowBorder="false" runat="server" DataKeyNames="Id"
                         EnableCheckBoxSelect="true" KeepCurrentSelection="false" PageSize="1000" AllowPaging="false"
                         ><%--EnableRowClickEvent="true" OnRowClick="Grid1_RowClick" --%>
                         <Columns>
                           <f:RowNumberField />
                           <f:BoundField Width="125px" DataField="PROD_ID" HeaderText="厂商编码" ExpandUnusedSpace="true"  />
                           <f:BoundField Width="125px" DataField="PROD_NAME1" HeaderText="厂商名称" ExpandUnusedSpace="true"  />
                           <f:BoundField Width="125px" DataField="PROD_ID" HeaderText="商品编号" ExpandUnusedSpace="true"  />
                           <f:BoundField Width="125px" DataField="PROD_NAME1" HeaderText="商品名称" ExpandUnusedSpace="true"  />
                           <f:BoundField Width="125px" DataField="PROD_ID" HeaderText="价格1" ExpandUnusedSpace="true"  />
                           <f:BoundField Width="125px" DataField="PROD_NAME1" HeaderText="价格2" ExpandUnusedSpace="true"  />
                           <f:BoundField Width="125px" DataField="PROD_ID" HeaderText="价格3" ExpandUnusedSpace="true"  />
                         </Columns>
                       </f:Grid>
                    </Items>
                 </f:Panel>
            </Content>
        </f:Window>
    </form>
</body>
</html>