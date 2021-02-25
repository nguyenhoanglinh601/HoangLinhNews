<!DOCTYPE html>
<html>

<head>
	<title>GeeksforGeeks</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>

<body>

	<form id="form" method="post" action="debugpostajax">
		@csrf
		<input id="value" type="text" name="value">
		<button id="submit" type="submit">Submit</button>
	</form>
	<script>
		$(document).ready(function() {
			$("#submit").click(function(event) {
				event.preventDefault();
				$.ajax({
					url: '/debugpostajax',
					type: 'post',
					data: $('#form').serialize(),
				});

				$.ajax({
					url: '/debuggetajax',
					type: 'get',
					dataType: 'JSON',
					success: function(response) {
							var value = response[0].result;

							var tr_str = "<p>"+value+"</p>";

							$("#form").append(tr_str);

					}
				});
			});
		});
	</script>
</body>

</html>