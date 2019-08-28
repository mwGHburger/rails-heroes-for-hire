import swal from 'sweetalert';

const popAlertsInit = () => {
  const popAlerts = document.querySelector('.pop-alert');
  if (popAlerts) {
    popAlerts.style.display = 'none';
    swal("Congratulations!", popAlerts.innerText, "success");
  }
}

export { popAlertsInit }
