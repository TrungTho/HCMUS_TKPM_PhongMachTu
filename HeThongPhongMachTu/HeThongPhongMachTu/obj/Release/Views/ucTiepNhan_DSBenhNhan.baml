   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  4    .HeThongPhongMachTu.Views.ucTiepNhan_DSBenhNhan   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity     TiepNhanDSBenhNhanVM  � DataContext#  [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *DisableEditButtonCommand+   CommandParameter ��  �� ElementName$ buttonSuaBenhNhan�� � 	Resources  �� 
TargetType	 �� Property
 �� Value��%v   '��       �� " ��.��� 	 �@��BitmapScalingMode$
 HighQuality=��� 	 � ��$
 50���� 	 � ��$

 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0�� � ColumnDefinitions �� $��2* ��� $��8* �.+�� $��0��$��0 0 5 0q�.+�]� ��.   /  )DevExpress.Xpf.WindowsUI.NavigationButton��%�   '        '�� *     �� "  .��� 	 � ��$
 	1 10 1 10q��� " ��.��� 	 �@��BitmapScalingMode$
 HighQuality=��� 	 � ��$
 50���� 	 � ��$

 Left=�.+�  $	��Top=�   
NavigateTo$ ucTiepNhapOptions��.���  �� �� .+�� $��0��$
��Left=�.+��� $"��../Images/todayicon_gray.png��� $��1��.+��� $��Danh sách trong ngày��$
��Bold"�  $	��Top=����#2F51A5.���  �� �� .+�� $��0��$
��Left=�.+��� $%��../Images/listaccount_white.PNG��� $��1��.+��� $��Danh sách bệnh nhân��
�������$
��Bold"�� $��1��.+�]� ��. .+�� $	��Top=� �� $��9* ��� $��1* �.+�� $��0��.+��� -   $��searchBarData��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm kiếm�� % !MaterialDesignFloatingHintTextBox#��[ � $��1��.+��� $��50��$��0q�$��0q�
������ 
������ .���� $!��../Images/findicon_gray.png��   $ Click��.    �� *SearchCommand+ �� $ searchBarData���� 
�������$��1q�._��� -    ��Name$ listViewDSBenhNhan��$��Disabled=�$��Center=����� *ListbenhNhans+ �� UpdateSourceTrigger$ PropertyChanged=�   $ MouseUp��.    �� *EnableEditButtonCommand+ �� $ buttonSuaBenhNhan�� ��%1   '��       �� " ��.��� 	 � ��$
 Center=� �� View �� .P��� $	��STT�� �� Width$ 60�� �� DisplayMemberBinding �� *STT+�� $��Mã BN��$	 100�� �� *MaBN+�� $��Họ và tên��$	 150�� �� *HoTen+�� $��
Ngày sinh��$	 100�� �� *
NgaySinh+�� $��Giới tính��$ 50�� �� *SEX+�� $��Địa chỉ��$	 300�� �� *DiaChi+� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+�  -   $��buttonThemBenhNhan��$ ucTiepNhan_BenhNhanMoi��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/newicon.PNG��$��50��� $��1��.+��� $��Thêm��$��Center=�
�������$��Normal"�  -   $��buttonSuaBenhNhan��$ ucTiepNhan_BenhNhanCu��
������ $��0q�$��0q�$
��auto��$
��auto��   $ Click��.    �� *UpdateSelectedBenhNhan+ �� $ listViewDSBenhNhan��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/editicon.PNG��$��50��� $��1��.+��� $��Sửa��$��Center=�
�������$��Normal"��� -   $��buttonXoaBenhNhan��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/delicon.PNG��$��50��� $��1��.+��� $
��Xóa��$��Center=�
�������$��Normal"�