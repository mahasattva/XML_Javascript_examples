<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1">
<xsl:template match="/">
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=euc-kr" />
  <title>�̷¼�</title>
  <style>
    table {font-size:10pt;line-height:1.8em;}
    .tt   {line-height:65px; font-weight:bold;font-size:20pt;
           letter-spacing:1.5em;text-align:center;background:honeydew;}
    .b    {background:ivory;font-weight:bold;}
    .bg   {font-weight:bold;background:azure;padding-left:10;}
    .pad  {padding-left:10;}

    pre  {font-weight:bold;}
  </style>
</head>

<body bgcolor="white" leftmargin="20" topmargin="20">

<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr><td align="right" style="font-size:9pt;">(�λ缭�� ��1ȣ) </td></tr>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="600">
   <tr>
      <td rowspan="4" colspan="3" align="center" valign="middle">
        <img width="100" height="120" border="0" alt="���� 100*120 " >
          <xsl:attribute name="src"><xsl:value-of select="book/mypic" /> </xsl:attribute>
        </img>
      </td>
      <td colspan="4"  class="tt">�� �� ��</td>
   </tr>

   <tr align="center">
<td width="120" rowspan="2" class="b">��&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ��
</td>
 <td width="120" rowspan="2">
 <xsl:value-of select="book/name" />
<span style="font-size:8pt;">&#160;&#160;&#160;(��)</span></td>
 <td width="240" colspan="2" class="b">�ֹε�Ϲ�ȣ</td>
 </tr>
 <tr align="center">
 <td colspan="2"><xsl:value-of select="book/id" /></td>
 </tr>
 <tr align="center">
      <td class="b">�� �� �� ��</td>
      <td colspan="3">
       <xsl:value-of select="book/birth/year" /> ��
       <xsl:value-of select="book/birth/month" /> ��
       <xsl:value-of select="book/birth/day" /> �ϻ� (��
       <xsl:value-of select="book/birth/age" /> ��)
      </td>
  </tr>
  <tr>
 <td colspan="3" align="center" class="b">��&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ��
</td>
      <td colspan="4"  class="pad"><xsl:value-of select="book/adrs" /></td>
  </tr>
 
  <tr align="center">
      <td colspan="3" class="b">ȣ �� �� ��</td>
      <td width="120" class="b">ȣ�ֿ��� ����</td>
      <td width="120"><xsl:value-of select="book/hojuk/rel" /></td>
      <td width="120" class="b">ȣ�ּ���</td>
      <td width="120"><xsl:value-of select="book/hojuk/hojuname" /></td>
  </tr>
 
  <tr class="bg">
      <td width="40">��</td>
      <td width="20">��</td>
      <td width="20">��</td>
      <td width="360" colspan="3">�� �� �� �� �� �� ��</td>
      <td width="120">�� �� û</td>
  </tr>

  <xsl:for-each select="book/history/card">
  <tr class="pad">
      <td width="40"><xsl:value-of select="year" /></td>
      <td width="20"><xsl:value-of select="month" /></td>
      <td width="20"><xsl:value-of select="day" /></td>
      <td width="360" colspan="3"><xsl:value-of select="memo" /></td>
      <td width="120"><xsl:value-of select="office" /></td>
  </tr>
  </xsl:for-each>
 
</table>
<pre>
��� ������ ��ǰ� �ٸ������� Ȯ���մϴ�.
2012. 9. 1. <xsl:value-of select="book/name" />  (��)
</pre>
</div>
</body>
</html> 
</xsl:template>
</xsl:stylesheet>



