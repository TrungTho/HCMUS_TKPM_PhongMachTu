   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  6    0HeThongPhongMachTu.Views.ucQuanLy_TaoPhieuThuChi   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui     QuanLy_PhieuThuChiVM  � DataContext#  [   � 	Resources  �� 
TargetType �� Property �� Value��%v   '��       �� " ��.���  �@��BitmapScalingMode$ HighQuality=���  � ��$ 50����  � ��$
 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0�� � ColumnDefinitions �� $��2* ��� $��8* �.+�� $��0��$��0 0 5 0q�.+�]� ��.   /  )DevExpress.Xpf.WindowsUI.NavigationButton��%4   '        �� "  .���  � ��$ 	1 10 1 10q�.+�  $	��Top=�   
NavigateTo$ ucQuanLy_NhanVien��.���  �� �� .+�� $��0��$
��Left=�.+��� $ ��../Images/account_gray.png��� $��1��$
��Left=�.+��� $$��Nhân viên                   ��$��0q�$
��Bold"�  $	��Top=�$ ucQuanLy_ThongKe������ *ShowSomethingCommand+.���  �� �� .+�� $��0��$
��Left=�.+��� $!��../Images/statitic_gray.PNG��� $��1��.+��� $%��Thống kê                    ��$
��Bold"�  $	��Top=����#2F51A5.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/bill_white.png��� $��1��.+��� $ ��Phiếu thu chi           ��
�������$
��Bold"�  $	��Top=�$ ucQuanLy_ChinhSuaQuyDinh������ *ShowSomethingCommand+.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/rules_gray.PNG��� $��1��.+��� $!��Chỉnh sửa quy định  ��$
��Bold"�� $��1��.+�]� ��. .+��� -    ��Name$ comboBoxSearchBenhNhan��$��0 5 0 0q�$	��Top=�)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Search��
 �� 
IsEditable
 .    HintOpacity$	 .26Q�.@��� $��Apple���� $��Banana���� $
��Pear���� $��Orange���� 
�������$��1q�._��� -    ��Name$ listViewPhieuThuChi��$��Disabled=�$��Center=����� *ListPhieuThuChi+ �� UpdateSourceTrigger$ PropertyChanged=� ��%1   '��       �� " ��.���  � ��$ Center=� �� View �� .P��� $��Mã Phiếu�� �� Width$	 100�� �� DisplayMemberBinding �� *	MaPhieu+�� $��Mã NV��$	 100�� �� *MaNV+�� $��Ngày lập��$	 100�� �� *	NgayLap+�� $��
Giá trị��$	 150�� �� *GiaTri+�� $��
Nội dung��$	 200�� �� *	NoiDung+� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+��� -   $��buttonThemPhieuThuChi��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/newicon.PNG��$��50��� $��1��.+��� $��Thêm��$��Center=�
�������$��Normal"��� -   $��buttonChinhSuaPhieuThuChi��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/editicon.PNG��$��50��� $��1��.+��� $��Sửa��$��Center=�
�������$��Normal"��� -   $��buttonXoaPhieuThuChi��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/delicon.PNG��$��50��� $��1��.+��� $
��Xóa��$��Center=�
�������$��Normal"�