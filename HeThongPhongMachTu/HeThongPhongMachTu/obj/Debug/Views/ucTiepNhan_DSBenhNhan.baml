   M S B A M L   `   `   `  ����M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  5      4    .HeThongPhongMachTu.Views.ucTiepNhan_DSBenhNhan   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:HeThongPhongMachTu.Views     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	         TiepNhanDSBenhNhanVM  � DataContext#  [  5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *DisableEditButtonCommand+   CommandParameter 5      ��  �� ElementName$ buttonSuaBenhNhan��5       � 	Resources 5       �� 
TargetType	 �� Property
 �� Value��%�   '��       �� 5   
   " ��6   .�5      �� 	 �@��BitmapScalingMode$
 HighQuality=�6@   �� 5      	 � ��$
 50��6&   �� 5      	 � ��$

 Left=�64   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��8* �6   �� 5      .+�5!   
   � $��0��6    � ColumnDefinitions 5"      �� 5#      $��2* �6#   �� 5$      $��8* �6#   .+�5'      � $��0��6   $��0 0 5 0q�6#   .+�5(      ]� ��.   5)      /  )DevExpress.Xpf.WindowsUI.NavigationButton��%  '        '�� O     �� 5*      "  6    .�5+      �� 	 � ��$
 	1 10 1 10q�67   5,      �� 5-      " ��6    .�5.      �� 	 �@��BitmapScalingMode$
 HighQuality=�6P   �� 5/      	 � ��$
 50��66   �� 50      	 � ��$

 Left=�6D   51      52      .+�54        $	��Top=�6-      
NavigateTo$ ucTiepNhapOptions��6B   .��55      �  56      �� 57   "   �� 58   "   .+�5;      � $��0��6#   $
��Left=�60   .+�5<   "   �� $"��../Images/todayicon_gray.png��6(   5=      � 5?      $��1��6#   .+�5@   "   �� $��Danh sách trong ngày��6(   $
��Bold"�5A   (   5B      5D      5E        5G      $	��Top=�6-   ���#2F51A5.��5H      �  5I      �� 5J   "   �� 5K   "   .+�5N      � $��0��6#   $
��Left=�60   .+�5O   "   �� $%��../Images/listaccount_white.PNG��6(   5P      � 5R      $��1��6#   .+�5S   "   �� $��Danh sách bệnh nhân��6(   
�������$
��Bold"�5U   (   5V      5X      5Y      5[      5\      � 5^      $��1��6   .+�5_      ]� ��. .+�5`      � $	��Top=�6    5a      �� 5b      $��9* �6/   �� 5c      $��1* �6/   .+�5f      � $��0��6   .+�5g      �� -   5        $��searchBarData��5g   &   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm kiếm��5h       % !MaterialDesignFloatingHintTextBox#��[ 5i      5j      � 5l      $��1��6   .+�5m      �� $��50��6%   $��0q�63   $��0q�6>   
������ 
������ .��5o   "   �� $!��../Images/findicon_gray.png��6(    5p   "     5q   &   $ Click��65   . 5r   *      6@   �� *SearchCommand+ 5s   @   �� $ searchBarData��5t   '   5v      5w      5y      �� 5{      
�������$��1q�60   ._�5|      �� -   5         ��Name$ listViewDSBenhNhan��5~      $��Disabled=�5}   #   $��Center=�5      ��5|   #   �� *ListbenhNhans+ �� UpdateSourceTrigger$ PropertyChanged=� 5�        5�   "   $ MouseUp��61   . 5�   &      6<   �� *EnableEditButtonCommand+ 5�   @   �� $ buttonSuaBenhNhan��5�   #    5�      ��%V   '��       �� 5�   "   " ��6(   .�5�   &   �� 	 � ��$
 Center=�6S   5�   #   5�       �� View 5�      �� 5�   "   .P�5�   &   �� $	��STT��65    �� Width$ 60��6B    �� DisplayMemberBinding 6M   �� *STT+�� 5�   &   $��Mã BN��65   $	 100��6D    6P   �� *MaBN+�� 5�   &   $��Họ và tên��65   $	 150��6H    6T   �� *HoTen+�� 5�   &   $��
Ngày sinh��65   $	 100��6H    6T   �� *
NgaySinh+�� 5�   &   $��Giới tính��65   $ 50��6H    6S   �� *SEX+�� 5�   &   $��Địa chỉ��65   $	 300��6F    6R   �� *DiaChi+5�   #   5�      5�      5�      5�      5�      � 5�   
   $��1��6   ���#6A6868$��0q�61   .+�5�      ]� ��.  $��Center=�6.   .+�5�        -   5        $��buttonThemBenhNhan��5�      $ ucTiepNhan_BenhNhanMoi��5�   )   
������ $��0q�5�   .   $��0q�5�      $
��auto��6$   $
��auto��61   .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $��../Images/newicon.PNG��5�   !   $��50��6@   5�      � 5�      $��1��6   .+�5�      �� $��Thêm��6$   $��Center=�63   
�������$��Normal"�5�   (   5�      5�      5�        5�      -   5        $��buttonSuaBenhNhan��5�      $ ucTiepNhan_BenhNhanCu��5�   )   
������ $��0q�5�   .   $��0q�5�      $
��auto��6$   $
��auto��61    5�        5�      $ Click��6)   . 5�         64   �� *UpdateSelectedBenhNhan+ 5�   @   �� $ listViewDSBenhNhan��5�      .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $��../Images/editicon.PNG��5�   !   $��50��6A   5�      � 5�      $��1��6   .+�5�      �� $��Sửa��6$   $��Center=�62   
�������$��Normal"�5�   (   5�      5�      5�      �� 5�      -   5        $��buttonXoaBenhNhan��5�      
������ $��0q�5�   .   $��0q�5�      $
��auto��6$   $
��auto��61   .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $��../Images/delicon.PNG��5�   !   $��50��6@   5�      � 5�      $��1��6   .+�5�      �� $
��Xóa��6$   $��Center=�62   
�������$��Normal"�5�   (   5�      5�      5�      5�      5�      5�      5�      