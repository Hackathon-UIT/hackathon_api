const api = require('./api');

export default class SyncTransaction {

    async syncTransaction(bankNumber, apiKey) {
        let res = await api.post('/sync', { bank_acc_id: bankNumber });
        console.log(res);
        
        return res;
    }
}