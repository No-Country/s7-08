import React, { useState, useEffect, useRef } from 'react';
import ReactDOM, { createRoot } from 'react-dom';
const Counter = ({ arg }) => {
  const [count, setCount] = useState(0);
  const countRef = useRef(count);
  countRef.current = count;

  useEffect(() => {
    const interval = setInterval(() => {
      setCount(countRef.current + 1);
    }, 1000);
    return () => clearInterval(interval);
  }, []);

  return <div>{`${arg} - counter = ${count}!`}</div>;
};

document.addEventListener("DOMContentLoaded", () => {
  const container = document.getElementById("root");
  const root = createRoot(container);
  root.render(<Counter arg={`
    Ruby ${container.getAttribute('ruby')}
    Rails ${container.getAttribute('rails')}`} />);
});
