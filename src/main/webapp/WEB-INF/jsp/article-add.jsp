<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Création d'un article</title>
</head>
<body>
<h1>Création d'un article</h1>
<form action="/article/add" method="post">
	<div>
		<label for="code">Code article</label>
		<input id="code" name="code">
	</div>
	<div>
		<label for="name">Libellé de l'article</label>
		<input id="name" name="name">
	</div>
	<div>
		<label for="lot">Numéro de lot</label>
		<input id="lot" name="informations.numeroLot">
	</div>
	<div>
		<label for="categorie">Catégorie</label>
		<select name="categorie.id">
			<option></option>
			<c:forEach items="${categories}" var="categorie">{categorie.libelle}
				<option value="${categorie.id}">
					<c:out value="${categorie.libelle}"/>
				</option>
			</c:forEach>
		</select>
	</div>
	<div><button>Créer l'article</button></div>
</form>
</body>
</html>