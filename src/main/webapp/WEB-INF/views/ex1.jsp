<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

$("#b1").on( "click", function() {
    $("#myModal").modal();
});

</script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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