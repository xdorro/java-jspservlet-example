<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>List Category</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<style>
    .center {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
</style>
<body>
<header>

</header>
<main>
    <div class="container">
        <a href="CategoryController" class="btn btn-sm btn-primary">Category</a>
        <a href="ProductController" class="btn btn-sm btn-info">Product</a>

        <h2>List Category</h2>

        <form action="CategoryController?action=search" method="post">
            <div class="mb-3 form-group">
                <input class="form-control" type="text" name="Keyword" id="Keyword" placeholder="Search category..."
                       value="${search}">
            </div>
            <div class="mb-3 form-group">
                <button type="submit" class="btn btn-success">Search</button>
            </div>
        </form>

        <table class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>CateId</th>
                <th>CateName</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="c">
                <tr>
                    <td>${c.getCateId()}</td>
                    <td>${c.getCateName()}</td>
                    <td>${c.getDescription()}</td>
                    <td>
                        <a href="CategoryController?action=edit&CateId=${c.getCateId()}"
                           class="btn btn-warning btn-sm">Update</a>
                        <a href="CategoryController?action=delete&CateId=${c.getCateId()}"
                           class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>
            <a href="CategoryController?action=create" class="btn btn-primary">Add new</a>
        </div>
    </div>
</main>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script>
    <c:if test="${not empty success}">
    alert("${success}");
    </c:if>
    <c:if test="${not empty error}">
    alert("${error}");
    </c:if>
</script>
</body>
</html>
