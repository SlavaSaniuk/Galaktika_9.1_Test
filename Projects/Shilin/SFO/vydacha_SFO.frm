.LinkForm 'SFO_ROSTVED01_VYDACHA' Prototype is 'SFO_ROSTVED'
.Group '���⮢�筠� ��������� �� ���ࠧ�������'
.NameInList '��������� �뤠� ���'
.var
  npp:Integer
.endvar
.fields
  CommonFormHeader
  DateToStr(dFrom, 'DD/MM/YYYY')
  fltName:'T:-'
  npp
  Podr
  SFOName
  NeedPer
.endfields
.begin
  npp := 0;
end.
^
��                                              ����������� ���
                                      ����� �뤠� ᯥ殤����, ᯥ殡㢨 ���
                                        ���।��࠭�⥫��� ��ᯮᮡ�������

 �࣠������  �������� "����㣮த��� ���"   ��� "���⥫����"   ����

 ������୮� ���ࠧ�������
                                      �����������������������������������������������������������������������������������������������Ŀ
                                      �      ���     �     ��� ����    �              ������୮�            �          ���          �
                                      �  ��⠢�����  �     ����樨    �             ���ࠧ�������           �     ���⥫쭮��      �
                                      �����������������������������������������������������������������������������������������������Ĵ
                                      ���  @@@@@@@@@@   �                 �                                     �                       �
                                      ���������������������������������������������������������������������������������������������������
�� ��⠭������� 䨫����:��
.{CheckEnter CIRFILTROST
   ^
.}

��������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ����� �                                               �                                                  �          �   ������� �    �
�  ��   �               �������, ���, ����⢮          Ñ��殤����,ᯥ殡�� � �।��࠭��. ��ᯮᮡ����ﴊ�����⢮�   ����祭��    �
����浪�                                               �                ������������                      �          �                �
��������������������������������������������������������������������������������������������������������������������������������������Ĵ
�   1   �                       2                       �                         3                        �     4    �        5       �
.{
.{
.begin
  npp++;
end.
.{?Internal; ��NeedPer�� !=0
��������������������������������������������������������������������������������������������������������������������������������������Ĵ
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&�                �
.}
.if SIZESSFO
.{
.}
.else
.end
.}
����������������������������������������������������������������������������������������������������������������������������-�����������Ĵ��
��.}

 �����ਠ�쭮 �⢥��⢥���� �����  ��                             ��  _____________  ��                                                 ��
                                           ���������               �������                    ����஢�� ������
 ���㪮����⥫� ���ࠧ���������      ��                             ��  _____________  ��                                                 ��
                                           ���������               �������                    ����஢�� ������
    "   " ______________ 20  �.
.endform