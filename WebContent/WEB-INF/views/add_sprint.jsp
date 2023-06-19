<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Sprint</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Create Sprint</h1>
        
        <form action="CreateTasks" method="get">
            <div class="form-group">
                <label for="sprintId">Sprint ID:</label>
                <input type="text" class="form-control" id="sprintId" name="sprintId" required>
            </div>
            
            <div class="form-group">
                <label for="sprintMaster">Sprint Master:</label>
                <input type="text" class="form-control" id="sprintMaster" name="sprintMaster" required>
            </div>
            
            <div class="form-group">
                <label for="startDate">Start Date:</label>
                <input type="text" class="form-control" id="startDate" name="startDate" required>
            </div>
            
            <div class="form-group">
                <label for="endDate">End Date:</label>
                <input type="text" class="form-control" id="endDate" name="endDate" required>
            </div>
            
            <div class="form-group">
                <label for="project">Project:</label>
                <select class="form-control" id="project" name="project" onchange="fetchModules()" required>
                    <c:forEach var="project" items="${projects}">
                        <option value="${project.project_id}">${project.project_name}</option>
                    </c:forEach>
                </select>
            </div>
            
            <div class="form-group">
                <label for="modules">Modules:</label>
                <select class="form-control" id="modules" name="modules">
                    <c:if test="${not empty selectedProject}">
                        <c:forEach var="module" items="${modules}">
                            <option value="${module.module_id}">${module.module_name}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </div>
            
            <button type="submit" class="btn btn-primary">Create Sprint</button>
        </form>
    </div>
</body>
</html>
