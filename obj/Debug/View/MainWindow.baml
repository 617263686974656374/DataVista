   M S B A M L   `   `   `  ����K  GKMS2_02_LE_03_01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:KMS2_02_LE_03_01.ViewModelKMS2_02_LE_03_01.ViewModel  5   	   =#clr-namespace:KMS2_02_LE_03_01.ViewKMS2_02_LE_03_01.View  5   	   &     KMS2_02_LE_03_01.View.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:KMS2_02_LE_03_01.ViewModel     5   	   4view#clr-namespace:KMS2_02_LE_03_01.View     5   	     � Title$  Good Morning World��5	   	   $	��600��6$   $	��900��61   ���	#FFAFF3EC � 
ResizeMode$ NoResize=�6T    � DataContext 5
      .   (KMS2_02_LE_03_01.ViewModel.MainViewModel  5   
    � 	Resources 5       �� DataType4   .KMS2_02_LE_03_01.ViewModel.WallStreetViewModel*   $KMS2_02_LE_03_01.View.WallstreetView/   )KMS2_02_LE_03_01.ViewModel.ForexViewModel%   KMS2_02_LE_03_01.View.ForexView1   +KMS2_02_LE_03_01.ViewModel.WeatherViewModel'   !KMS2_02_LE_03_01.View.WeatherView-   'KMS2_02_LE_03_01.ViewModel.IssViewModel#	   KMS2_02_LE_03_01.View.IssView1
   +KMS2_02_LE_03_01.ViewModel.WelcomeViewModel'   !KMS2_02_LE_03_01.View.WelcomeView��%w  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5      *, +)(�� �     5      *,
 +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5      	  5      �� 5   
   " 
 6   .R�5        5      5      .��5       � $��10q�6    � ColumnDefinitions 5!   
   �� 5"      $	��160 �6   �� 5#      $��* �6    � RowDefinitions 5%   
   �� 5&      $
��Auto �6   �� 5'      $��* �6   �� 5(      $��50 �6   .+�5,   
   �� $��0��6   $��0��6"   $	��Top=�62   $
��Left=�6J   $��
0,150,10,0q�6e   .+�5-      �� -   5         ��Name$ btnWallstreet��5-      $��
Wallstreet��6,   $	��140��6A   $��
0,10,0,100q�6M      MainButtonStyle#��[  6�   ��6a   �� *WallStreetCommand+6�   �� 5.      -   5        $ 
btnWeather��5.      $��Weather��6)   $	��140��6;   #��[  6j   ��6G   �� *WeatherCommand+6j   5/      �� 52   
   $��0��6   $��2��6&   $��1��67   $��10q�6q   $��Stretch=�6}   $��Stretch=�6�   ���	#FFA0B4C7��6G   �� *CurrentFirstViewModel+6�   �� 55   
   $��2��6   $��1��6&   $��2��66   $��	10,0,10,0q�6u   $��Stretch=�6�   $��Bottom=�6�   ���	#FFA0B4C7��6J   �� *CurrentSecondViewModel+6�   56      57      