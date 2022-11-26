const axios = require("axios");
const queryString = require("query-string");



const axiosClient = axios.create({
    // baseURL: 'https://dev.oauth.casso.vn/v2',
    baseURL: 'http://dev.oauth.casso.vn',
    headers: {
        "content-type": "application/json",
        "Authorization": `Apikey ${process.env.api_key}`,
    },
    paramsSerializer: (params) => queryString.stringify(params),
});
axiosClient.interceptors.request.use(async (config) => {
    return config;
});
axiosClient.interceptors.response.use(
    (response) => {
        if (response && response.data) return response.data;
        return response;
    },
    (error) => {
        throw error;
    }
);
module.exports = axiosClient;