<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
.test_table {
	border-collapse: collapse;
	margin: 50px;
}
.test_table td {
	border: 1px solid;
	box-sizing: border-box;
	width: 100px;
	height: 100px;
}
#border_no {
	border: 0;
}
</style>
<section>	
	<table class="test_table">
	    <tr>
	        <td id="cell-7"></td>
	        <td id="cell-8"></td>
	        <td id="cell-9"></td>
	        <td id="cell-10"></td>
	    </tr>
	    <tr>
	        <td id="cell-6"></td>
	        <td id="border_no" onclick=""><button>start</button></td>
	        <td id="border_no" onclick=""><button>stop</button></td>
	        <td id="cell-11"></td>
	    </tr>
	    <tr>
	        <td id="cell-5"></td>
	        <td id="border_no"></td>
	        <td id="border_no"></td>
	        <td id="cell-12"></td>
	    </tr>
	    <tr>
	        <td id="cell-1"></td>
	        <td id="cell-2"></td>
	        <td id="cell-3"></td>
	        <td id="cell-4"></td>
	    </tr>
	</table>
</section>

<script>
const cell = document.getElementById(cell-1);
cell.style.backgroundColor = 'red';
document.addEventListener('keydown', function(event) {
	if (event.code === 'K')
});

</script>

</body>
</html>