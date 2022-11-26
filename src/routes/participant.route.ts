import { Router } from 'express';

import ParticipantController from '../controllers/participantController';
import apicache from 'apicache';
let cache = apicache.middleware;

class RouteParticipant {
    router = Router();
    participantController = new ParticipantController()
    constructor() {
        this.intializeRoutes();
    }
    intializeRoutes() {
        this.router.route('/participants')
            .post(this.participantController.createParticipant);
    }
}

export default new RouteParticipant().router;