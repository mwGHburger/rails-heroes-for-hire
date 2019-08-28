const dateFormSelectInit = () => {
  const dateMinInput = document.querySelector(".date-min");
  const dateMinTargetInput = document.querySelector(".date-min-target");

  dateMinInput.addEventListener('change', (event) => {
    const date = new Date(event.currentTarget.value);
    // add a day
    date.setDate(date.getDate() + 1);
    dateMinTargetInput.setAttribute("min", date.toISOString().slice(0,10));
    const diffTime = Math.abs(date.getTime() - new Date(event.currentTarget.value).getTime());
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
  });
};

export { dateFormSelectInit }


