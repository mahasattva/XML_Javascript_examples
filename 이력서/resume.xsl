<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1">
<xsl:template match="/">
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=euc-kr" />
  <title>이력서</title>
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
  <tr><td align="right" style="font-size:9pt;">(인사서식 제1호) </td></tr>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="600">
   <tr>
      <td rowspan="4" colspan="3" align="center" valign="middle">
        <img width="100" height="120" border="0" alt="사진 100*120 " >
          <xsl:attribute name="src"><xsl:value-of select="book/mypic" /> </xsl:attribute>
        </img>
      </td>
      <td colspan="4"  class="tt">이 력 서</td>
   </tr>

   <tr align="center">
<td width="120" rowspan="2" class="b">성&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 명
</td>
 <td width="120" rowspan="2">
 <xsl:value-of select="book/name" />
<span style="font-size:8pt;">&#160;&#160;&#160;(인)</span></td>
 <td width="240" colspan="2" class="b">주민등록번호</td>
 </tr>
 <tr align="center">
 <td colspan="2"><xsl:value-of select="book/id" /></td>
 </tr>
 <tr align="center">
      <td class="b">생 년 월 일</td>
      <td colspan="3">
       <xsl:value-of select="book/birth/year" /> 년
       <xsl:value-of select="book/birth/month" /> 월
       <xsl:value-of select="book/birth/day" /> 일생 (만
       <xsl:value-of select="book/birth/age" /> 세)
      </td>
  </tr>
  <tr>
 <td colspan="3" align="center" class="b">주&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 소
</td>
      <td colspan="4"  class="pad"><xsl:value-of select="book/adrs" /></td>
  </tr>
 
  <tr align="center">
      <td colspan="3" class="b">호 적 관 계</td>
      <td width="120" class="b">호주와의 관계</td>
      <td width="120"><xsl:value-of select="book/hojuk/rel" /></td>
      <td width="120" class="b">호주성명</td>
      <td width="120"><xsl:value-of select="book/hojuk/hojuname" /></td>
  </tr>
 
  <tr class="bg">
      <td width="40">년</td>
      <td width="20">월</td>
      <td width="20">일</td>
      <td width="360" colspan="3">학 력 및 경 력 사 항</td>
      <td width="120">발 령 청</td>
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
상기 내용은 사실과 다름없음을 확인합니다.
2012. 9. 1. <xsl:value-of select="book/name" />  (인)
</pre>
</div>
</body>
</html> 
</xsl:template>
</xsl:stylesheet>



