/* global axios */

axios.get("/api/quilts").then(function(response) {
  var quilts = response.data;
  console.log("the quilts are", quilts);

  var quiltTemplate = document.querySelector("#QuiltCard");
  var quiltContainer = document.querySelector(".row");

  quilts.forEach(function(quilt) {
    var copiedContent = quiltTemplate.content.cloneNode(true);
    copiedContent.querySelector(".card-title").innerText = quilt.name;
    copiedContent.querySelector(".card-size").innerText = quilt.size;
    copiedContent.querySelector(".card-price").innerText = quilt.price;
    copiedContent.querySelector(".card-text").innerText = quilt.description;

    if (quilt.images[0]) {
      copiedContent.querySelector(".card-img-top").src = quilt.images[0];
    }

    quiltContainer.appendChild(copiedContent);
  });
});
