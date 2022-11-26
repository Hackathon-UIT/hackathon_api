import db from '../utils/dbUtil';

export default class ParticipantModel {
    createParticipant(data) {
        return db('participant')
            .insert(data)
            .then((response) => {
                return response;
            });
    }
    findParticipantsEvent(event_id: number) {
        return db('participant')
            .where('id_event', event_id)
            .then((response) => {
                if (!response)
                    return []
                return response;
            });
    }



}