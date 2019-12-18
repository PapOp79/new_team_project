<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script	src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<%request.setCharacterEncoding("UTF-8");%>

<script type="text/javascript">

$("#b1").on( "click", function() {
        $("#myModal").modal();
    });




function testModal(){
 
    var url = "/healthProjectSample/src/main/webapp/WEB-INF/views/exModal/exModal.jsp";
    

    $("#testModal > .modal-dialog").load(url, function() { 
        $("#testModal").modal("show"); 
    });
}

</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="testModal()">sampleModalPopup 버튼</button>
<button type="button" id="b1">b1 버튼</button>

<div class="modal fade" id="myModal" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-dialog-width1000 modal-dialog-height800">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        </div>
        <div class="modal-body">
        </div>
        <div class="modal-footer">
            <button type="button" name="button" class="btn btn-color2" data-dismiss="modal" >닫기</button>
        </div>
    </div>
</div>
</body>


</html>