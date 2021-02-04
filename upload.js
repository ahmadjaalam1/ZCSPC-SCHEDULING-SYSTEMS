function showPreview(event){
    var uploadBtn = document.getElementById("uploadBtn");
    var src = URL.createObjectURL(event.target.files[0]);
    var preview = document.getElementById("file-up-preview");
    preview.src = src;
    preview.style.display = "block";
    uploadBtn.textContent = "Change photo";
}