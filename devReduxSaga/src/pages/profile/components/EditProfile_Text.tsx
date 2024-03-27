import React, { useEffect, useState } from "react";
import { useLocation } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { RootState } from "../../../redux/store/store";
import { getUsersFetch } from "../../../redux/state/userState";
import { updateUserInfo } from "../../../redux/saga/userSaga";
import axios from "axios";

interface userFormat {
  emp_id: number;
  username: string | number;
  fname: string;
  lname: string;
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
  console.log(userId);

  const [username, setUsername] = useState("");
  const [assocID, setAssocID] = useState("");
  const [empStatus, setEmpStatus] = useState("0");
  const [firstName, setFirstName] = useState("");
  const [middleName, setMiddleName] = useState("");
  const [lastName, setLastName] = useState("");
  const [position, setPosition] = useState(0);
  const [email, setEmail] = useState("");
  const [businessUnit, setBusinessUnit] = useState(0);
  const [department, setDepartment] = useState(0);
  const [confirmPassword, setConfirmPassword] = useState("");
  const [adminPassword, setAdminPassword] = useState("");
  const [newPassword, setNewPassword] = useState("");
  const [confirmNewPassword, setConfirmNewPassword] = useState("");
  const [password, setPassword] = useState("");
  const [selectedImage, setSelectedImage] = useState<File | null>(null);
  const [selectedRoles, setSelectedRoles] = useState<number[]>([]);

   const proceedWithSaving = () => {
    const data = {
      emp_id: assocID,
      username: username,
      password: password,
      confirm_password: confirmPassword,
      admin_password: adminPassword,
      new_password: newPassword,
      confirm_new_password: confirmNewPassword,
      fname: firstName.trim(),
      mname: middleName.trim(),
      lname: lastName.trim(),
      position_id: position,
      email: email,
      section_id: department,
      dept_id: businessUnit,
      selectedRoles: selectedRoles,
      status_code: empStatus,
      img_src: selectedImage,
    };
    dispatch(updateUserInfo({ data }));
  };


  return (<>
      {/* Map through filteredUserData and render emp_id, username, and fname */}
      {filteredUserData.map(user => (
        <div key={user.emp_id} style={{color: 'white', margin: '3px'}}>
          <div>Emp_id: {user.emp_id}</div>
          <div>First Name: {user.fname}</div>
          <div>Last Name: {user.lname}</div>

          <div className="">
          <input type="text" onChange={(e) => setFirstName(e.target.value)} value={firstName} placeholder="first name" className="input input-bordered w-full max-w-xs m-3 text-[#85d9ef] bg-[#1b2634]" />
          <input type="text" onChange={(e) => setLastName(e.target.value)} value={lastName} placeholder="last name" className="input input-bordered w-full max-w-xs m-3 text-[#85d9ef] bg-[#1b2634]" />
          <button onClick={proceedWithSaving}>UPDATE</button>
          </div>
        </div>
      ))}
  </>)
}
