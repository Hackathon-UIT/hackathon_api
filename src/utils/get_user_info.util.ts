const api = require('./api');

export default class UserInfo {

    async getDetailUser(){
        let res = await api.get(`/userInfo`);
        return res;
    }
}