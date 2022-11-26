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



}