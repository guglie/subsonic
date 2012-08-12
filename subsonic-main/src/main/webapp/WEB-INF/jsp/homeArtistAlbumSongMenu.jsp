<h3>
    <c:forTokens items="Artists Albums Songs" delims=" " var="listGroup" varStatus="loopStatus">
        <c:if test="${loopStatus.count > 1}">&nbsp;|&nbsp;</c:if>
        <sub:url var="url" value="home.view">
            <sub:param name="listType" value="${model.listType}"/>
            <sub:param name="listGroup" value="${listGroup}"/>
        </sub:url>

        <c:choose>
            <c:when test="${model.listGroup eq listGroup}">
                <span class="headerSelected">${listGroup}</span>
            </c:when>
            <c:otherwise>
                <a href="${url}">${listGroup}</a>
            </c:otherwise>
        </c:choose>

    </c:forTokens>
</h3>

<c:if test="${model.listType ne 'random'}"><%@ include file="homeQuery.jsp" %></c:if>

<c:if test="${model.listGroup eq 'Songs'}"><%@ include file="homeSongs.jsp" %></c:if>
<c:if test="${model.listGroup eq 'Albums'}"><%@ include file="homeAlbums.jsp" %></c:if>
<c:if test="${model.listGroup eq 'Artists'}"><%@ include file="homeArtists.jsp" %></c:if>