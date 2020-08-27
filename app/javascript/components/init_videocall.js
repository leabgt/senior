
const initVideoCall = () => {
  const data = null;

  const xhr = new XMLHttpRequest();

  xhr.addEventListener("readystatechange", function () {
    if (this.readyState === this.DONE) {
      console.log(this.responseText);
    }
  });

  xhr.open("GET", "https://api.daily.co/v1/");
  xhr.setRequestHeader("authorization", "Bearer 966025264c5a9e63e67b677f531cfa4ef52a9bb32e1389d92773999c70e90241");

  xhr.send(data);
}

// const data = JSON.stringify({
//   "properties": {
//     "redirect_on_meeting_exit": "http://www.vie-de-senior.com/"
//   }
// });

// const xhr = new XMLHttpRequest();

// xhr.addEventListener("readystatechange", function () {
//   if (this.readyState === this.DONE) {
//     console.log(this.responseText);
//   }
// });

// xhr.open("POST", "https://api.daily.co/v1/");
// xhr.setRequestHeader("content-type", "application/json");
// xhr.setRequestHeader("authorization", "Bearer 966025264c5a9e63e67b677f531cfa4ef52a9bb32e1389d92773999c70e90241");

// xhr.send(data);

export { initVideoCall }
