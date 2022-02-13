function viewData(){
    $.ajax({
       type:"GET",
       url:"php/server.php",
       success:function(data){
           $('tbody').html(data);
       }
    });
};
function saveData(){
    var name = $('#name').val();
    var email = $('#email').val();
    var password = $('#password').val();
    var adress = $('#adress').val();
    var phone = $('#phone').val();
    $.ajax({
        type: "POST",
        url:"php/server.php?p=insert",
        data: "n="+name+"&em="+email+"&pass="+password+"&ad="+adress+"&pn="+phone,
        success:function(data){
           $('#addModal form')[0].reset();
           $('#addModal').modal('hide');
           viewData();
        }
    });
}



function updateData(){
    var id = $("#hidden_user_id").val();
    var name = $("#edit_name").val();
    var email = $("#edit_email").val();
    var password = $("#edit_password").val();
    var phone = $("#edit_phone").val();
    var adress = $("#edit_adress").val();
    $.ajax({
        type:"POST",
        url:"php/server.php?p=edit",
        data:"n="+name+"&em="+email+"&ps="+password+"&ph="+phone+"&adr="+adress+"&id="+id,
        success: function(data){
            $('#editModal form')[0].reset();
            $('#editMoadl').modal('hide');
            viewData();
        }
        
    });
    } 
    function getUserDetails(id){
        //alert(id);
        $.ajax({
            type:"POST",
            url:"php/server.php",
            data:"id="+id,
            success: function(data){
               alert(data);
             
               var user = JSON.parse(data);
               $("#hidden_user_id").val(id);
               $("#edit_name").val(user.name);
               $("#edit_email").val(user.email);
               $("#edit_password").val(user.password_hash);
               $("#edit_phone").val(user.phone);
               $("#edit_adress").val(user.adress);
            }
        });
        
        
    }
  
    function deleteData(str)
    {
        var id = str;
        if(confirm("Da li ste sigurni ? ")){
        $.ajax({
            type:"GET",
            url:"php/server.php?p=del",
            data:"&id="+id,
            success: function(data){
                viewData();
            }
        });
    }
}