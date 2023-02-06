import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import './App.css';
import AppBar from './app/features/appbar/AppBar';
import Create from './app/features/dashboard/src/Pages/Create';
import Home from './app/features/dashboard/src/Pages/Home';
import ProjectsPage from './app/features/dashboard/src/Pages/ProjectsPage';
import PrivateRoute from './app/features/routes/PrivateRoute';
import PublicOnlyRoute from './app/features/routes/PublicOnlyRoute';
import Login from './app/features/sessions/Login';
import Logout from './app/features/sessions/Logout';
import PersistLogin from './app/features/sessions/PersistLogin';
import Signup from './app/features/sessions/Signup';
import UpdateProfile from './app/features/sessions/UpdateProfile';

function App() {
  return (
    <div className="App">
      <Router>
      <header className="App-header">
        <AppBar />
      </header>
      <main>
        <Routes>
          <Route element={<PersistLogin />}>
            <Route path="/" element={
              <PrivateRoute>
                <Home />
              </PrivateRoute>
            } />
            <Route path="/projects" element={
              <PrivateRoute>
                <ProjectsPage />
              </PrivateRoute>
            } />
            <Route path="/create" element={
              <PrivateRoute>
                <Create />
              </PrivateRoute>
            } />
            <Route path="/logout" element={
              <PrivateRoute>
                <Logout />
              </PrivateRoute>
            } />
            <Route path="/update-profile" element={
              <PrivateRoute>
                <UpdateProfile/>
              </PrivateRoute>
            }/>
            <Route path="/login" element={
                <PublicOnlyRoute>
                  <Login />
                </PublicOnlyRoute> 
              }/>
              <Route path="/signup" element={
                <PublicOnlyRoute>
                  <Signup />
                </PublicOnlyRoute> 
              }/>
          </Route>
        </Routes>
      </main>
      </Router>
    </div>
  );
}

export default App;
