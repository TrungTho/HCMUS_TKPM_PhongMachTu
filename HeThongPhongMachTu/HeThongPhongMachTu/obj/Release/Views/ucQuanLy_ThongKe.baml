   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  /    )HeThongPhongMachTu.Views.ucQuanLy_ThongKe   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  2local&clr-namespace:HeThongPhongMachTu.Views  V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui     QuanLy_ThongKeVM  � DataContext#  [  
������� � 	Resources  �� 
TargetType �� Property �� Value��%v   '��       �� " ��.���  �@��BitmapScalingMode$ HighQuality=���  � ��$ 50����  � ��$
 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0�� � ColumnDefinitions �� $��2* ��� $��8* �.+�� $��0��$��0 0 5 0q�.+�]� ��.   /  )DevExpress.Xpf.WindowsUI.NavigationButton��%4   '        �� "  .���  � ��$ 	1 10 1 10q�.+�  $	��Top=�   
NavigateTo$ ucQuanLy_NhanVien��.���  �� �� .+�� $��0��$
��Left=�.+��� $ ��../Images/account_gray.png��� $��1��$
��Left=�.+��� $$��Nhân viên                   ��$��0q�$
��Bold"�  ���#2F51A5$	��Top=����� *ShowSomethingCommand+.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/statitic.PNG��� $��1��.+��� $%��Thống kê                    ��
�������$
��Bold"�  $	��Top=�$ ucQuanLy_TaoPhieuThuChi��.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/bill_gray.png��� $��1��.+��� $ ��Phiếu thu chi           ��$
��Bold"�  $	��Top=�$ ucQuanLy_ChinhSuaQuyDinh������ *ShowSomethingCommand+.���  �� �� .+�� $��0��$
��Left=�.+��� $��../Images/rules_gray.PNG��� $��1��.+��� $!��Chỉnh sửa quy định  ��$
��Bold"�� $��1��.+��  �� .+�� $��0��.+�]� ��. .+�� $	��Top=� �� �� .+�(  "System.Windows.Controls.DatePicker  -   $��textBoxNgayBatDau��$��0��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ngày bắt đầu�� ( $MaterialDesignFloatingHintDatePicker#��[ .  (System.Windows.Interactivity.Interaction	   Triggers	 /  )System.Windows.Interactivity.EventTrigger  
   	EventName$
 SelectedDateChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *UpdateNgayBatDauCommand+   CommandParameter ��  �� ElementName$ textBoxNgayBatDau��  -   $��textBoxNgayKetThuc��$��1��$ Ngày kết thúc��#��[ 	   $
 SelectedDateChanged��.    �� *UpdateNgayKetThucCommand+ �� $ textBoxNgayKetThuc���� 
�������$��1q�._��  �� �� �� �� .+�#  MaterialDesignThemes.Wpf.Card  $	��200��$��0��$��5q����#03a9f4 ! PrimaryHueDarkForegroundBrush#���  $��0q�$	��200��.���  �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��
16 16 16 4q�$��20(�
Tổng thu�� $��1��   MaterialDesignLightSeparator#��[ �� $��24(�$��2��$��	16 0 16 8q�$��Center=�$
��Left=�   MaterialDesignBody2TextBlock#��[ ���� *thongke.TongThu+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�  $	��200��$��1��$��5q����#03a9f4#���  $��0q�$	��200��.���  �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��
16 16 16 4q�$��20(�
Tổng chi�� $��1��#��[ �� $��24(�$��2��$��	16 0 16 8q�$��Center=�$
��Left=�#��[ ���� *thongke.TongChi+$ PropertyChanged=�$ TwoWay=�  $	��200��$��2��$��5q����#03a9f4#���  $��0q�$	��200��.���  �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��
16 16 16 4q�$��20(�Lượt khám�� $��1��#��[ �� $��24(�$��2��$��	16 0 16 8q�$��Center=�$
��Left=�#��[ ���� *thongke.LuotKham+$ PropertyChanged=�$ TwoWay=�  $	��200��$��3��$��5q����#03a9f4#���  $��0q�$	��200��.���  �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��
16 16 16 4q�$��20(�Số thuốc nhập�� $��1��#��[ �� $��24(�$��2��$��	16 0 16 8q�$��Center=�$
��Left=�#��[ ���� *thongke.SLThuocNhap+$ PropertyChanged=�$ TwoWay=�� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+��� -   $��buttonInPhieuThuChi��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$#��../Images/printicon_white.PNG��$��50��� $��1��.+��� $��In��$��Center=�
�������$��Normal"�	   $
 Click��.    �� *ShowSomeThing+