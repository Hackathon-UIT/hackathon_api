import { Request, Response, NextFunction } from 'express';
import { addItem } from '../services/cloudinary.service';

import ParticipantModel from '../models/participant.model';
import SendMail from '../core/email/sendMail';
import EventModel from '../models/event.model';
import moment from 'moment'

const sendMail = new SendMail()
const participantModel = new ParticipantModel()
const eventModel = new EventModel()
export default class ParticipantController {
    async createParticipant(req: Request, res: any, next: NextFunction) {
        const { name, age, email, phone, id_event } = req.body
        // console.log(req.body);

        if (name == '' || String(age) == '' || email == '' || phone == '' || !id_event) {
            res.status(400).json({ message: 'that bai' })
        }
        let data = {
            name, age, email, phone, id_event
        }
        let infoEvent = await eventModel.findEventById(id_event)
        // console.log(infoEvent);

        if (!infoEvent) {
            res.status(400).json({ message: 'Event không tồn tại' })
        }
        participantModel.createParticipant(data)
            .then(async (result) => {
                await sendMail.send({
                    ...data,
                    ...infoEvent,
                    start_day: moment.unix(Number(infoEvent.start_day) / 1000).format("MM-DD-YYYY hh:mm a"),
                    end_day: moment.unix(Number(infoEvent.end_day) / 1000).format("MM-DD-YYYY hh:mm a"),
                })
                console.log('gửi mail thành công.');
                
            })
            .catch((err) => {
                console.log(err);
                next()
            })
    }


}