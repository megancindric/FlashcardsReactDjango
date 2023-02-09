import logo from './logo.svg';
import './App.css';
import Header from './components/Header/Header';
import Sidebar from './components/Sidebar/Sidebar';
import CardContainer from './components/CardContainer/CardContainer';

function App() {
  return (
    <div className="App">
      <Header/>
      <div className="wrapper">
        <Sidebar/>
        <CardContainer/>
      </div>
    </div>
  );
}

export default App;
