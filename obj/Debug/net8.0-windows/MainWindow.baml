   M S B A M L   `   `   `  ����A  =Tetris, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TetrisTetris  5   	       Tetris.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Tetris     5   	   -   5          � Title$  Xếp hình��5   	   $	��600��6   $	��800��6'   $	��600��5	   	   $	��600��6   
�������$��Segoe UI Light)�5   	   $��28(�6%   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $��* �6   ��5   
   �� 5       �� ImageSource$ Assets/Background.png��6   .+�5   
   (� $��1��6   $��1��5      .��5       �� -   5         ��Name$ 
GameCanvas��5       ���#101010$	��250��5"      $	��510��5#      $��0,0,0,20q�5$      $
}�True��5%      5&      5'      �� 5)   
   -   5         ��Name$ 	ScoreText��5)      $��0��5*      $��1��5+      $��ĐIỂM SỐ��5,      $��0,2,0,18q�5-       �� TextAlignment$ Center=�5.      �� 50   
   -   5        $ MaxScoreText��50      $��0��51      $��1��52      $��ĐIỂM CAO NHẤT��53      $��12(�54      $��0,39,0,0q�55      $ Center=�56      �� 58   
   $��1��6   $��0��59      $��Center=�5:      $��Right=�5;      .+�5<      �� $��GIỮ��6   $ Center=�5=      �� 5?      -   5         ��Name$ 	HoldImage��5?      $��20q�5@      $	��125��5A      5B      �� 5D   
   $��1��6   $��2��5E      $��Center=�5F      $
��Left=�5G      .+�5H      �� $��kẾ TIẾP��6   $ Center=�5I      �� 5K      -   5        $ 	NextImage��5K      $��20q�5L      $	��125��5M      5N      � 5P   
   -   5         �Name$ GameOverMenu��5P      ���	#CC000000$��2��5R      $��3��5S      $y�Hidden=�5T      .+�5U      �� $��Center=�6   $��Center=�5V      .+�5W      �� $��
Game Over!��6   $��48(�5X      $ Center=�5Y      �� 5Z      -   5        $ FinalScoreText��5Z      $��Score: ��5[      $��36(�5\      $ Center=�5]      �� 5^      -	   5        $��CHƠI LẠI��5^      ���#1FE6A0
�������$��0,20,0,0q�5a      $��5q�5b      5c      5d      5e      �� 5g   
   -
   5        	 ��Name$	 Overlay��5g      $y�Hidden=�5h      $��1��5i      $��1��5j      ���	#7f000000
 �� EdgeMode$
 Aliased=�5o      ��5l      ��  �� Path$ ActualWidth� �� ElementName$ 
GameCanvas����5m      �� $ ActualHeight�$ 
GameCanvas����5n      �� $ Margin�$ 
GameCanvas��._�5p      �� $&�� ẤN NÚT BẤT KỲ ĐỂ CHƠI��6   $��20(�5q      $��Center=�5r      $��Center=�5s      5t      5u      5v      