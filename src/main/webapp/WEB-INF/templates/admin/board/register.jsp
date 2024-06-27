<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:url var="actionUrl" value="/admin/board/save"/>

<%--mode에 따라서 등록인지 수정인지 구분
<jsp:include page="_form.jsp"/> -> 공유 할 부분
--%>

<layout:admin title="게시판 등록">
    <h1>게시판 등록</h1>
    <form name="frmSave" method="post" action="${actionUrl}" target="ifrmProcess" autocomplete="off">
        <input type="hidden" name="mode" value="register">
        <jsp:include page="_form.jsp"/>

        <div class="button-group">
            <button type="reset">다시입력</button>
            <button type="submit">등록하기</button>
        </div>
    </form>
</layout:admin>