   M S B A M L   `   `   `  ����M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  5      5    /HeThongPhongMachTu.Views.ucTiepNhan_BenhNhanMoi   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:HeThongPhongMachTu.Views     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      
�������   TiepNhan_BNMoiVM  � DataContext#  [  5       � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  �@��BitmapScalingMode$ HighQuality=�6@   �� 5       � ��$
 Left=�64   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��8* �6   �� 5      .+�5   
   � $��0��6   $��10q�6    � ColumnDefinitions 5      �� 5      $��1* �6#   �� 5      $��1* �6#   �� 5       $��1* �6#   .+�5#      � $��0��6   $��	10 0 10 0q�6#    5$      �� 5%      $��1* �6$   �� 5&      $��8* �6$   �� 5'      $��2* �6$   .+�5*      � $��0��6    5+      �� 5,      $��1* �6+   �� 5-      $��5* �6+   .+�50      �� $��1��6   $��Bệnh nhân mới��6,   $��Center=�51      $��Center=�52      $��20(�53      $
��Bold"�6*   /  )DevExpress.Xpf.WindowsUI.NavigationButton  55         
NavigateTo$ ucTiepNhan_DSBenhNhan��6-   $��0��56      
������ 
������ $��0q�57      $��0q�6(   .��58      �� $��../Images/backicon.png��6    59      5:      �� 5<      $��1��6   
�������$��2q�69   ._�5=      � $��1��6   .+�5>      �� $��../Images/patienticon.PNG��6    5?      5@      5B      � 5D      $��1��6   $��	10 0 10 0q�6#   .+�5E      ]� ��.  .+�5G      �� $	��Top=�6   $��5q�63   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã bệnh nhân��5I      {�.  	 J� Opacity$	 1Q�6Y    % !MaterialDesignFloatingHintTextBox#��[ 5J      ��5H      �� *TmpBenhNhan.MaBN+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� Mode$ TwoWay=�5J      �� 5L      $	��Top=�6   $��5q�63   $ Họ và tên��5N      #��[ 5O      ��5M      �� *TmpBenhNhan.HoTen+$
 PropertyChanged=�$ TwoWay=�5O      (  "System.Windows.Controls.DatePicker  5Q      $	��Top=�6!   $��5q�66   $ 
Ngày sinh��5S       ( $MaterialDesignFloatingHintDatePicker#��[ 5T         Text 5R      �� *
NgaySinh+$
 PropertyChanged=�$ TwoWay=�5T      �� 5V      $	��Top=�6   $��5q�63   $ Địa chỉ��5X      #��[ 5Y      ��5W      �� *TmpBenhNhan.DiaChi+$
 PropertyChanged=�$ TwoWay=�5Y      �� 5[      $	��Top=�6   $��5q�63   $
 SĐT��5]      #��[ 5^      ��5\      �� *TmpBenhNhan.SDT+$
 PropertyChanged=�$ TwoWay=�5^      5`      5a      � 5c      $��2��6   $��	10 0 10 0q�6#   .+�5d      ]� ��.  .+�5f      �� -   5        $��comboBoxSEX��5f   B   $	��Top=�6   $
��5 10q�64   $ Giới tính��5g       & "MaterialDesignFloatingHintComboBox#��[ 5h      .@�5i      �� .��6'   Nam5k      �� 5l      .��6'   Nữ5n      5o      �� 5q      $	��Top=�6   $��5q�63   $
 CMND��5s      #��[ 5t      ��5r      �� *TmpBenhNhan.CMND+$
 PropertyChanged=�$ TwoWay=�5t      �� 5v      $	��Top=�6   $��5q�63   $ Nghề nghiệp��5x      #��[ 5y      ��5w      �� *TmpBenhNhan.NgheNghiep+$
 PropertyChanged=�$ TwoWay=�5y      �� 5{      $	��Top=�6   $��5q�63   $ Cân nặng��5}      #��[ 5~      ��5|      �� *TmpBenhNhan.CanNang+$
 PropertyChanged=�$ TwoWay=�5~      �� 5�      $	��Top=�6   $��5q�63   $ SĐT Người thân��5�      #��[ 5�      ��5�      �� *TmpBenhNhan.SDTNguoiThan+$
 PropertyChanged=�$ TwoWay=�5�      5�      5�      5�      � 5�   
   $��1��6   ���#6A6868$��0q�61   .+�5�      ]� ��.  $��Center=�6.   .+�5�      �� 
������ $��0q�62   $��0q�5�      $
��auto��6$   $
��auto��61   .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $"��../Images/saveicon_white.PNG��5�   !   $��50��6G   5�      � 5�      $��1��6   .+�5�      �� $��Lưu - Chờ khám��6$   $��Center=�6=   
�������$��Normal"�5�   (   5�      5�      .  (System.Windows.Interactivity.Interaction   Triggers 5�      /  )System.Windows.Interactivity.EventTrigger  5�         	EventName$ Click��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 5�      6  0System.Windows.Interactivity.InvokeCommandAction     Command 64   �� *SaveCommand+   CommandParameter 5�   4   ��  �� ElementName$ comboBoxSEX��5�      5�        5�      $ ucTiepNhan_DSBenhNhan��6)   
������ $��0q�5�   .   $��0q�5�      $
��auto��6$   $
��auto��61   .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $$��../Images/cancelicon_white.PNG��5�   !   $��50��6I   5�      � 5�      $��1��6    5�      �� 5�   "   $	��21* �63   �� 5�   "   $��4* �63   .+�5�      �� $��Hủy��6$   $��Center=�62   
�������$��Normal"�5�   (   $��10,0,1.661,0q�6<   5�      5�      5�      5�      5�      5�      5�      