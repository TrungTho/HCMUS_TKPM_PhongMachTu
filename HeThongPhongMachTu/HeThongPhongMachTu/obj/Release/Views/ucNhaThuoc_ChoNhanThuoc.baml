   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  6    0HeThongPhongMachTu.Views.ucNhaThuoc_ChoNhanThuoc   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity     NhaThuoc_ChoNhanThuocVM  � DataContext#  [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *DisableCTHDButtonCommand+   CommandParameter ��  �� ElementName$ buttonXacNhanThanhToan�� � 	Resources  �� 
TargetType	 �� Property
 �� Value��%v   '��       �� " ��.��� 	 �@��BitmapScalingMode$
 HighQuality=��� 	 � ��$
 50���� 	 � ��$

 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0�� � ColumnDefinitions �� $��2* ��� $��8* �.+�� $��0��$��0 0 5 0q�.+�]� ��.   /  )DevExpress.Xpf.WindowsUI.NavigationButton��%4   '        �� "  .��� 	 � ��$
 	1 10 1 10q�.+�  $	��Top=����#2F51A5.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/drug.png��� $��1��.+��� $��Chờ nhận thuốc��
�������$
��Bold"�  $	��Top=�   
NavigateTo$ ucNhaThuoc_NhapThuoc��.���  �� �� .+�� $��0��$
��Left=�.+��� $"��../Images/inputdrug_gray.PNG��� $��1��.+��� $��Nhập thuốc��$
��Bold"�  $	��Top=�$ ucNhaThuoc_ThuocTrongKho��.���  �� �� .+�� $��0��$
��Left=�.+��� $"��../Images/warehouse_gray.PNG��� $��1��.+��� $��Thuốc trong kho��$
��Bold"�� $��1��.+�]� ��. .+��� 
�������$��1q�._��� -    ��Name$ listViewChoNhanThuoc��$��Disabled=�$��Center=����� *
ListHoaDon+ �� UpdateSourceTrigger$ PropertyChanged=�   $ MouseUp��.    �� *EnableCTHDButtonCommand+ �� $ buttonXacNhanThanhToan�� ��%1   '��       �� " ��.��� 	 � ��$
 Center=� �� View �� .P��� $	��STT�� �� Width$ 60�� �� DisplayMemberBinding �� *STT+�� $��Mã HĐ��$	 100�� �� *MaHD+�� $��Mã BN��$	 100�� �� *MaBN+�� $��Họ và tên��$	 180�� �� *	HoTenBN+�� $��Tổng tiền��$	 120�� �� *TongTienThanhToan+�� $��TT Thanh toán��$	 120�� �� *TTThanhToan+�� $��TT Giao thuốc��$	 120�� �� *TTGiaoThuoc+� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+�  -   $��buttonXacNhanThanhToan��$ ucNhaThuoc_ChiTietThuoc��
������ $��0q�$��0q�$
��auto��$
��auto��   $ Click��.    �� *UpdateSelectedBenhNhan+ �� $ listViewChoNhanThuoc��.���  �� �� .+�� $��0��.+��� $��Center=�$!��../Images/invoice_white.PNG��$��50��� $��1��.+��� $��
Chi tiết��$��Center=�
�������$��Normal"�