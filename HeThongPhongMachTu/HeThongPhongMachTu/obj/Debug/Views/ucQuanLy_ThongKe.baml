   M S B A M L   `   `   `  ����M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  5      /    )HeThongPhongMachTu.Views.ucQuanLy_ThongKe   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      2local&clr-namespace:HeThongPhongMachTu.Views  5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5	         QuanLy_ThongKeVM  � DataContext#  [  5      
������� � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  �@��BitmapScalingMode$ HighQuality=�6@   �� 5       � ��$ 50��6&   �� 5       � ��$
 Left=�64   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��8* �6   �� 5      .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      $��2* �6#   �� 5       $��8* �6#   .+�5#      � $��0��6   $��0 0 5 0q�6#   .+�5$      ]� ��.   5%      /  )DevExpress.Xpf.WindowsUI.NavigationButton��%Y   '        �� 5&      "  6    .�5'      ��  � ��$ 	1 10 1 10q�67   5(      5)      .+�5+        $	��Top=�6-      
NavigateTo$ ucQuanLy_NhanVien��6B   .��5,      �  5-      �� 5.   "   �� 5/   "   .+�52      � $��0��6#   $
��Left=�60   .+�53   "   �� $ ��../Images/account_gray.png��6(   54      � 56      $��1��6#   $
��Left=�60   .+�57   "   �� $$��Nhân viên                   ��6(   $��0q�58   (   $
��Bold"�59   (   5:      5<      5=        5?      ���#2F51A5$	��Top=�5@      ��5?   -   �� *ShowSomethingCommand+.��5A      �  5B      �� 5C   "   �� 5D   "   .+�5G      � $��0��6#   $
��Left=�60   .+�5H   "   �� $��../Images/statitic.PNG��6(   5I      � 5K      $��1��6#   .+�5L   "   �� $%��Thống kê                    ��6(   
�������$
��Bold"�5N   (   5O      5Q      5R        5T      $	��Top=�6-   $ ucQuanLy_TaoPhieuThuChi��6B   .��5U      �  5V      �� 5W   "   �� 5X   "   .+�5[      � $��0��6#   $
��Left=�60   .+�5\   "   �� $��../Images/bill_gray.png��6(   5]      � 5_      $��1��6#   .+�5`   "   �� $ ��Phiếu thu chi           ��6(   $
��Bold"�5a   (   5b      5d      5e        5g      $	��Top=�5h      $ ucQuanLy_ChinhSuaQuyDinh��6.   ��5g   -   �� *ShowSomethingCommand+.��5i      �  5j      �� 5k   "   �� 5l   "   .+�5o      � $��0��6#   $
��Left=�60   .+�5p   "   �� $��../Images/rules_gray.PNG��6(   5q      � 5s      $��1��6#   .+�5t   "   �� $!��Chỉnh sửa quy định  ��6(   $
��Bold"�5u   (   5v      5x      5y      5{      5|      � 5~      $��1��6   .+�5      �  5�      �� 5�      .+�5�      � $��0��6   .+�5�      ]� ��. .+�5�      � $	��Top=�6#    5�   "   �� 5�   &   �� 5�   &   .+�5�   "   (  "System.Windows.Controls.DatePicker  -   5        $��textBoxNgayBatDau��5�   =   $��0��6-   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ngày bắt đầu��5�   %    ( $MaterialDesignFloatingHintDatePicker#��[ 5�   %   .  (System.Windows.Interactivity.Interaction	   Triggers	 5�   &   /  )System.Windows.Interactivity.EventTrigger  5�   *   
   	EventName$
 SelectedDateChanged��69   .  (System.Windows.Interactivity.TriggerBase   Actions. 5�   .   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6D   �� *UpdateNgayBatDauCommand+   CommandParameter 5�   D   ��  �� ElementName$ textBoxNgayBatDau��5�   +   5�   #     5�   "   -   5        $��textBoxNgayKetThuc��5�   =   $��1��6-   $ Ngày kết thúc��5�   %   #��[ 5�   %   	 5�   &     5�   *   $
 SelectedDateChanged��69   . 5�   .      6D   �� *UpdateNgayKetThucCommand+ 5�   D   �� $ textBoxNgayKetThuc��5�   +   5�   #   5�      �� 5�      
�������$��1q�68   ._�5�   "   �  5�   &   �� 5�   *   �� 5�   *   �� 5�   *   �� 5�   *   .+�5�   &   #  MaterialDesignThemes.Wpf.Card  $	��200��6:   $��0��6J   $��5q�6Z   ���#03a9f4 ! PrimaryHueDarkForegroundBrush#���  5�   )   $��0q�5�   )   $	��200��66   .��5�   *   �  5�   .   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   .+�5�   .   �� $��0��68   $��
16 16 16 4q�6E   $��20(�6Y   
Tổng thu5�   /   �� 5�   .   $��1��5�   1      MaterialDesignLightSeparator#��[ 5�   1   �� 5�   .   $��24(�5�   1   $��2��5�   1   $��	16 0 16 8q�5�   1   $��Center=�5�   1   $
��Left=�5�   1      MaterialDesignBody2TextBlock#��[ 5�   1   ��5�   1   �� *thongke.TongThu+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5�   /   5�   +   5�   '     5�   &   $	��200��6:   $��1��6J   $��5q�6Z   ���#03a9f4#���  5�   )   $��0q�5�   )   $	��200��66   .��5�   *   �  5�   .   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   .+�5�   .   �� $��0��68   $��
16 16 16 4q�6E   $��20(�6Y   
Tổng chi5�   /   �� 5�   .   $��1��5�   1   #��[ 5�   1   �� 5�   .   $��24(�5�   1   $��2��5�   1   $��	16 0 16 8q�5�   1   $��Center=�5�   1   $
��Left=�5�   1   #��[ 5�   1   ��5�   1   �� *thongke.TongChi+$ PropertyChanged=�$ TwoWay=�5�   /   5�   +   5�   '     5�   &   $	��200��6:   $��2��6J   $��5q�6Z   ���#03a9f4#���  5�   )   $��0q�5�   )   $	��200��66   .��5�   *   �  5�   .   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   .+�5�   .   �� $��0��68   $��
16 16 16 4q�6E   $��20(�6Y   Lượt khám5�   /   �� 5�   .   $��1��5�   1   #��[ 5�   1   �� 5�   .   $��24(�5�   1   $��2��5�   1   $��	16 0 16 8q�5   1   $��Center=�5  1   $
��Left=�5  1   #��[ 5  1   ��5  1   �� *thongke.LuotKham+$ PropertyChanged=�$ TwoWay=�5  /   5  +   5  '     5
  &   $	��200��6:   $��3��6J   $��5q�6Z   ���#03a9f4#���  5  )   $��0q�5  )   $	��200��66   .��5  *   �  5  .   �� 5  2   $
��Auto �6@   �� 5  2   $
��Auto �6@   �� 5  2   $
��Auto �6@   .+�5  .   �� $��0��68   $��
16 16 16 4q�6E   $��20(�6Y   Số thuốc nhập5  /   �� 5  .   $��1��5  1   #��[ 5  1   �� 5  .   $��24(�5  1   $��2��5  1   $��	16 0 16 8q�5  1   $��Center=�5  1   $
��Left=�5   1   #��[ 5!  1   ��5"  1   �� *thongke.SLThuocNhap+$ PropertyChanged=�$ TwoWay=�5#  /   5%  +   5&  '   5(  #   5)     5*     5+     5-     5/     51     � 53  
   $��1��6   ���#6A6868$��0q�61   .+�54     ]� ��.  $��Center=�6.   .+�56     �� -   5        $��buttonInPhieuThuChi��56     
������ $��0q�57  .   $��0q�58     $
��auto��6$   $
��auto��61   .��59     �  5:     �� 5;     �� 5<     .+�5?     � $��0��6   .+�5@     �� $��Center=�6$   $#��../Images/printicon_white.PNG��5A  !   $��50��6H   5B     � 5D     $��1��6   .+�5E     �� $��In��6$   $��Center=�61   
�������$��Normal"�5G  (   5H     5I     	 5J       5K     $
 Click��6)   . 5L        64   �� *ShowSomeThing+5N     5P     5R     5T     5U     5V     