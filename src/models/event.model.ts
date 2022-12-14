import db from '../utils/dbUtil';

export default class EventModel {
    createEvent(data) {
        return db('event')
            .insert(data)
            .then((response) => {
                return response;
            });
    }
    getEvent() {
        return db('event')
            .orderBy('start_day', 'desc')
            .then((response) => {
                return response;
            });
    }
    findEventById(event_id: number) {
        return db('event')
            .where('id', event_id)
            .then((response) => {
                if (!response)
                    return null
                return response[0];
            });
    }
    updateEvent(event_id: number, data: object) {
        return db('event')
            .where('id', event_id)
            .update(data)
            .then((response) => {
                return response;
            });
    }



}