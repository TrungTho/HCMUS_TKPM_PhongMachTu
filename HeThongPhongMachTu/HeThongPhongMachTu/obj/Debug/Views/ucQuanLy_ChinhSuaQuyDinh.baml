   M S B A M L   `   `   `  ����M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  5      7    1HeThongPhongMachTu.Views.ucQuanLy_ChinhSuaQuyDinh   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:HeThongPhongMachTu.Views     5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5        � 	Resources  5
       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  �@��BitmapScalingMode$ HighQuality=�6@   �� 5       � ��$ 50��6&   �� 5       � ��$
 Left=�64   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��8* �6   �� 5      .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      $��2* �6#   �� 5      $��8* �6#   .+�5      � $��0��6   $��0 0 5 0q�6#   .+�5      ]� ��.    5      /  )DevExpress.Xpf.WindowsUI.NavigationButton��%Y   '        �� 5       "  6    .�5!      ��  � ��$ 	1 10 1 10q�67   5"      5#      .+�5%        $	��Top=�6-      
NavigateTo$ ucQuanLy_NhanVien��6B   .��5&      �  5'      �� 5(   "   �� 5)   "   .+�5,      � $��0��6#   $
��Left=�60   .+�5-   "   �� $ ��../Images/account_gray.png��6(   5.      � 50      $��1��6#   $
��Left=�60   .+�51   "   �� $$��Nhân viên                   ��6(   $��0q�52   (   $
��Bold"�53   (   54      56      57        59      $	��Top=�5:      $ ucQuanLy_ThongKe��6.   ��59   -   �� *ShowSomethingCommand+.��5;      �  5<      �� 5=   "   �� 5>   "   .+�5A      � $��0��6#   $
��Left=�60   .+�5B   "   �� $!��../Images/statitic_gray.PNG��6(   5C      � 5E      $��1��6#   .+�5F   "   �� $%��Thống kê                    ��6(   $
��Bold"�5G   (   5H      5J      5K        5M      $	��Top=�6-   $ ucQuanLy_TaoPhieuThuChi��6B   .��5N      �  5O      �� 5P   "   �� 5Q   "   .+�5T      � $��0��6#   $
��Left=�60   .+�5U   "   �� $��../Images/bill_gray.png��6(   5V      � 5X      $��1��6#   .+�5Y   "   �� $!��Tạo phiếu thu chi      ��6(   $
��Bold"�5Z   (   5[      5]      5^        5`      $	��Top=�5a      ���#2F51A5��5`   -   �� *ShowSomethingCommand+.��5b      �  5c      �� 5d   "   �� 5e   "   .+�5h      � $��0��6#   $
��Left=�60   .+�5i   "   �� $��../Images/rules_white.PNG��6(   5j      � 5l      $��1��6#   .+�5m   "   �� $!��Chỉnh sửa quy định  ��6(   
�������$
��Bold"�5o   (   5p      5r      5s      5u      5v      � 5x      $��1��6   .+�5y      ]� ��. 5�      5�      5�      � 5�   
   $��1��6   ���#6A6868$��0q�61   .+�5�      ]� ��.  $��Center=�6.   .+�5�      �� -   5        $��buttonThemMoiNV��5�      
������ $��0q�5�   .   $��0q�5�      $
��auto��6$   $
��auto��61   .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $"��../Images/saveicon_white.PNG��5�   !   $��50��6G   5�      � 5�      $��1��6   .+�5�      �� $��Thêm��6$   $��Center=�63   
�������$��Normal"�5�   (   5�      5�      5�      �� 5�      -   5        $��buttonXoaNV��5�      
������ $��0q�5�   .   $��0q�5�      $
��auto��6$   $
��auto��61   .��5�      �  5�      �� 5�      �� 5�      .+�5�      � $��0��6   .+�5�      �� $��Center=�6$   $$��../Images/cancelicon_white.PNG��5�   !   $��50��6I   5�      � 5�      $��1��6   .+�5�      �� $��Hủy��6$   $��Center=�62   
�������$��Normal"�5�   (   5�      5�      5�      5�      5�      5�      5�      