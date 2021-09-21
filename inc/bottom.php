<footer class="section">
    <div class="container">
        &copy Autobonplan &nbsp;<?= date("Y")?>
    </div>
</footer>


<!-- javascript : navbar -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {

        $(".navbar-burger").click(function() {

            $(".navbar-burger").toggleClass("is-active");
            $(".navbar-menu").toggleClass("is-active");

        });
    });
</script>

</body>
</html>

