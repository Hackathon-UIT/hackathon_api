import { Router } from 'express';

import PaymentController from '../controllers/paymentController';
import apicache from 'apicache';
let cache = apicache.middleware;

class RoutePayment {
    router = Router();
    paymentController = new PaymentController()
    constructor() {
        this.intializeRoutes();
    }
    intializeRoutes() {
        this.router.route('/webhook/handler-bank-transfer')
            .post(this.paymentController.Webhook);
        this.router.route('/register-webhook')
            .post(this.paymentController.registerWebhook);
        this.router.route('/payments/link/:event_id')
            .post(this.paymentController.createLinkTransfer);
        this.router.route('/payments')
            .post(this.paymentController.createPayment);
    }
}

export default new RoutePayment().router;