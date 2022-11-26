import { Request, Response, NextFunction } from 'express';
import ModelPayment from '../models/payment.model';
import ExtendFunc from '../utils/extendFunc';

import Webhook from '../utils/webhook.util'
import UserInfo from '../utils/get_user_info.util'
import SyncTransaction from '../utils/sync.util'


const webhookUtil = new Webhook();
const userUtil = new UserInfo()
const syncUtil = new SyncTransaction();

const modelPayment = new ModelPayment()
const extendFunc = new ExtendFunc()
export default class PaymentController {
    async registerWebhook(req: Request, res: Response, next: NextFunction) {
        try {
            //Delete Toàn bộ webhook đã đăng kí trước đó với https://ten-mien-cua-ban.com/webhook/handler-bank-transfer
            await webhookUtil.deleteWebhookByUrl(`${process.env.url_webhook}/webhook/handler-bank-transfer`);
            //Tiến hành tạo webhook
            let data = {
                webhook: `${process.env.url_webhook}/webhook/handler-bank-transfer`,
                secure_token: process.env.secure_token,
                income_only: true
            }
            let newWebhook = await webhookUtil.create(data);
            // Lấy thông tin về userInfo
            let userInfo = await userUtil.getDetailUser();
            return res.status(200).json({
                code: 200,
                message: 'success',
                data: {
                    webhook: newWebhook.data,
                    userInfo: userInfo.data
                }
            })
        } catch (error) {
            next(error)
        }
    }
    async Webhook(req: Request, res: Response, next: NextFunction) {
        try {
            // B1: Ở đây mình sẽ thực hiện check secure-token. Bình thường phần này sẽ nằm trong middlewares
            // Mình sẽ code trực tiếp tại đây cho dễ hình dung luồng. Nếu không có secure-token hoặc sai đều trả về lỗi
            if (!req.header('secure-token') || req.header('secure-token') != process.env.secure_token) {
                return res.status(401).json({
                    code: 401,
                    message: 'Missing secure-token or wrong secure-token'
                })
            }
            for (let item of req.body.data) {
                // check exist payment
                const check = await modelPayment.checkExistPayment(item.tid)
                if (!check)
                    await modelPayment.createPayment({
                        tid: item.tid,
                        description: item.description,
                        amount: item.amount,
                        cusum_balance: item.cusum_balance,
                        created_at: item.when,
                        bank_sub_acc_id: item.bank_sub_acc_id,
                        subAccId: item.subAccId
                    })
            }
            return res.status(200).json({
                code: 200,
                message: 'success',
                data: null
            })
        } catch (error) {
            next(error)
        }
    }
}
function getOrderId(description) {
    const regex = new RegExp(/ORDER\s*(\d+)/, 'i');
    const matches = description.match(regex);
    if (!matches) return null;
    return matches[1];
}