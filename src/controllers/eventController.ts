import { Request, Response, NextFunction } from 'express';
import { addItem } from '../services/cloudinary.service';
import EventModel from '../models/event.model';
import ParticipantModel from '../models/participant.model';
import PaymentModel from '../models/payment.model';

const eventModel = new EventModel()
const participantModel = new ParticipantModel()
const paymentModel = new PaymentModel()
export default class EventController {
    async createEvent(req: Request, res: any, next: NextFunction) {
        const { company, description, start_day, end_day, thumbnail, detail_url, goal, logo, title } = req.body;
        // convert base 64
        // const imageUrl = await addItem(thumbnail, 'hackathon', 'image')
        await eventModel.createEvent({
            company,
            description,
            start_day,
            end_day,
            thumbnail,
            detail_url,
            goal,
            logo,
            title,
        })
        res.json({ code: '00', message: 'success' })
    }
    async getEvents(req: Request, res: any, next: NextFunction) {
        let data = await eventModel.getEvent()
        res.json({ data: data })
    }
    async getInfoEvent(req: Request, res: any, next: NextFunction) {
        const { event_id } = req.params
        let infoEvent = await eventModel.findEventById(Number(event_id))
        if (!infoEvent) {
            res.status(400).json({ message: 'khong tim thay event.' })
        }
        let participants = await participantModel.findParticipantsEvent(Number(event_id))
        let donates = await paymentModel.getPaymentsByEvent(Number(event_id))
        res.json({data:{
            infoEvent,
            participants,
            donates,
        }})
    }

}