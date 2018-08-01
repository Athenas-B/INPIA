<%@tag description="Adresa" pageEncoding="UTF-8"%>
<jsp:useBean id="addressBean" scope="session" class="beany.AdresaBeana"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="addressType" required="true" %>

<table cellpadding="0" cellspacing="0" border="0">
    <tr>
        <td>First Name:&nbsp;</td>
        <td> 
            <input type="text" size="20" 
                   name="${addressType}_firstName" 
                   id="${addressType}_firstName" 
                   value="${addressBean.firstName}"/> 
        </td>
    </tr>
    <tr>
        <td>Last Name:&nbsp;</td>
        <td>
            <input type="text" size="20" 
                   name="${addressType}_lastName" 
                   id="${addressType}_lastName" 
                   value="${addressBean.lastName}"/>
        </td>
    </tr>
    <tr>
        <td>City:&nbsp;</td>
        <td>
            <input type="text" size="20" 
                   name="${addressType}_city" 
                   id="${addressType}_city" 
                   value="${addressBean.city}"/>
        </td>
    </tr>
    <tr>
        <td>State:&nbsp;</td>
        <td>
            <select name="${addressType}_state" 
                    id="${addressType}.state">
                <option value=""></option>
                <option value="AL"
                        <c:if test="${addressBean.state == 'AL'}">
                            selected</c:if>>Alabama
                </option>
                <option value="AK" 
                        <c:if test="${addressBean.state == 'AK'}">
                            selected</c:if>>Alaska
                </optiAon>
                <option value="AZ"
                        <c:if test="${addressBean.state == 'AZ'}">
                            selected</c:if>>Arizona
                </option>
                <option value="AR"
                        <c:if test="${addressBean.state == 'AR'}">
                            selected</c:if>>Arkansas</option>
                <option value="CA"
                        <c:if test="${addressBean.state == 'CA'}">
                            selected</c:if>>California
                </option>
            </select>
        </td>
    </tr>
    <tr>
        <td>Zip:&nbsp;</td>
        <td><input type="text" 
                name="${addressType}_zip" 
                id="${addressType}.zip" 
                value="${addressBean.zip}" />    
        </td>
    </tr>
</table>