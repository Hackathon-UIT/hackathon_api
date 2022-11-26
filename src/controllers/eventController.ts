import { Request, Response, NextFunction } from 'express';
import { addItem } from '../services/cloudinary.service';
import EventModel from '../models/event.model';
import moment from 'moment'


const eventModel = new EventModel()
export default class EventController {
    async createEvent(req: Request, res: any, next: NextFunction) {
        const { company, description, start_day, end_day, thumbnail, detail_url, goal,logo,title } = req.body;
        // convert base 64
        // const imageUrl = await addItem(thumbnail, 'hackathon', 'image')
        //(new Date("11/21/1987 16:00:00")).getTime()
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

}