function showmodal() {
    console.log("in modal")
    var modal = document.getElementById('myModal');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    modal.style.display = "block";
}

function closemodal() {
    document.getElementById('myModal').style.display = 'none';
    window.location = '/Application.aspx';
}