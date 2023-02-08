
import { Routes, Route} from "react-router-dom";
import { useParams } from "react-router-dom";
import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import Home from "./Pages/Home";
import Create from "./Pages/Create";
import ProjectsPage from "./Pages/ProjectsPage";
import ProjectPage from "./Pages/ProjectPage";

function App() {

      return (
        <Routes>
          <Route index element={<Home />} />
          <Route path="/create" element={<Create />} />
          <Route path="/projects">
            <Route index element={<ProjectsPage />} />
            <Route path=":id" element={<ProjectPage />} />
          </Route>
      </Routes>
        
      )

}

export default App;
