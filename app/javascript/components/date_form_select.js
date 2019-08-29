const log = console.log;

import flatpickr from 'flatpickr';
import "flatpickr/dist/themes/dark.css";

const formatNumber = (num) => {
  return num.toFixed(2).toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}

const dateFormSelectInit = () => {
  flatpickr(".datepicker", {
    altInput: true,
    mode: "range",
    dateFormat: "Y-m-d",
    minDate: "today",
    onClose: (selectedDates, dateStr, instance) => {
      const form = instance.input.form
      const diffTime = selectedDates[1] - selectedDates[0]
      const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24)) + 1;

      const daysDisplay = form.querySelector('.days-display')
      const priceDisplay = form.querySelector('.price-display')
      const totalPriceDisplay = form.querySelector('.total-price-display')

      daysDisplay.innerText = diffDays
      totalPriceDisplay.innerText = `$${formatNumber(diffDays * Number(priceDisplay.innerText.replace(/\,/g,'')))}`
    }
  })
};

export { dateFormSelectInit }


