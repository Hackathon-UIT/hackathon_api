import { Request, Response, Router } from 'express';
import { Application } from 'express';
import eventRoute from './event.route';
export default class Routes {
    constructor(app: Application) {
        app.use('/', eventRoute);
    }
}