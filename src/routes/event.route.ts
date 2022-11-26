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
        this.router.route('/events/:event_id')
            .get(this.eventController.getInfoEvent);

    }
}

export default new EventRoutes().router;