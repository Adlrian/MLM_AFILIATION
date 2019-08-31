function buscar() {
    var nombre = $("#txtId").val();
    $.ajax({
        type: 'POST',
        url: 'buscadordistributor.do',
        data: {
            dato: nombre
        },
        success: function (result) {
            $("#resultado").html(result);
        }
    });
    

}    
function validateFormIndex(){
    var inputIdDistributor = document.getElementById("txtId").value;
    var selectMarket = document.getElementById("FormControlMarket").value;
    var checkedTerms = document.getElementById("CheckTermsAndConditions").checked;
    if (inputIdDistributor=="" || selectMarket == "") {
      alert("Debes completar todos los campos.");
      return false;
    }else if(checkedTerms==false ){
      alert("Debes aceptar los términos y condiciones.");
      return false;  
    }
   
}

