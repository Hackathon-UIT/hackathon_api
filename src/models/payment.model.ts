import db from '../utils/dbUtil';


export default class PaymentModel {
    createPayment(data) {
        return db('payment')
            .insert(data)
            .then((response) => {
                return response;
            });
    }
    checkExistPayment(tid: String) {
        return db('payment')
            .where('tid', tid)
            .then((response) => {
                if (response.length == 0) return null;
                return response;
            });
    }
}