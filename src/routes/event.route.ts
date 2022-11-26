import { Router } from 'express';
import EventController from '../controllers/eventController';
import { verifyId } from '../middlewares/auth';

class EventRoutes {
    router = Router();
    eventController = new EventController()
    constructor() {
        this.intializeRoutes();
    }
    intializeRoutes() {
        this.router.route('/events')
            .post(this.eventController.createEvent);
        this.router.route('/events')
            .get(this.eventController.getEvents);

    }
}

export default new EventRoutes().router;