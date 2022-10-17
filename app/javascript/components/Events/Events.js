import React, { useState, useEffect, Fragment } from 'react'
import axios from 'axios'

const Events = () => {
    const [events, setEvents] = useState([])
    useEffect(()=>{
        //Get all of our events from API
        //Update events in our state
        axios.get('/events.json')
        .then(resp => {
            setEvents(resp.data)
        })
        .catch(resp => console.log(resp))
    }, [events.length])

    const list = events.map( item =>{
        return (<li key={item.name}><strong>name:</strong> {item.name} <br/>
                                    <strong>description:</strong> {item.description} <br/>
                                    <strong>duration:</strong>  {item.duration} <br/>
                                    <strong>location:</strong> {item.location} <br/>
                                    <strong>meeting time:</strong> {item.meeting_time} <br/>
                                    </li>)
    })

    return(
        <Fragment>
            <div>Events</div>
            <ul>{list}</ul>
        </Fragment>
    )
}

export default Events