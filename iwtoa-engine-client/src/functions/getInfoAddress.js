import axios from 'axios';

// const key1 = '1JMn9VPgikKhk4wHzB8p0A18311';
// const key2 = 'epuYIXbj706AdPB1_-M9qw18364';
// const key3 = 'xLKnAYUnVEGN_9ajePwDxg18363';
// const key4 = 'mL8LCCECq0OMWVKQAXyi2g18546';
// const key5 = 'Out-t23WW0mZlsiA6U4a1Q18679';
// const key6 = 'ZmnJaSRo0EChk7uYi6i_Eg18682';
const API_URL = 'https://api.getAddress.io/find';

export default function getInfoAddress(searchTerm, API_KEY) {
    console.log('Search term for the results ',searchTerm)
    let url = `${API_URL}/${searchTerm}?api-key=${API_KEY}`;
    return search(url);
}

function search(url){
    return axios.get(url)
    .then(res => {
        console.log(res.data)
        // set the address list from here.
        return res.data;
    }).catch(error => {
        // console.log('there is an error in the request', error.response)
        // // Add more keys and Repeat this Condition
        // console.log(error.response.status);
        return error.response;
    });
}



