   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  *    $HeThongPhongMachTu.Views.ucNhapThuoc   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity     NhaThuoc_NhapThuocVM  � DataContext#  [  
������� � 	Resources  �� 
TargetType �� Property �� Value��%`   '��       �� " ��.���  �@��BitmapScalingMode$ HighQuality=���  � ��$
 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0��$��10q� � ColumnDefinitions �� $��1* ��� $��2* �.+�� $��0��$��	10 0 10 0q� �� $��1* ��� $��8* ��� $��2* �.+�� $��0�� �� $��1* ��� $��5* �.+��� $��1��$��Nhập thuốc��$��Center=�$��Center=�$��20(�$
��Bold"�/  )DevExpress.Xpf.WindowsUI.NavigationButton     
NavigateTo$ ucTiepNhan_DSBenhNhan��$��0��
������ 
������ $��0q�$��0q�.���� $��../Images/backicon.png���� $��1��
�������$��2q�._�� $��1��.+��� $��../Images/drugicon.PNG��� $��1��$��	10 0 10 0q�.+�]� ��.  .+��� $	��Top=�$��5q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã thuốc�� % !MaterialDesignFloatingHintTextBox#��[ ���� *TmpBenhNhan.MaBN+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=��� $	��Top=�$��5q�$ Tên thuốc��#��[ ���� *TmpBenhNhan.HoTen+$	 PropertyChanged=�$
 TwoWay=�(  "System.Windows.Controls.DatePicker  $	��Top=�$��5q�$ Số lượng�� ( $MaterialDesignFloatingHintDatePicker#��[    Text �� *
NgaySinh+$	 PropertyChanged=�$
 TwoWay=��� $	��Top=�$��5q�$ 
Đơn giá��#��[ ���� *TmpBenhNhan.DiaChi+$	 PropertyChanged=�$
 TwoWay=��� $	��Top=�$��5q�$ 
Đơn vị��#��[ ���� *TmpBenhNhan.SDT+$	 PropertyChanged=�$
 TwoWay=��� $	��Top=�$��5q�$ 
Thông tin��#��[ ���� *TmpBenhNhan.SDT+$	 PropertyChanged=�$
 TwoWay=�� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+��� 
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$"��../Images/saveicon_white.PNG��$��50��� $��1��.+��� $��Xác nhận��$��Center=�
�������$��Normal"�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *SaveCommand+   CommandParameter ��  �� ElementName$ comboBoxSEX��  $ ucTiepNhan_DSBenhNhan��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$$��../Images/cancelicon_white.PNG��$��50��� $��1�� �� $	��21* ��� $��4* �.+��� $��Hủy��$��Center=�
�������$��Normal"�$��10,0,1.661,0q�