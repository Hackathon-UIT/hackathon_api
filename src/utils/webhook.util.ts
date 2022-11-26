const api = require('./api');

export default class Webhook {

    async create(data) {
        let res = await api.post('/webhooks', data);
        return res;
    }
    async getDetailWebhookById(webhookId) {
        let res = await api.get(`/webhooks/${webhookId}`);
        return res;
    }
    async updateWebhookById(webhookId, data) {
        let res = await api.put(`/webhooks/${webhookId}`, data);
        return res;
    }
    async deleteWebhookById(webhookId) {
        let res = await api.delete(`/webhooks/${webhookId}`);
        return res;
    }
    async deleteWebhookByUrl(urlWebhook) {
        // Thêm url vào query để delete https://oauth.casso.vn/v1/webhooks?webhook=https://website-cua-ban.com/api/webhook
        let query = { params: { webhook: urlWebhook } };
        let res = await api.delete(`/webhooks`, query);
        return res;
    }
    async parseOrderId(caseInsensitive, transactionPrefix, description) {
        // Ở đây mình ở sử dụng regex để parse nội dung chuyển khoản có chứa orderId
        // CASSO101  orderId = 101
        let re = new RegExp(transactionPrefix);
        if (!caseInsensitive)
            re = new RegExp(transactionPrefix, 'i');
        let matchPrefix = description.match(re);
        // Không tồn tại tiền tố giao dịch
        if (!matchPrefix) return null;
        let orderId = parseInt(description.substring(transactionPrefix.length, description.length));
        return orderId;
    }
}