   M S B A M L   `   `   `  ����A  =Tetris, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TetrisTetris  5   	       Tetris.MenuWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Tetris     5   	     � Title$  Xếp hình��5   	   $	��600��6   $	��800��6'   $	��600��5	   	   $	��600��6   
�������$��Segoe UI Light)�5   	   $��38(�6%   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $��* �6   ��5   
   �� 5       �� ImageSource$ Assets/Background.png��6   .+�5   
   �� -   5         ��Name$ GameName��5      $��XẾP HÌNH��5      $��86(�5      $
��Bold"�5       $
��Left=�5!      $��1��5"      $��230,110,0,360q�5#      $��3��5$      �� 5&   
   -   5         ��Name$ PlayGame��5'      $
��Play��5(      $	��250��5)      $��80��5*      ���#1FE6A0
�������$��275,266,275,187q�5-      $��5q�5.      $��3��5/      $��1��50      6   �� 51   
   -   5        $ ScoreHistory��52      $��Score��53      $	��250��54      $��80��55      ���#1FE6A0
�������$��275,403,275,50q�58      $��5q�59      $��3��5:      $��1��5;      5<      5=      5>      