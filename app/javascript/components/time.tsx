import React, { useState, useEffect } from 'react';
import ReactDOM from 'react-dom';

function Time() {
  const [time, setTime] = useState(new Date());

  useEffect(() => {
    const timerId = setInterval(() => {
      setTime(new Date());
    }, 1000);

    return () => clearInterval(timerId);
  }, []);

  return (
    <div>
    {time.toLocaleTimeString()}
    </div>
  );
}
document.addEventListener('DOMContentLoaded', () => {
  const timeRoot = document.getElementById('time');
  if (timeRoot) {
    ReactDOM.render(<Time />, timeRoot);
  }
});
