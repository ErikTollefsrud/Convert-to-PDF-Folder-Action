FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 " 	Created by: Erik Tollefsrud    
 �   8 	 C r e a t e d   b y :   E r i k   T o l l e f s r u d      l     ��  ��     	Created on: 2/13/17     �   ( 	 C r e a t e d   o n :   2 / 1 3 / 1 7      l     ��������  ��  ��        l     ��  ��     	Copyright (c) 2017     �   & 	 C o p y r i g h t   ( c )   2 0 1 7      l     ��  ��     	All Rights Reserved     �   ( 	 A l l   R i g h t s   R e s e r v e d      l     ��   ��    c ]	Script is based on Apple's sample code found in the /Library/Scripts/Folder Actions Scripts/      � ! ! � 	 S c r i p t   i s   b a s e d   o n   A p p l e ' s   s a m p l e   c o d e   f o u n d   i n   t h e   / L i b r a r y / S c r i p t s / F o l d e r   A c t i o n s   S c r i p t s /   " # " l     ��������  ��  ��   #  $ % $ l      & ' ( & x     �� ) *��   ) 1      ��
�� 
ascr * �� +��
�� 
minv + m       , , � - -  2 . 4��   '    Yosemite (10.10) or later    ( � . . 4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r %  / 0 / x    �� 1����   1 2  	 ��
�� 
osax��   0  2 3 2 l     ��������  ��  ��   3  4 5 4 l     ��������  ��  ��   5  6 7 6 j    �� 8�� 0 done_foldername   8 m     9 9 � : :  O r i g i n a l   I m a g e s 7  ; < ; l     ��������  ��  ��   <  = > = i     ? @ ? I     �� A B
�� .facofgetnull���     alis A o      ���� 0 	thefolder 	theFolder B �� C��
�� 
flst C o      ���� 0 thenewitems theNewItems��   @ k     � D D  E F E l     �� G H��   G B < CHECK FOR THE DESTINATION FOLDER WITHIN THE ATTACHED FOLDER    H � I I x   C H E C K   F O R   T H E   D E S T I N A T I O N   F O L D E R   W I T H I N   T H E   A T T A C H E D   F O L D E R F  J K J l     �� L M��   L * $ IF IT DOESN'T EXIST, THEN CREATE IT    M � N N H   I F   I T   D O E S N ' T   E X I S T ,   T H E N   C R E A T E   I T K  O P O O     > Q R Q k    = S S  T U T Z    2 V W���� V H     X X l    Y���� Y I   �� Z��
�� .coredoexnull���     obj  Z n     [ \ [ 4    �� ]
�� 
cfol ] o    ���� 0 done_foldername   \ o    ���� 0 	thefolder 	theFolder��  ��  ��   W k    . ^ ^  _ ` _ I   &���� a
�� .corecrel****      � null��   a �� b c
�� 
kocl b m    ��
�� 
cfol c �� d e
�� 
insh d o    ���� 0 	thefolder 	theFolder e �� f��
�� 
prdt f K    " g g �� h��
�� 
pnam h o     ���� 0 done_foldername  ��  ��   `  i�� i r   ' . j k j m   ' (��
�� ecvwlsvw k n       l m l 1   + -��
�� 
pvew m n   ( + n o n 1   ) +��
�� 
cwnd o o   ( )���� 0 	thefolder 	theFolder��  ��  ��   U  p�� p r   3 = q r q n   3 ; s t s 4   4 ;�� u
�� 
cfol u o   5 :���� 0 done_foldername   t o   3 4���� 0 	thefolder 	theFolder r l      v���� v o      ���� 0 target_folder  ��  ��  ��   R m      w w�                                                                                  MACS  alis    t  Macintosh HD               Ԉ.�H+   >�4
Finder.app                                                      A{�G�        ����  	                CoreServices    Ԉ�      �HA     >�4 >�3 >�2  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   P  x y x l  ? ?�� z {��   z = 7 PROCESS EACH OF THE ITEMS ADDED TO THE ATTACHED FOLDER    { � | | n   P R O C E S S   E A C H   O F   T H E   I T E M S   A D D E D   T O   T H E   A T T A C H E D   F O L D E R y  } ~ } l  ? ?��������  ��  ��   ~   �  l  ? ?��������  ��  ��   �  ��� � Q   ? � � � � � Y   B � ��� � ��� � k   Q ~ � �  � � � r   Q W � � � n   Q U � � � 4   R U�� �
�� 
cobj � o   S T���� 0 i   � o   Q R���� 0 thenewitems theNewItems � o      ���� 0 	this_item   �  � � � l  X X�� � ���   � . ( set the item_info to info for this_item    � � � � P   s e t   t h e   i t e m _ i n f o   t o   i n f o   f o r   t h i s _ i t e m �  � � � l  X X�� � ���   � J D CHECK TO SEE IF THE ITEM IS AN IMAGE FILE OF THE ACCEPTED FILE TYPE    � � � � �   C H E C K   T O   S E E   I F   T H E   I T E M   I S   A N   I M A G E   F I L E   O F   T H E   A C C E P T E D   F I L E   T Y P E �  � � � O   X v � � � k   \ u � �  � � � l  \ \�� � ���   � A ; LOOK FOR EXISTING MATCHING ITEMS IN THE DESTINATION FOLDER    � � � � v   L O O K   F O R   E X I S T I N G   M A T C H I N G   I T E M S   I N   T H E   D E S T I N A T I O N   F O L D E R �  � � � l  \ \�� � ���   � L F IF THERE ARE MATCHES, THEN RENAME THE CONFLICTING FILES INCREMENTALLY    � � � � �   I F   T H E R E   A R E   M A T C H E S ,   T H E N   R E N A M E   T H E   C O N F L I C T I N G   F I L E S   I N C R E M E N T A L L Y �  � � � n  \ c � � � I   ] c�� ����� 0 resolve_conflicts   �  � � � o   ] ^���� 0 	this_item   �  ��� � o   ^ _���� 0 target_folder  ��  ��   �  f   \ ] �  ��� � r   d u � � � c   d s � � � l  d o ����� � I  d o�� � �
�� .coremovenull���     obj  � o   d e���� 0 	this_item   � �� � �
�� 
insh � l  f g ����� � o   f g���� 0 target_folder  ��  ��   � �� ���
�� 
alrp � m   h i��
�� boovtrue��  ��  ��   � m   o r��
�� 
alis � l      ����� � o      ���� 0 target_file  ��  ��  ��   � m   X Y � ��                                                                                  MACS  alis    t  Macintosh HD               Ԉ.�H+   >�4
Finder.app                                                      A{�G�        ����  	                CoreServices    Ԉ�      �HA     >�4 >�3 >�2  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  w w�� � ���   �   PROCESS THE ITEM    � � � � "   P R O C E S S   T H E   I T E M �  ��� � I   w ~�� ����� 0 process_item   �  � � � o   x y���� 0 target_file   �  ��� � o   y z���� 0 	thefolder 	theFolder��  ��  ��  �� 0 i   � m   E F����  � n   F L � � � m   I K��
�� 
nmbr � n  F I � � � 2  G I��
�� 
cobj � o   F G���� 0 thenewitems theNewItems��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 error_message   � �� ���
�� 
errn � o      ���� 0 error_number  ��   � Z   � � � ����� � >  � � � � � l  � � ���~ � o   � ��}�} 0 error_number  �  �~   � m   � ��|�|�� � O   � � � � � k   � � � �  � � � I  � ��{�z�y
�{ .miscactvnull��� ��� obj �z  �y   �  ��x � I  � ��w � �
�w .sysodlogaskr        TEXT � o   � ��v�v 0 error_message   � �u � �
�u 
btns � J   � � � �  ��t � m   � � � � � � �  C a n c e l�t   � �s � �
�s 
dflt � m   � ��r�r  � �q ��p
�q 
givu � m   � ��o�o x�p  �x   � m   � � � ��                                                                                  MACS  alis    t  Macintosh HD               Ԉ.�H+   >�4
Finder.app                                                      A{�G�        ����  	                CoreServices    Ԉ�      �HA     >�4 >�3 >�2  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��   >  � � � l     �n�m�l�n  �m  �l   �  � � � i     � � � I      �k ��j�k 0 resolve_conflicts   �  � � � o      �i�i 0 	this_item   �  ��h � o      �g�g 0 target_folder  �h  �j   � O     { � � � k    z � �  � � � r    	 � � � l    ��f�e � n     � � � 1    �d
�d 
pnam � o    �c�c 0 	this_item  �f  �e   � l      ��b�a � o      �`�` 0 	file_name  �b  �a   �  ��_ � Z   
 z � ��^�] � l  
  ��\�[ � I  
 �Z �Y
�Z .coredoexnull���     obj   n   
  4    �X
�X 
docf o    �W�W 0 	file_name   o   
 �V�V 0 target_folder  �Y  �\  �[   � k    v  r     l   	�U�T	 n    

 1    �S
�S 
nmxt o    �R�R 0 	this_item  �U  �T   o      �Q�Q 0 file_extension    Z    9�P =    o    �O�O 0 file_extension   m     �   r   ! $ l  ! "�N�M o   ! "�L�L 0 	file_name  �N  �M   l     �K�J o      �I�I 0 trimmed_name  �K  �J  �P   r   ' 9 n   ' 7 7  ( 7�H
�H 
ctxt m   , .�G�G  d   / 6 l  0 5 �F�E  [   0 5!"! l  0 3#�D�C# n   0 3$%$ 1   1 3�B
�B 
leng% o   0 1�A�A 0 file_extension  �D  �C  " m   3 4�@�@ �F  �E   l  ' (&�?�>& o   ' (�=�= 0 	file_name  �?  �>   l     '�<�;' o      �:�: 0 trimmed_name  �<  �;   ()( r   : =*+* m   : ;�9�9 + l     ,�8�7, o      �6�6 0 name_increment  �8  �7  ) -�5- T   > v.. k   C q// 010 r   C R232 c   C P454 l  C N6�4�36 b   C N787 b   C L9:9 b   C J;<; b   C F=>= l  C D?�2�1? o   C D�0�0 0 trimmed_name  �2  �1  > m   D E@@ �AA  .< l  F IB�/�.B c   F ICDC o   F G�-�- 0 name_increment  D m   G H�,
�, 
TEXT�/  �.  : m   J KEE �FF  .8 o   L M�+�+ 0 file_extension  �4  �3  5 m   N O�*
�* 
TEXT3 l     G�)�(G o      �'�' 0 new_name  �)  �(  1 H�&H Z   S qIJ�%KI H   S \LL l  S [M�$�#M I  S [�"N�!
�" .coredoexnull���     obj N n   S WOPO 4   T W� Q
�  
docfQ o   U V�� 0 new_name  P l  S TR��R o   S T�� 0 target_folder  �  �  �!  �$  �#  J k   _ iSS TUT l  _ _�VW�  V !  rename to conflicting file   W �XX 6   r e n a m e   t o   c o n f l i c t i n g   f i l eU YZY r   _ g[\[ l  _ `]��] o   _ `�� 0 new_name  �  �  \ l     ^��^ n      _`_ 1   d f�
� 
pnam` n   ` daba 4   a d�c
� 
docfc o   b c�� 0 	file_name  b l  ` ad��d o   ` a�� 0 target_folder  �  �  �  �  Z e�e  S   h i�  �%  K r   l qfgf [   l ohih l  l mj��j o   l m�� 0 name_increment  �  �  i m   m n�� g l     k�
�	k o      �� 0 name_increment  �
  �	  �&  �5  �^  �]  �_   � m     ll�                                                                                  MACS  alis    t  Macintosh HD               Ԉ.�H+   >�4
Finder.app                                                      A{�G�        ����  	                CoreServices    Ԉ�      �HA     >�4 >�3 >�2  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   � mnm l     ����  �  �  n opo l     �qr�  q ( " this sub-routine processes files    r �ss D   t h i s   s u b - r o u t i n e   p r o c e s s e s   f i l e s  p t�t i    !uvu I      �w�� 0 process_item  w xyx o      � �  0 	this_item  y z��z o      ���� 0 dest_folder  ��  �  v k     �{{ |}| l     ��~��  ~ L F NOTE that the variable this_item is a file reference in alias format     ��� �   N O T E   t h a t   t h e   v a r i a b l e   t h i s _ i t e m   i s   a   f i l e   r e f e r e n c e   i n   a l i a s   f o r m a t  } ��� l     ������  � , & FILE PROCESSING STATEMENTS GOES HERE    � ��� L   F I L E   P R O C E S S I N G   S T A T E M E N T S   G O E S   H E R E  � ���� Q     ����� k    \�� ��� r    ��� m    �� ���  � o      ���� "0 terminalcommand terminalCommand� ��� r    
��� m    �� ��� * / u s r / s b i n / c u p s f i l t e r  � o      ����  0 convertcommand convertCommand� ��� O    :��� k    9�� ��� r    ��� l   ������ n    ��� 1    ��
�� 
pnam� o    ���� 0 	this_item  ��  ��  � l     ������ o      ���� 0 	file_name  ��  ��  � ��� r    ��� l   ������ n    ��� 1    ��
�� 
nmxt� o    ���� 0 	this_item  ��  ��  � l     ������ o      ���� 0 file_extension  ��  ��  � ���� Z    9������ =   ��� o    ���� 0 file_extension  � m    �� ���  � r   ! $��� l  ! "������ o   ! "���� 0 	file_name  ��  ��  � l     ������ o      ���� 0 trimmed_name  ��  ��  ��  � r   ' 9��� n   ' 7��� 7  ( 7����
�� 
ctxt� m   , .���� � d   / 6�� l  0 5������ [   0 5��� l  0 3������ n   0 3��� 1   1 3��
�� 
leng� o   0 1���� 0 file_extension  ��  ��  � m   3 4���� ��  ��  � l  ' (������ o   ' (���� 0 	file_name  ��  ��  � l     ������ o      ���� 0 trimmed_name  ��  ��  ��  � m    ���                                                                                  MACS  alis    t  Macintosh HD               Ԉ.�H+   >�4
Finder.app                                                      A{�G�        ����  	                CoreServices    Ԉ�      �HA     >�4 >�3 >�2  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r   ; @��� b   ; >��� o   ; <���� 0 trimmed_name  � m   < =�� ���  . p d f� o      ���� 0 newfilename newFileName� ��� r   A V��� b   A T��� b   A P��� b   A J��� b   A H��� o   A B����  0 convertcommand convertCommand� l  B G������ n   B G��� 1   E G��
�� 
strq� l  B E������ n   B E��� 1   C E��
�� 
psxp� o   B C���� 0 	this_item  ��  ��  ��  ��  � m   H I�� ���    >  � l  J O������ n   J O��� 1   M O��
�� 
strq� l  J M������ n   J M��� 1   K M��
�� 
psxp� o   J K���� 0 dest_folder  ��  ��  ��  ��  � l  P S������ n   P S��� 1   Q S��
�� 
strq� o   P Q���� 0 newfilename newFileName��  ��  � o      ���� "0 terminalcommand terminalCommand� ��� l  W W��������  ��  ��  � ���� I  W \�����
�� .sysoexecTEXT���     TEXT� o   W X���� "0 terminalcommand terminalCommand��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 error_message  � �����
�� 
errn� o      ���� 0 error_number  ��  � O   d ���� k   h ��� ��� I  h m������
�� .miscactvnull��� ��� obj ��  ��  � ���� I  n �����
�� .sysodlogaskr        TEXT� o   n o���� 0 error_message  � ����
�� 
btns� J   r w�� ���� m   r u   �  C a n c e l��  � ��
�� 
dflt m   z {����  ����
�� 
givu m   ~ ����� x��  ��  � m   d e�                                                                                  MACS  alis    t  Macintosh HD               Ԉ.�H+   >�4
Finder.app                                                      A{�G�        ����  	                CoreServices    Ԉ�      �HA     >�4 >�3 >�2  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  �       �� 9	
��   ����������
�� 
pimr�� 0 done_foldername  
�� .facofgetnull���     alis�� 0 resolve_conflicts  �� 0 process_item   ����    �� ,��
�� 
vers��   ����
�� 
cobj  �� ��  ��   �� 9	
��   �� @������
�� .facofgetnull���     alis�� 0 	thefolder 	theFolder�� ������
�� 
flst�� 0 thenewitems theNewItems��   ������������������ 0 	thefolder 	theFolder�� 0 thenewitems theNewItems�� 0 target_folder  �� 0 i  �� 0 	this_item  �� 0 target_file  �� 0 error_message  �� 0 error_number    w����������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p ��o�n�m�l
�� 
cfol
�� .coredoexnull���     obj 
�� 
kocl
�� 
insh
�� 
prdt
�� 
pnam�� 
� .corecrel****      � null
�~ ecvwlsvw
�} 
cwnd
�| 
pvew
�{ 
cobj
�z 
nmbr�y 0 resolve_conflicts  
�x 
alrp�w 
�v .coremovenull���     obj 
�u 
alis�t 0 process_item  �s 0 error_message   �k�j�i
�k 
errn�j 0 error_number  �i  �r��
�q .miscactvnull��� ��� obj 
�p 
btns
�o 
dflt
�n 
givu�m x
�l .sysodlogaskr        TEXT�� �� ;��b  /j  *�����b  l� O��,�,FY hO��b  /E�UO F @k��-�,Ekh ��/E�O� )��l+ O���ea  a &E�UO*��l+ [OY��W 5X  �a  '� *j O�a a kva ka a � UY h	 �h ��g�f�e�h 0 resolve_conflicts  �g �d�d   �c�b�c 0 	this_item  �b 0 target_folder  �f   �a�`�_�^�]�\�[�a 0 	this_item  �` 0 target_folder  �_ 0 	file_name  �^ 0 file_extension  �] 0 trimmed_name  �\ 0 name_increment  �[ 0 new_name   l�Z�Y�X�W�V�U@�TE
�Z 
pnam
�Y 
docf
�X .coredoexnull���     obj 
�W 
nmxt
�V 
ctxt
�U 
leng
�T 
TEXT�e |� x��,E�O��/j  f��,E�O��  �E�Y �[�\[Zk\Z��,l'2E�OkE�O 7hZ��%��&%�%�%�&E�O��/j  ���/�,FOY �kE�[OY��Y hU
 �Sv�R�Q�P�S 0 process_item  �R �O�O   �N�M�N 0 	this_item  �M 0 dest_folder  �Q   
�L�K�J�I�H�G�F�E�D�C�L 0 	this_item  �K 0 dest_folder  �J "0 terminalcommand terminalCommand�I  0 convertcommand convertCommand�H 0 	file_name  �G 0 file_extension  �F 0 trimmed_name  �E 0 newfilename newFileName�D 0 error_message  �C 0 error_number   ����B�A��@�?��>�=��<�;�:�9 �8�7�6�5�4
�B 
pnam
�A 
nmxt
�@ 
ctxt
�? 
leng
�> 
psxp
�= 
strq
�< .sysoexecTEXT���     TEXT�; 0 error_message   �3�2�1
�3 
errn�2 0 error_number  �1  
�: .miscactvnull��� ��� obj 
�9 
btns
�8 
dflt
�7 
givu�6 x�5 
�4 .sysodlogaskr        TEXT�P � ^�E�O�E�O� ,��,E�O��,E�O��  �E�Y �[�\[Zk\Z��,l'2E�UO��%E�O���,�,%�%��,�,%��,%E�O�j W +X  � !*j O�a a kva ka a a  U
�� 
osax��  ascr  ��ޭ