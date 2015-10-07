var loadFile = function(event) {  
  var output = document.getElementById('uploaded_file-preview');
  output.src = URL.createObjectURL(event.target.files[0]);
};