#doc
�������� �� �த���
������⢮ �� �� ���㬥���
#end
#ifdef _TOVN_DEI
.linkform 'PrintKol_Sopr_dei' prototype is tovn_dei
#else
.linkform 'PrintKol_Sopr' prototype is tovn
#end
.NameInList '������⢮ �� �� ���㬥���'
.group '�������� �� �த���'
.group '��� ॠ����樨 ���ਠ���'
.group '��室�� ��������'
.var
 sumkolf:double
.endvar
.fields
 CommonFormHeader
 ���⠢騪
 �����_�_���ਯ�஬
 ���
 �᭮����� ��⠎᭮�����

 DoubleToStr( sumkolf, '\2p[|-]36`666`666`666`666`666.88' )
.endfields
.{
.begin
 sumkolf:=0;
 end.
 ^

�࣠������ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

��������� �  ^ �� ^

#ifdef _TOVN_DEI
.if tovn01_dei
#else
.if tovn01
#end
�᭮����� �  ^ �� ^
.end
#ifdef _TOVN_DEI
.if tovn02_dei
#else
.if tovn02
#end
.end
.{
.begin
 sumkolf:=sumkolf+����;
 end.
#ifdef _TOVN_DEI
.{ CHECKENTER TOVN_DEI
.}
#end
.}
#ifdef _TOVN_DEI
.{ CHECKENTER TOVNUSL_DEI
#else
.{ CHECKENTER TOVNUSL
#end
.}
�ᥣ� �� �� ���㬥���: ^
.{
#ifdef _TOVN_DEI
.{ CHECKENTER TOVN_DEI2
.}
#end
.}
.}
.endform
