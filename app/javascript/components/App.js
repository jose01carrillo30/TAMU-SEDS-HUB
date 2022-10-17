import React from 'react'
import { BrowserRouter as Router, Routes, Route } from  'react-router-dom'
import Event from './Event/Event'
import Events from './Events/Events'

const App = () => {
    return (
        <Router>
            <Routes>
                <Route path="/events" element={<Events/>}>
                </Route>
            </Routes>
        </Router>
    )
}

export default App