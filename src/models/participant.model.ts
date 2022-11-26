import db from '../utils/dbUtil';

export default class ParticipantModel {
    createParticipant(data) {
        return db('participant')
            .insert(data)
            .then((response) => {
                return response;
            });
    }




}