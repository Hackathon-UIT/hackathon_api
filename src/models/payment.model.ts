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
    getPaymentsByEvent(event_id: number) {
        return db('payment')
            .where('description', 'like', `%PAYMENT${event_id}%`)
            .then((response) => {
                if (response.length == 0) return [];
                return response;
            });
    }
    sumAmountPaymentById(event_id: number) {
        return db('payment')
            .sum('amount', { as: 'sum' })
            .where('description', 'like', `%PAYMENT${event_id}%`)
            .then((response) => {
                if (!response) return null;
                return response;
            });
    }
}