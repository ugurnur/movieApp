function validateForm() {
  const id = document.getElementById("MovieId").value;
  const title = document.getElementById("title").value;
  const year = document.getElementById("year").value;
  const genre = document.getElementById("genre").value;
  const imdb = document.getElementById("imdb").value;
  const awards = document.getElementById("awards").value;
  const cast = document.getElementById("cast").value;
  const arr = [id, title, year, genre, imdb, awards, cast];
  let result = false;


  for (let i = 0; i < arr.length; i++) {
    if (arr[i] == "No") continue;
    if (arr[i] != "") {
      result = true;
    }
  }
  if (!result) alert("you did not enter any information yet");
  return result;
}