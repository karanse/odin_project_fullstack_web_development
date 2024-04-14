
import './App.css';
import Greeting from './components/Greeting.jsx';
import Goodbye from './components/Goodbye.jsx';
import Division from './components/Division.jsx';
import Avatar from './components/Avatar.jsx';
import TodoList from './components/TodoList.jsx';
import Animal from './components/Animal.jsx';
import List from './components/List.jsx';
import ConditionalList from './components/ConditionalList.jsx';
import './index.css';

function App() {
  const animals = ["Lion", "Cow", "Snake", "Lizard"];
  return (
    <>
    <Greeting/>
    <Goodbye />
    <Division />
    <Avatar />
    <TodoList />
    <Animal />
    <div>
      <h1>Animals:</h1>
      <List animals={animals} />
    </div>
    <div>
      <h1>Animals starts with L:</h1>
      <ConditionalList animals = {animals} />
    </div>

    </>
  )
}

export default App;
