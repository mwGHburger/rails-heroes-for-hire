import "bootstrap";
import { popAlertsInit } from './../components/pop_alerts';
import { dateFormSelectInit } from './../components/date_form_select';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
popAlertsInit();
dateFormSelectInit();
