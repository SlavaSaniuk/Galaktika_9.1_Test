.LinkForm 'ZARHELB_01_FIO' Prototype is 'ZARHELB'
.NameInList '������ �ଠ �ᯥ�⪨ ���� � ��� ��壠���' 
.var
     text1 : string;
     radioVar: word;
.EndVar
.fields
  CommonFormHeader
  OrganNameStr
  OrganName
  Naim
  MROTstr
  Kod
  TabN
  Fio
  MROT
  Dolj
  ���
  InvGr
  ��࠭�
  ������_�����
  Money
  Saveogr
  Savetarif
  ��
  ����㯨��
  StartWorkbl
  StartWork
  WkEndDays
  ���_�
  �_�
  ���_v
  ���_�ᮢ1
  ���_�ᮢ2
  Mes
  chasf
  chasGr
  SredSumma
  SredPremi
  SredDSum
  SredDPr
  SredKoef
  DaySM
  DaySuMD
  ���_�1
  ���_�
  ���1
  ���2
  Sredchasf
  SredchasGr
  Summaw
  SummawD
  SummOO
  SummOD
  ���_�ᮢ
  �᭮����
  ��࠭�祭��2
  �������⥫쭠�
  CHP10
  CHPD20
  �㬬�
  �㬬��
  ��ᮡ��
  CHP11
  CHPD21
  Datanb
  DatOkb
  ���_��
  SummawK
  SummawDK
  NewKoef
  ��࠭�祭��
  SummaB
  SummaB1
  Sred
  Sredd
  �AT1
  �AT2
  GraphStr
  ����
  ��_���
  ��業�
  ���
  ��������
  �������
  �����2
  Datn
  DaTK
  GraphDayCh
  DNE
  FSS
  PROCENT
  SDZ
  SDZPROC
  OGRANICHEN
  SUMMA3
  Datan
  CH
  CHK
  �⮣��
  �⮣����
  �⮣���
  �⮣��ॢ��
  Datok
  DatZ
  KolDn
  KolDnKon
  SummaO
  SummaD
  SummaFB
  SummaP
  Summa
  AAA1
  STRRK
  RK
  strSumFSS
  SumFSS
  strSumPred
  SumPred
  TotalSumma
  StrNDFL
  NDFL
  strAlim
  alimony
  MesVupl
  text1
  GlavBuh_SignDoc
  GlavBuh
  DataVupl
  LogCross
.endfields
.begin
  RunDialog(Dlg_FIO,radioVar);
  case radioVar of   //� ����ᨬ��� �� ���祭�� radiobutton ����� ���⠥� � ����᪥ ⥪��
   0: {
    text1:='������ �.�.' ;  //
;  //
      };
   1: {
       text1:='��ᠭ������ �.�.';  // 
      };
  end;  //��� case
end.
��          ^
.{
         @@@@@@@@@@@@@@@@@@@@@@@@@ ^
         �������������������������� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �������������������������������������������������Ŀ
         ����ࠧ�������     �������� ����� �  ������� �.�.                                                        �     @@@@      �
         �@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             � &'&&&&&&&&&&&&�
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         ���������� �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&& @@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&& @@@@@    �
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         �@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@�� ࠡ�� ����㯨� @@@@@@@@@@���室��� ���� �� ��ਮ� ����㤮ᯮᮡ���� @@@     �
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         � ����� �@~@@@@@@@���䨪���.��ࠡ�⮪ � ������ࠦ�. �@~@@@@@@@@@@@�@~@@@@@@@@@@�����. �@~@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@�
.{
         �@@@@@@@�&&&&&&&&&�&&&&&&�&'&&&&&&&&&&&&�&'&&&&&&&&&&&�&'&&&&&&&&&&&�&'&&&&&&&&&&�&&&&&&�&'&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&�
.}
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         �       �@~@@@@@@@���䨪�     �᭮���� ��ࠡ�⮪     �@~@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@�
         �       �&&&&&&&&&�&&&&&&�     &'&&&&&&&&&&&&&&&&     �&'&&&&&&&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&�
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         �     �    �    ��    �@~@@@ �   �᭮����   �       � ����.�@~@@@@@@@@@@@�@~@@@@@@@@@ �@~@@@@@@@@�@~@@@@@@@@@�@~@@@@@@@@@@@�
         �          �          �      �   ��ࠡ�⮪  �       �      �@~@@@@@@@@@@@�@~@@@@@@@@@ �@~@@@@@@@@�@~@@@@@@@@@�@~@@@@@@@@@@@�
.{
         �@@@@@@@@@@�@@@@@@@@@@�&&&&&&�&'&&&&&&&&&&&&�&'&&&&&�&&&&&&�&'&&&&&&&&&&&�&'&&&&&&&&&&�&'&&&&&&&&�&'&&&&&&&&&�&'&&&&&&&&&&&�
.}
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         �@~@@@@@@   @~@@@@@@  @@@@@@�@~@@@@�@~@@@@@�@~@@@@@�@~@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@�
.{
         �@@@@@@@@@@ @@@@@@@@@@ @@@@@�@~@@@@�@~@@@@@�&'&&&&&�&'&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&�
.}
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         ��  @@@@@@@@@@@�  �������  �@~@@@@@�@~@@@@@�@~@@@@@@@@@@@@@�@~@@@@@@@@@@@@�@~@@@@@@@@@@@@@�@~@@@@@@@@@@@�  �⮣���� �㬬�  �
         ��� @@@@@@@@@@@�@@@@@@@@@@@�&&&&&&&�&&&&&&&�&'&&&&&&&&&&&&&�&'&&&&&&&&&&&&� &'&&&&&&&&&&&&� &'&&&&&&&&&&�&'&&&&&&&&&&&&&&&&�
         ��������������������������������������������������������������������������������������������������������������������������Ĵ
         �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&   �
         ����������������������������������������������������������������������������������������������������������������������������
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

          �⮣� (�㬬� � �뤠�)          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          @@@@                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          @@@@@@@@@@@@@@@@@@@@            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          �㬬� ��ᮡ�� ����祭� � ���⥦��� ��������� �� ^ �����

                ������� ��壠��� (^)_____________________________

                ������� �������� ��壠��� (^ ^)_________________________

                ���  @@@@@@@@@@

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--------------------------------------------------------------------------------------------------------------------------------
.}
.endform
