import { useState } from "react";

function ApiTest() {
    const [message, setMessage] = useState('');

    // testメソッド：http://localhost:3000/api/testにHTTPリクエストを送信。
    // このリクエストのレスポンスが返ってくると、内容を JSON形式に変換し、
    // data.messageの値をmessageプロパティに設定。
    const test = () => {
        fetch('http://localhost:3000/api/test')
        .then((res) => res.json())
        .then((data) => {
            setMessage(data.message);
        });
    };

    return (
        <div>
            <h1>ApiTest</h1>
            <button onClick={test}></button>
            <p>{message}</p>
        </div>
    );
}

export default ApiTest;