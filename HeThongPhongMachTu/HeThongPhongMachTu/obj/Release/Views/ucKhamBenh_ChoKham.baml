   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  1    +HeThongPhongMachTu.Views.ucKhamBenh_ChoKham   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  2local&clr-namespace:HeThongPhongMachTu.Views  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui     KhamBenh_ChoKhamVM  � DataContext#  [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *DisablePKMoiButtonCommand+   CommandParameter ��  �� ElementName$ buttonPhieuKhamMoi�� � 	Resources  �� 
TargetType	 �� Property
 �� Value��%v   '��       �� " ��.��� 	 �@��BitmapScalingMode$
 HighQuality=��� 	 � ��$
 50���� 	 � ��$

 Left=�.���  � RowDefinitions �� $��8* ��� .+�� $��0�� � ColumnDefinitions �� $��2* ��� $��8* �.+�� $��0��$��0 0 5 0q�.+�]� ��.   /  )DevExpress.Xpf.WindowsUI.NavigationButton��%4   '        �� "  .��� 	 � ��$
 	1 10 1 10q�.+�  $	��Top=����#2F51A5.���  �� �� .+�� $��0��$
��Left=�.+��� $%��../Images/stethoscope_white.png��� $��1��.+��� $��Bệnh nhân chờ khám��
�������$
��Bold"�  $	��Top=�   
NavigateTo$ ucKhamBenh_DaKham��.���  �� �� .+�� $��0��$
��Left=�.+��� $$��../Images/historyicon_gray.PNG��� $��1��.+��� $��Bệnh nhân đã khám��$
��Bold"�� $��1��.+�]� ��. .+��� 
�������$��1q�._��� -    ��Name$ listViewDSChoKham��$��Disabled=�$��Center=����� *ListbenhNhans+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=� ��%1   '��       �� " ��.��� 	 � ��$
 Center=�   $ MouseUp��.    �� *EnablePKMoiButtonCommand+ �� $ buttonPhieuKhamMoi�� �� View �� .P��� $	��STT�� �� Width$ 60�� �� DisplayMemberBinding �� *STT+�� $��Mã BN��$	 100�� �� *MaBN+�� $��Họ và tên��$	 200�� �� *HoTen+�� $��Tuổi��$ 60�� �� *Mail+�� $��Giới tính��$	 150�� �� *
GioiTinh+�� $��Địa chỉ��$	 200�� �� *DiaChi+� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+�  -   $��buttonPhieuKhamMoi��$ ucKhamBenh_PhieuKhamMoi��
������ $��0q�$��0q�$
��auto��$
��auto��   $ Click��.    �� *UpdateSelectedBenhNhan+ �� $ listViewDSChoKham��.���  �� �� .+�� $��0��.+��� $��Center=�$��../Images/newicon.PNG��$��50��� $��1��.+��� $��Phiếu khám mới��$��Center=�
�������$��Normal"��� -   $��buttonXemBenhAn��
������ $��0q�$��0q�$
��auto��$
��auto��.���  �� �� .+�� $��0��.+��� $��Center=�$%��../Images/medicalbill_white.PNG��$��50��� $��1��.+��� $��Xem sổ��$��Center=�
�������$��Normal"�