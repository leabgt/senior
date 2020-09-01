// recuperer les elements cards meals index(queryselector pour recup array)
// iterer sur cet array
// pour chaque element de l'array on ajoute l'eventlistener au click

const mealscards = () => {
  document.querySelectorAll(".cards-meals-index").forEach((item) => {
  item.addEventListener("click", (event) => {
    item.classList.toggle("cards-circle");
    console.dir(item)
    const mealsid = item.id.split("-")
    console.log(mealsid[1])
  });
});
}
export {mealscards}

// recuperer le numero de l'id de la carte


// Ajouter cet id a notre link_to
