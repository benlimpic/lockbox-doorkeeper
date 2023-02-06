
import { useSelector } from "react-redux"
import { RootState } from "../../store"





function Dashboard() {

  const currentUser = useSelector((state: RootState) => state.session.currentUser)
  const accessToken = useSelector((state: RootState) => state.session.accessToken)
  const refreshToken = useSelector((state: RootState) => state.session.refreshToken)


  return (
    <div>
      </div>
  )
}

export default Dashboard