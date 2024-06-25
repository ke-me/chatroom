import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import ChatRooms from '../components/ChatRooms';
// import { Route, Router, Switch } from 'react-router';

const Index = () => {
  return (
    <Router>
        <Routes>
            <Route exact path="/" element={<ChatRooms />} />
        </Routes>
    </Router>
  )
}

export default Index;