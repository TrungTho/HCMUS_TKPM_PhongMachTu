   M S B A M L   `   `   `  ����M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  5      *    $HeThongPhongMachTu.Views.ucThanhToan   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:HeThongPhongMachTu.Views     5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5      OdxwuinBhttp://schemas.devexpress.com/winfx/2008/xaml/windowsui/navigation  5      ] YDevExpress.Mvvm.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aAdxmvvm2http://schemas.devexpress.com/winfx/2008/xaml/mvvm   5	      Ddxnav8http://schemas.devexpress.com/winfx/2008/xaml/navigation  5
         ThanhToanVM  � DataContext#  [  5       � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  �@��BitmapScalingMode$ HighQuality=�6@   �� 5       � ��$ 50��6&   �� 5       � ��$
 Left=�64   5      5      .��5      ]� ��. .+�5   
   '  !DevExpress.Xpf.Navigation.TileBar  $	��Top=�5      $	��Top=�5      $	��120��6&   ���#DFDFDF 5      +  %DevExpress.Xpf.Navigation.TileBarItem��%V   '        �� 5      "  6   .�5      ��  � ��$ Center=�6<   5      5       .@�5"      /  )DevExpress.Xpf.WindowsUI.NavigationButton     
NavigateTo$ 
ucTiepNhan��6%    J� Opacity$	 0.5Q�6=   $��60��6K   $	��200��6W   ���#0AB06B$��5q�5#   '   .��5$      � $��0q�6    � ColumnDefinitions 5%      �� 5&      �� 5'      .+�5*      � $��0��6   .+�5+      �� $��../Images/list.png��6    5-      � 5/      $��1��6   .+�50      �� $��Tiếp Nhận��6    $��Center=�51       
�������$
��Bold"�53      $��12(�54      55      57      58        5:      $ 
ucKhamBenh��6%   $��60��6=   $	��200��6I   ���#0AB06B$	 0.5Q�6j   $��5q�6x   .��5;      � $��0q�6    5<      �� 5=      �� 5>      .+�5A      � $��0��6   .+�5B      �� $%��../Images/stethoscope_white.PNG��6    5D      � 5F      $��1��6   .+�5G      �� $��Khám bệnh��6    $��Center=�5H       
�������$
��Bold"�5J      $��12(�5K      5L      5N      5O        5Q      $��60��6%   $	��200��61   
�������$��2q�6Q   ���#0AB06B$��5q�5R   :   .��5S      � $��0q�6    5T      �� 5U      �� 5V      .+�5Y      � $��0��6   .+�5Z      �� $��../Images/payment.png��6    5\      � 5^      $��1��6   .+�5_      �� $��Thanh Toán��6    $��Center=�5`       
�������$
��Bold"�5b      $��12(�5c      5d      5f      5g        5i      $ 
ucNhaThuoc��6%   $��60��6=   $	��200��6I   ���#0AB06B$	 0.5Q�6j   $��5q�6x   .��5j      � $��0q�6    5k      �� 5l      �� 5m      .+�5p      � $��0��6   .+�5q      �� $��../Images/drug.png��6    5s      � 5u      $��1��6   .+�5v      �� $��Nhà thuốc��6    $��Center=�5w       
�������$
��Bold"�5y      $��12(�5z      5{      5}      5~        5�      $ ucQuanLy��6%   $��60��6;   $	��200��6G   ���#0AB06B$	 0.5Q�6h   $��5q�6v   .��5�      � $��0q�6    5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��../Images/statitic.png��6    5�      � 5�      $��1��6   .+�5�      �� $��
Quản lý��6    $��Center=�5�       
�������$
��Bold"�5�      $��12(�5�      5�      5�      5�      5�      .  (DevExpress.Xpf.WindowsUI.NavigationFrame  5�   
   -   5        $��frameThanhToan��5�       $��Bottom=�5�         AnimationType$
 Fade=�6%   2  ,DevExpress.Mvvm.UI.Interactivity.Interaction	   	Behaviors	 5�      @  :DevExpress.Xpf.WindowsUI.Navigation.FrameNavigationService  5�      
   Source.
 5�      7   1HeThongPhongMachTu.Views.ucThanhToan_ChoThanhToan  6/   5�      5�      5�      