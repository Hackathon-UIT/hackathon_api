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



}