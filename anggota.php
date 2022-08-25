<html>
<head>
</head>
<body>

  <div class="container">
    <div class="card mt-5">
      <div class="card-header">
      Cari Mahasiswa
     </div>
     <div class="card-body">
      <div class="row">
        <div class="col-md-8"></div>
        <div class="col-md-4">
          <div class="mb-3">
          <input type="text" class="form-control" id="search" name="search" placeholder="Cari disini...">
        </div>
        </div>
      </div>
        <div id="hasil"></div>

    </div>
  </div>
  </div>
</body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    load_data();
    function load_data(search){
      $.ajax({
        url:"get_data.php",
        method:"POST",
        data: {
          search: search
        },
        success:function(data){
          $('#hasil').html(data);
        }
      });
    }
    $('#search').keyup(function(){
      var search = $("#search").val();
      load_data(search);
    });
  });
  </script>
</html>
