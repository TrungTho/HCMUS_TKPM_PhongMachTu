   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  3    -HeThongPhongMachTu.Views.ucNhaThuoc_NhapThuoc   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui    � 	Resources   �� 
TargetType �� Property �� Value��%v   '��       �� " ��.���  �@��BitmapScalingMode$ HighQuality=���  � ��$ 50����  � ��$
 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0�� � ColumnDefinitions �� $��2* ��� $��8* �.+�� $��0��$��0 0 5 0q�.+�]� ��.    /  )DevExpress.Xpf.WindowsUI.NavigationButton��%4   '        �� "  .���  � ��$ 	1 10 1 10q�.+�  $	��Top=�   
NavigateTo$ ucNhaThuoc_ChoNhanThuoc��.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/drug_gray.png��� $��1��.+��� $��Chờ nhận thuốc��$
��Bold"�  ���#2F51A5$	��Top=�.���  �� �� .+�� $��0��$
��Left=�.+��� $#��../Images/inputdrug_white.PNG��� $��1��.+��� $��Nhập thuốc��
�������$
��Bold"�  $	��Top=�$ ucNhaThuoc_ThuocTrongKho��.���  �� �� .+�� $��0��$
��Left=�.+��� $"��../Images/warehouse_gray.PNG��� $��1��.+��� $��Thuốc trong kho��$
��Bold"�� $��1��.+�]� ��. .+��� 
�������$��1q�._��� -    ��Name$ listViewChoThanhToan��$��Center=�  ��%1   '��       �� " ��.���  � ��$ Center=� �� View �� .P��� $	��STT��	 �� Width$	 60��
 �� DisplayMemberBinding
 �� *STT+�� $��Mã BN��$		 100��
 �� *MaBN+�� $��Họ và tên��$		 200��
 �� *HoTen+�� $��Tuổi��$	 60��
 �� *Mail+�� $��Giới tính��$		 150��
 �� *
GioiTinh+�� $��Địa chỉ��$		 200��
 �� *DiaChi+� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+��� -   $��buttonXacNhanNhapThuoc��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$%��../Images/confirmicon_white.PNG��$��50��� $��1��.+��� $��Xác nhận��$��Center=�
�������$��Normal"��� -   $��buttonHuyNhapThuoc��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$$��../Images/cancelicon_white.PNG��$��50��� $��1��.+��� $��Hủy��$��Center=�
�������$��Normal"�