   M S B A M L   `   `   `  ���� M  IHeThongPhongMachTu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:HeThongPhongMachTu.ViewsHeThongPhongMachTu.Views  6    0HeThongPhongMachTu.Views.ucNhaThuoc_ChiTietThuoc   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:HeThongPhongMachTu.Views     V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  e aDevExpress.Xpf.Controls.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity     NhaThuoc_CTThuocVM  � DataContext#  [  
�������.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadDataCommand+ � 	Resources  �� 
TargetType �� Property �� Value��%`   '��       �� " ��.���  �@��BitmapScalingMode$ HighQuality=���  � ��$
 Left=�.��� 	 � RowDefinitions	 �� $��8* ��� .+�� $��0��$��	20 0 20 0q�	 �� $��2* ��� $��3* ��� $��1* �.+�� $��0��	 �� �� �� .+�� $��0��
 � ColumnDefinitions
 �� $��2* ��� $��2* ��� �� .+��� $��0��$��5 0 5 0q�{�.  )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã BN�� J� Opacity$ 1Q� % !MaterialDesignFloatingHintTextBox#��[ ���� *
TmpBN.MaBN+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� $��1��$��5 0 5 0q�{�.  $ 	Họ tên��$ 1Q�#��[ ���� *TmpBN.HoTen+$ PropertyChanged=�$ TwoWay=��� $��2��$��5 0 5 0q�{�.  $ Tuổi��$ 1Q�#��[ ���� *
TmpBN.Tuoi+$ PropertyChanged=�$ TwoWay=��� $��3��$��5 0 5 0q�{�.  $ Giới tính��$ 1Q�#��[ ���� *	TmpBN.SEX+$ PropertyChanged=�$ TwoWay=�� $��1��
 �� $
��193* ��� $	��92* ��� $	��95* �.+��� $��0��$��5 0 5 0q�{�.  $ Địa chỉ��#��[ $��2������ *TmpBN.DiaChi+$ PropertyChanged=�$ TwoWay=��� $��2��$��5 0 5 0q�{�.  $ Nghề nghiệp��$ 1Q�#��[ ���� *TmpBN.NgheNghiep+$ PropertyChanged=�$ TwoWay=�� $��2��.+��� -   $��textBoxChiDinh��$��5 0 5 0q�{�.   � ForceCursor . $ Chẩn đoán��$ 1Q�#��[ ���� *TmpPhieuKham.ChanDoan+$ PropertyChanged=�$ TwoWay=��� $��1��
�������$��1q�._��� -    ��Name$ listViewChiDinhDungThuoc��$��Disabled=�$��Center=����� *ListChiDinhThuoc+$ PropertyChanged=� ��%1   '��       �� " ��.���  � ��$ Center=� �� View �� .P��� $	��STT�� �� Width$ 60�� �� DisplayMemberBinding �� *STT+�� $��Tên thuốc��$	 200�� �� *
TenThuoc+�� $��Số lượng��$ 60�� �� *	SoLuong+�� $	��DVT��$	 150�� �� *MaDV+�� $��Ghi chú��$	 200�� �� *GhiChu+� $��2��
��� ���.+��� $��0��
�������$��1q�._��� $��Center=�$��Center=�
���  ��$��ĐÃ THANH TOÁN��$
��Bold"�$��Italic$�$��30(�� $��1�����#6A6868$��0q�.+�]� ��.  $��Center=�.+�/  )DevExpress.Xpf.WindowsUI.NavigationButton  
������ $��0q�   
NavigateTo$ ucNhaThuoc_ChoNhanThuoc��$��0q�$
��auto��$
��auto��.��� 	 �� �� .+�� $��0��.+��� $��Center=�$%��../Images/confirmicon_white.PNG��$��50��� $��1��.+��� $��Xác nhận��$��Center=�
�������$��Normal"�   $ Click��.    �� *UpdateDataToDBCommand+  $ ucNhaThuoc_ChoNhanThuoc��
������ $��0q�$��0q�$
��auto��$
��auto��.��� 	 �� �� .+�� $��0��.+��� $��Center=�$$��../Images/cancelicon_white.PNG��$��50��� $��1��
 �� $	��21* ��� $��4* �.+��� $��Hủy��$��Center=�
�������$��Normal"�$��10,0,1.661,0q�