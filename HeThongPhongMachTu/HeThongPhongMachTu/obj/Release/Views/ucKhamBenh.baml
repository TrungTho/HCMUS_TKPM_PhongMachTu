   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  )    #HeThongPhongMachTu.Views.ucKhamBenh   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aDdxnav8http://schemas.devexpress.com/winfx/2008/xaml/navigation  Cdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  ] YDevExpress.Mvvm.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aAdxmvvm2http://schemas.devexpress.com/winfx/2008/xaml/mvvm   OdxwuinBhttp://schemas.devexpress.com/winfx/2008/xaml/windowsui/navigation    � 	Resources   �� 
TargetType �� Property �� Value��%H   '��       �� " ��.���  �@��BitmapScalingMode$ HighQuality=�.��]� ��. .+�'  !DevExpress.Xpf.Navigation.TileBar  $	��Top=�$	��Top=�$	��120�����#DFDFDF  +  %DevExpress.Xpf.Navigation.TileBarItem��%1   '        �� "  .���  � ��$ Center=�.@�/  )DevExpress.Xpf.WindowsUI.NavigationButton  $��60��$	��200�� J� Opacity$	 0.5Q�   
NavigateTo$ 
ucTiepNhan�����#0AB06B$��5q�.��� $��0q� � ColumnDefinitions �� �� .+�� $��0��.+��� $��../Images/list.png��� $��1��.+��� $��Tiếp Nhận��$��Center=�
�������$
��Bold"�$��12(�  $��60��$	��200��
�������$��2q����#0AB06B$��5q�.��� $��0q� �� �� .+�� $��0��.+��� $%��../Images/stethoscope_white.PNG��� $��1��.+��� $��Khám bệnh��$��Center=�
�������$
��Bold"�$��12(�  $ ucThanhToan��$��60��$	��200�����#0AB06B$	 0.5Q�$��5q�.��� $��0q� �� �� .+�� $��0��.+��� $��../Images/payment.png��� $��1��.+��� $��Thanh Toán��$��Center=�
�������$
��Bold"�$��12(�  $ 
ucNhaThuoc��$��60��$	��200�����#0AB06B$	 0.5Q�$��5q�.��� $��0q� �� �� .+�� $��0��.+��� $��../Images/drug.png��� $��1��.+��� $��Nhà thuốc��$��Center=�
�������$
��Bold"�$��12(�  $ ucQuanLy��$��60��$	��200�����#0AB06B$	 0.5Q�$��5q�.��� $��0q� �� �� .+�� $��0��.+��� $��../Images/statitic.png��� $��1��.+��� $��
Quản lý��$��Center=�
�������$
��Bold"�$��12(�.  (DevExpress.Xpf.WindowsUI.NavigationFrame  $��Bottom=�   AnimationType$
 Fade=�2  ,DevExpress.Mvvm.UI.Interactivity.Interaction   	Behaviors @  :DevExpress.Xpf.WindowsUI.Navigation.FrameNavigationService  	   Source.	 1   +HeThongPhongMachTu.Views.ucKhamBenh_ChoKham  1   +HeThongPhongMachTu.Views.ucKhamBenh_ChoKham
   Loaded$
 ucKhamBenh_ChoKham_Loaded��