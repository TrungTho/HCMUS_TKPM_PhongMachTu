   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  0    *HeThongPhongMachTu.Views.ucQuanLy_NhanVien   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui     QuanLy_NhanVienVM  � DataContext#  [   � 	Resources  �� 
TargetType �� Property �� Value��%v   '��       �� " ��.���  �@��BitmapScalingMode$ HighQuality=���  � ��$ 50����  � ��$
 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0�� � ColumnDefinitions �� $��2* ��� $��8* �.+�� $��0��$��0 0 5 0q�.+�]� ��.   /  )DevExpress.Xpf.WindowsUI.NavigationButton��%4   '        �� "  .���  � ��$ 	1 10 1 10q�.+�  $	��Top=����#2F51A5.���  �� �� .+�� $��0��$
��Left=�.+��� $!��../Images/account_white.png��� $��1��$
��Left=�.+��� $$��Nhân viên                   ��
�������$��0q�$
��Bold"�  $	��Top=�   
NavigateTo$ ucQuanLy_ThongKe������ *ShowSomethingCommand+.���  �� �� .+�� $��0��$
��Left=�.+��� $!��../Images/statitic_gray.PNG��� $��1��.+��� $%��Thống kê                    ��$
��Bold"�  $	��Top=�$ ucQuanLy_TaoPhieuThuChi��.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/bill_gray.png��� $��1��.+��� $ ��Phiếu thu chi           ��$
��Bold"�  $	��Top=�$ ucQuanLy_ChinhSuaQuyDinh������ *ShowSomethingCommand+.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/rules_gray.PNG��� $��1��.+��� $!��Chỉnh sửa quy định  ��$
��Bold"�� $��1��.+�]� ��. .+��� 
�������$��1q�._��� -    ��Name$ listViewNhanVien��$��Center=����� *ListNhanVien+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=� ��%1   '��       �� " ��.���  � ��$ Center=� �� View �� .P��� $	��STT�� �� Width$ 60�� �� DisplayMemberBinding �� *STT+�� $��Mã NV��$	 100�� �� *MaNV+�� $��Họ và tên��$	 200�� �� *HoTen+�� $��Tuổi��$ 60�� �� *Tuoi+�� $��Giới tính��$	 150�� �� *SEX+�� $��Địa chỉ��$	 200�� �� *DiaChi+� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+��� -   $��buttonThemMoiNV��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/newicon.PNG��$��50��� $��1��.+��� $��Thêm��$��Center=�
�������$��Normal"��� -   $��buttonXoaNV��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/delicon.PNG��$��50��� $��1��.+��� $
��Xóa��$��Center=�
�������$��Normal"�