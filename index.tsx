// src/index.tsx
import React from 'react';
import { createRoot } from 'react-dom/client';

const Button = React.forwardRef((props, ref) => {
  console.log('Button');
  // @ts-ignore
  return <button ref={ref}>Click me!</button>;
});

const App: React.FC = () => {
  const ref = React.useRef(null);
  console.log('App');

  React.useEffect(() => {
    console.log('ref', ref);
  }, []);

  return (
    <div>
      Hello, React TypeScript! <Button ref={ref} />
    </div>
  );
};

const root = createRoot(document.getElementById('root') as Element);

root.render(<App />);
