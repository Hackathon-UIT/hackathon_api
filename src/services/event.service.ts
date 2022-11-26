
export const eventService = {
    findLatestEvent(events) {
        let latestEvent = events[0]
        for (let i = 1; i < events.length; i++) {
            let date = Number(events[i].start_day)
            if (this.checkValidDate(date) && date < Number(latestEvent.start_day)) {
                latestEvent = events[i]
            }
        }
        return latestEvent
    },
    checkValidDate(date: number) {
        let currentDate = new Date().getTime()
        return date < currentDate ? false : true
    }
}