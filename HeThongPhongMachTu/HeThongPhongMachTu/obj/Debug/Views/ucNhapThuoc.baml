   M S B A M L   `   `   `  ����M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  5      *    $HeThongPhongMachTu.Views.ucNhapThuoc   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:HeThongPhongMachTu.Views     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5	      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5         NhaThuoc_NhapThuocVM  � DataContext#  [  5
      
������� � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  �@��BitmapScalingMode$ HighQuality=�6@   �� 5       � ��$
 Left=�64   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��8* �6   �� 5      .+�5   
   � $��0��6   $��10q�6    � ColumnDefinitions 5      �� 5      $��1* �6#   �� 5      $��2* �6#   .+�5!      � $��0��6   $��	10 0 10 0q�6#    5"      �� 5#      $��1* �6$   �� 5$      $��8* �6$   �� 5%      $��2* �6$   .+�5(      � $��0��6    5)      �� 5*      $��1* �6+   �� 5+      $��5* �6+   .+�5.      �� $��1��6   $��Nhập thuốc��6,   $��Center=�5/      $��Center=�50      $��20(�51      $
��Bold"�6*   /  )DevExpress.Xpf.WindowsUI.NavigationButton  53         
NavigateTo$ ucTiepNhan_DSBenhNhan��6-   $��0��54      
������ 
������ $��0q�55      $��0q�6(   .��56      �� $��../Images/backicon.png��6    57      58      �� 5:      $��1��6   
�������$��2q�69   ._�5;      � $��1��6   .+�5<      �� $��../Images/drugicon.PNG��6    5=      5>      5@      � 5B      $��1��6   $��	10 0 10 0q�6#   .+�5C      ]� ��.  .+�5E      �� $	��Top=�6   $��5q�63   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã thuốc��5G       % !MaterialDesignFloatingHintTextBox#��[ 5H      ��5F      �� *TmpBenhNhan.MaBN+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�5H      �� 5J      $	��Top=�6   $��5q�63   $ Tên thuốc��5L      #��[ 5M      ��5K      �� *TmpBenhNhan.HoTen+$	 PropertyChanged=�$
 TwoWay=�5M      (  "System.Windows.Controls.DatePicker  5O      $	��Top=�6!   $��5q�66   $ Số lượng��5Q       ( $MaterialDesignFloatingHintDatePicker#��[ 5R         Text 5P      �� *
NgaySinh+$	 PropertyChanged=�$
 TwoWay=�5R      �� 5T      $	��Top=�6   $��5q�63   $ 
Đơn giá��5V      #��[ 5W      ��5U      �� *TmpBenhNhan.DiaChi+$	 PropertyChanged=�$
 TwoWay=�5W      �� 5Y      $	��Top=�6   $��5q�63   $ 
Đơn vị��5[      #��[ 5\      ��5Z      �� *TmpBenhNhan.SDT+$	 PropertyChanged=�$
 TwoWay=�5\      �� 5^      $	��Top=�6   $��5q�63   $ 
Thông tin��5`      #��[ 5a      ��5_      �� *TmpBenhNhan.SDT+$	 PropertyChanged=�$
 TwoWay=�5a      5c      5d      5h      � 5j   
   $��1��6   ���#6A6868$��0q�61   .+�5k      ]� ��.  $��Center=�6.   .+�5l      �� 
������ $��0q�62   $��0q�5m      $
��auto��6$   $
��auto��61   .��5n      �  5o      �� 5p      �� 5q      .+�5t      � $��0��6   .+�5u      �� $��Center=�6$   $"��../Images/saveicon_white.PNG��5v   !   $��50��6G   5w      � 5y      $��1��6   .+�5z      �� $��Xác nhận��6$   $��Center=�67   
�������$��Normal"�5|   (   5}      5~      .  (System.Windows.Interactivity.Interaction   Triggers 5�      /  )System.Windows.Interactivity.EventTrigger  5�         	EventName$ Click��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 5�      6  0System.Windows.Interactivity.InvokeCommandAction     Command 64   �� *SaveCommand+   CommandParameter 5�   4   ��  �� ElementName$ comboBoxSEX��5�      5�        5�      $ ucTiepNhan_DSBenhNhan��6)   
������ $��0q�5�   .   $��0q�5�      $
��auto��6$   $
��auto��61   .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $$��../Images/cancelicon_white.PNG��5�   !   $��50��6I   5�      � 5�      $��1��6    5�      �� 5�   "   $	��21* �63   �� 5�   "   $��4* �63   .+�5�      �� $��Hủy��6$   $��Center=�62   
�������$��Normal"�5�   (   $��10,0,1.661,0q�6<   5�      5�      5�      5�      5�      5�      5�      