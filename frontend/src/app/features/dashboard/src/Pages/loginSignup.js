import { useState } from 'react'
import Form from 'react-bootstrap/Form'
import Container from 'react-bootstrap/Container'
import Button from 'react-bootstrap/Button'
import Login from '../components/loginSignup/login'
import Signup from '../components/loginSignup/signup'

const LoginSignup = () => {
  const [isLogin, setIsLogin] = useState(true)
  const [user, setUser] = useState(null)

  return (
    <Container>
      {isLogin ? 
      <Login user={user} setUser={setUser}/>
      :
      <Signup setIsLogin={setIsLogin} setUser={setUser}/>
      }
      <br></br>
      <Form.Text className="text-muted">
        { isLogin ? "Don't have an account? " : "Already have an account?" }
      </Form.Text>
      <br></br>
      <Button size="sm" variant="secondary" onClick={() => setIsLogin(!isLogin)}>{isLogin ? 'Signup' : 'Login'}</Button>
    </Container>
  )
}

export default LoginSignup