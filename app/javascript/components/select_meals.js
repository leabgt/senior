// recuperer les elements cards meals index(queryselector pour recup array)
// iterer sur cet array
// pour chaque element de l'array on ajoute l'eventlistener au click

const mealscards = () => {
  const link = document.getElementById("mealvalidation");
  if(link) {
    link.href += "?";
    let i = 1;
    document.querySelectorAll(".cards-meals-index").forEach((item) => {
      item.addEventListener("click", (event) => {
        item.classList.toggle("cards-circle");
        const mealsid = item.id.split("-");
        link.href += `meal${i}=${mealsid[1]}&`;
        i += 1;
      });
    });
  }
}

const mealsdays = () => {
  const string = window.location.href;
  const day = string.split("=")[1];
  const element = document.getElementById(day);
  element.classList.add("days-selection");
}

export {mealscards, mealsdays}
