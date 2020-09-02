// recuperer les elements cards meals index(queryselector pour recup array)
// iterer sur cet array
// pour chaque element de l'array on ajoute l'eventlistener au click

const mealscards = () => {
  const link = document.getElementById("mealvalidation");
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



// const mealsdays = () => {
//   const days = document.getElementById("days");
//   Array.from(days.children).forEach((item) => {
//     item.addEventListener("click", (event) => {
//       item.classList.toggle("days-selection");
//       const daysindex = item.innerText;
//       link.href += `day=`;
//     });
//   });
// }
// export {mealscards, mealsdays}
