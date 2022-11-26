const fs = require('fs/promises');
const nodemailer = require("nodemailer");

export default class SendMail {
    async send(infoParticipant) {
        try {
            const transporter = nodemailer.createTransport({
                service: 'gmail',
                auth: {
                    user: 'tdn352001@gmail.com ', // generated ethereal user
                    pass: 'wfupzyqvtpcwysuj', // generated ethereal password
                },
            })

            let data = await fs.readFile('./src/core/email/index.html', { encoding: 'utf8' })

            for (const [key, value] of Object.entries(infoParticipant)) {
                // console.log(`{data-${key}}`, value)
                const dataKey = `{data-${key}}`
                data = data.split(dataKey).join(value)
            }

            const info = await transporter.sendMail({
                from: 'tdn352001@gmail.com', // sender address
                to: infoParticipant.email, // list of receivers
                subject: "Xác nhận đặt tour", // Subject line
                html: data, // html body
            });
            // console.log(info)
            return info;
        } catch (error) {
            console.log(error)
            return error
        }
    }
}