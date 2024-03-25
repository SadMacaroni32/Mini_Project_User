/* eslint-disable no-mixed-spaces-and-tabs */
import { BrowserRouter as Router, Route, Routes, Navigate, BrowserRouter } from 'react-router-dom';
import MainLogin from "./pages/login/MainLogin";
import MainDashboard from './pages/dashboard/MainDashboard';
import UserList from "./pages/userlist/MainUserList";
import MainProfile from './pages/profile/MainProfile';
import EditProfile_Test from './pages/profile/components/EditProfile_Text';

import { RootState } from './redux/store/store';
import Cookies from 'universal-cookie';
import { useEffect } from 'react';
import { apiLogin } from './redux/saga/sessionSaga';
import { setAuthenticationStatus, setUser } from './redux/state/sessionState';
import { useDispatch, useSelector } from 'react-redux';

function App() {
  const isAuthenticated = useSelector((state: RootState) => state.sessionReducer.isAuthenticated);
  console.log("isAuthenticated", isAuthenticated);
  const cookies = new Cookies();
  const dispatch = useDispatch(); // Get the dispatch function from Redux

  useEffect(() => {
    // Check if the user is authenticated in localStorage
    const isAuthenticated = localStorage.getItem('isAuthenticated') === 'true';

    if (isAuthenticated) {
      // If the user is authenticated, call the login API to get user info
      const username = cookies.get('username'); // Retrieve the username from localStorage
      const password = cookies.get('password'); // Replace with the actual way you retrieve the password or token

      if (isAuthenticated && username && password) {
        apiLogin(username, password)
          .then((userData) => {
            if (userData) {
              // Dispatch an action to update the user state
              dispatch(setUser(userData)); // You should define the setUser action
              // Dispatch an action to update the authentication status
              dispatch(setAuthenticationStatus(true)); // You should define the setAuthenticationStatus action

            }
          })
          .catch((error) => {
            console.error('Error while checking authentication:', error);
          });
      }
    }
  }, [cookies, dispatch]);

  return (
    <div>
      <BrowserRouter>
			<Routes>
				{isAuthenticated ? (
					<>
						<Route path="/" element={<Navigate to="/dashboard" />} />
            			<Route path="/dashboard/*" element={<MainDashboard />} />
            <Route path="/" element={<Navigate to="/userlist" />} />
                  <Route path="/userlist/*" element={<UserList />} />
            <Route path="/" element={<Navigate to="/editprofile" />} />
                  <Route path="/editprofile/*" element={<MainProfile />} />
						<Route path="/" element={<Navigate to="/test" />} />
                  <Route path="/test/*" element={<EditProfile_Test />} />
					</>
				) : (
					<>
						<Route index element={<MainLogin />} />
						<Route path="/" element={<MainLogin />} />
						<Route path="*" element={<Navigate to="/" />} />
					</>
				)}
			</Routes>
		</BrowserRouter>
        
    </div>
  );
}

export default App
