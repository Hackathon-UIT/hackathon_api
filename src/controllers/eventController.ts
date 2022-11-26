import { Request, Response, NextFunction } from 'express';
import { addItem } from '../services/cloudinary.service';
import EventModel from '../models/event.model';
import ParticipantModel from '../models/participant.model';
import PaymentModel from '../models/payment.model';
import { eventService } from '../services/event.service';
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
        let events = await eventModel.getEvent()
        let formatEvents = []
        for (let i = 0; i < events.length; ++i) {
            let totalAmount = await paymentModel.sumAmountPaymentById(events[i].id)
            formatEvents.push({
                ...events[i],
                total_amount: Number.isInteger(totalAmount.sum) ? totalAmount.sum : 0
            })
        }
        let newEvents = await Promise.all(formatEvents)
        let latestEvent = eventService.findLatestEvent(events)
        res.json({
            data: {
                events:newEvents,
                latestEvent
            }
        })
    }
    async getInfoEvent(req: Request, res: any, next: NextFunction) {
        const { event_id } = req.params
        let infoEvent = await eventModel.findEventById(Number(event_id))
        if (!infoEvent) {
            res.status(400).json({ message: 'khong tim thay event.' })
        }
        let participants = await participantModel.findParticipantsEvent(Number(event_id))
        let donates = await paymentModel.getPaymentsByEvent(Number(event_id))
        res.json({
            data: {
                infoEvent,
                participants,
                donates,
            }
        })
    }
    async updateEvent(req: Request, res: any, next: NextFunction) {
        const { event_id } = req.params

        eventModel.updateEvent(Number(event_id), req.body)
            .then(result => {
                res.json({ message: 'cap nhap thanh cong' })
            })
            .catch(err => {
                res.status(400).json({ err })
            })
    }

}