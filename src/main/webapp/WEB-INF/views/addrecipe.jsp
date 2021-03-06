<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodawanie warki</title>
<script type="text/javascript" src="<c:url value="/js/script.js" />"></script>
</head>
<body>

	<form:form method="post" modelAttribute="recipe">
		<label>Nazwa warki: </label>
		<form:input path="brewName" />

		<label>Słody:</label>
		<table id="malts">
			<tr>
				<td><label>Nazwa: </label>
				<form:input type="text" path="malts" /></td>
				<td><label>Ilość(kg): </label>
				<form:input type="text" path="malts" /></td>
			</tr>
		</table>
		<input type="button" value="Kolejny słód" id="oneMoreMaltBtn">
		<input type="button" value="Usuń ostatni" id="deleteLastMaltBtn">
		<br>


		<%-- RESZTA DO PRZEROBIENIA NA SPRINGOWY FORM --%>
		
		<label>Czas zacierania słodów: </label>
		<input type="text" name="mashTime">
		<br>
		<label>Temperatura zacierania słodów: </label>
		<input type="text" name="mashtemp">
		<br>

		<label>Chmiele: </label>
		<table id="hops">
			<tr>
				<td><label>Nazwa: </label><input type="text" name="hopName"></td>
				<td><label>Ilość(g): </label><input type="text"
					name="hopWeight"></td>
				<td><label>Alfakwasy: </label><input type="text"
					name="alphaAcids"></td>
				<td><label>Rok uprawy: </label><input type="text"
					name="hopYear"></td>
				<td><label>Czas gotowania chmielu(min): </label><input
					type="text" name="hopBoilTime"></td>
			</tr>
		</table>
		<input type="button" value="Kolejny chmiel" id="oneMoreHopBtn">
		<input type="button" value="Usuń ostatni" id="deleteLastHopBtn">
		<br>

		<label>Czas gotowania brzeczki: </label>
		<input type="text" name="boilTime">
		<br>
		<label>Drożdże: </label>
		<input type="text" name="yeastName">
		<label>Forma drożdży: </label>
		<select name="yeastForm">
			<option value="dry">Suche</option>
			<option value="liquid">Płynne</option>
			<option value="slurry">Gęstwa</option>
		</select>
		<label>Laboratorium (marka): </label>
		<input type="text" name="yeastLab">
		<label>Ilość drożdży(g): </label>
		<input type="text" name="yeastWeight">
		<label>Dodatek: </label>
		<table id="additions">
			<tr>
				<td><label>Nazwa i ilość dodatku: </label><input type="text"
					name="additionName"></td>
				<td><label>Czas: </label><input type="text" name="additionTime">
					<select name="additionUse">
						<option value="additionBoiled">Gotowanie (minuty)</option>
						<option value="additionEffervescentFermentation">Fermentacja
							burzliwa (dni)</option>
						<option value="additionSecondFermentation">Fermentacja
							cicha (dni)</option>
				</select></td>
			</tr>
		</table>
		<input type="button" value="Kolejny dodatek" id="oneMoreAdditionBtn">
		<input type="button" value="Usuń ostatni" id="deleteLastAdditionBtn">
		<br>

		<label>Ilość dni fermentacji burzliwej: </label>
		<input type="text" name="effervescentFermentationDays">
		<br>
		<label>Ilość dni fermentacji cichej: </label>
		<input type="text" name="secondFermentationDays">
		<br>

		<input type="submit" value="Dodaj przepis">
	</form:form>

</body>
</html>