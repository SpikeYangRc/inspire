import React from 'react';
import { createRoot } from 'react-dom/client';

const App: React.FC = () => {
  return <div>Hello, React TypeScript!</div>;
};

const root = createRoot(document.getElementById('root') as Element);

root.render(<App />);
