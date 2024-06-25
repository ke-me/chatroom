import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';


const ChatRooms = () => {
    const [chatRooms, setChatRooms] = useState([]);
    
    useEffect(() => {
        const fetchChatRooms = async () => {
            try {
                const response = await axios.get('http://localhost:3000/rooms');
                setChatRooms(response.data);
            } catch (error) {
                console.error(error);
            }
        };
    
        fetchChatRooms();
    }, []);

  return (
    <>
    <h1>チャットルーム一覧</h1>
    <ul>
        {chatRooms.map((room) => (
        <li key={room.id}>
            <Link to={`/rooms/${room.id}`}>{room.name}</Link>
        </li>
        ))}
    </ul>
    </>
  )
}

export default ChatRooms