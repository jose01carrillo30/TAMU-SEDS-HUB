import React from 'react'
import { BrowserRouter as Router, Routes, Route } from  'react-router-dom'
import Event from './Event/Event'
import Events from './Events/Events'

const App = () => {
    return (
        <Router>
            <Routes>
                <Route path="/" element={<Events/>}>
                </Route>
                <Route path="/events" element={<Event/>}>
                </Route>
            </Routes>
        </Router>
    )
}

export default App