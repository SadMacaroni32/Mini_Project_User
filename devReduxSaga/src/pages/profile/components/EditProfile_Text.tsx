import React, { useEffect } from "react";
import { useLocation } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { RootState } from "../../../redux/store/store";
import { getUsersFetch } from "../../../redux/state/userState";

interface userFormat {
  emp_id: number;
  username: string | number;
  fname: string;
}

export default function EditProfile_Test() {
  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(getUsersFetch());
  }, [dispatch]);

  const location = useLocation();
  const userId = location.state?.state;

  const userData: userFormat[] = useSelector(
    (state: RootState) => state.userReducer.users
  );

  // Filter userData to display only the user with emp_id equal to userId
  const filteredUserData = userData.filter(user => user.emp_id === userId);

  // Display filtered user data in the console
  console.log(filteredUserData);

  return (<>
      {/* Map through filteredUserData and render emp_id, username, and fname */}
      {filteredUserData.map(user => (
        <div key={user.emp_id}>
          <div>Emp_id: {user.emp_id}</div>
          <div>Username: {user.username}</div>
          <div>fname: {user.fname}</div>
        </div>
      ))}
  </>)
}
