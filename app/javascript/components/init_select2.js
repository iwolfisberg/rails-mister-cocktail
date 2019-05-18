import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#dose_ingredient_id').select2({
    placeholder: 'Select an ingredient',
    allowClear: true
  });
};

export { initSelect2 };
