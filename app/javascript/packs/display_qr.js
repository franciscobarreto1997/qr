const axios = require('axios');

const createBtn = document.getElementById('qr_submit');
const input = document.getElementById('qr_name');
const emptySquare = document.querySelector('.empty_square');

const showQR = () => {
    axios.post('/qrcodes', {
    name: input.value,
  })
  .then((response) => {
    const name = response.data.name;
    emptySquare.style.backgroundImage = `url(../../assets/${name}-qrcode.png)`;
    emptySquare.style.backgroundSize = 'cover';
  })
}

const displayQR = () => {
  createBtn.addEventListener('click', () => {
    if (input.value != "") {
      showQR()
    }
  })
}



export default displayQR;
