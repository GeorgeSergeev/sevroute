<?php
include("inc/settings.php");
include ("inc/head.php");
//Branch GeorgeFront
?>


<body>

<div class=wrapper>

    <? include("inc/top.php");  ?>


    <div class=infoarea>

       <? include("inc/left.php"); ?>

      <!-- ���������� �������� -->
      <div class=rightpart>

          <!-- ������� ������ -->
          <div class=krohi>
             <a>����� ����������!</a>
          </div>
          <!-- ����� ������� ������  -->

          <?
             include("inc/mainnews.php");
             include("inc/maincatalog.php");
          ?>

      </div>
      <!-- ����� ����������� �������� -->


    </div>


    </td>
    <td>&nbsp;</td>
 </table>
<div>

<? include("inc/end.php"); ?>

</body>
</html>
