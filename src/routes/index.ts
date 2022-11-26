import { Request, Response, Router } from 'express';
import { Application } from 'express';
import eventRoute from './event.route';
import paymentRoute from './payment.route';
import participantRoute from './participant.route';
export default class Routes {
    constructor(app: Application) {
        app.use('/', eventRoute);
        app.use('/', paymentRoute);
        app.use('/', participantRoute);
    }
}