import { Link, useLocation } from "react-router-dom";
import { useEffect } from "react";

import ProfileImage from "../../../assets/wallybayolz.png";
import { useDispatch, useSelector } from "react-redux";
import { getUsersFetch } from "../../../redux/state/userState";
import { RootState } from "../../../redux/store/store";

{
  /* INTERFACE */
}
interface UserInfo {
  emp_id: number;
  fname: string;
  lname: string;
  mname: string;
  username: string | number;
  position_sh_name: string | number;
  section_name: string | number;
  dept_name: string | number;
  email: string | number;
}

export default function EditProfile() {
  const dispatch = useDispatch();
  const location = useLocation();
  const userId = location.state?.state;

  {
    /* Dispatch getUserFetch */
  }
  useEffect(() => {
    dispatch(getUsersFetch());
  }, [dispatch]);

  {
    /* Root canal */
  }
  const userData: UserInfo[] = useSelector(
    (state: RootState) => state.userReducer.users
  );

  {
    /* Filter Data */
  }
  const filteredUserData = userData.filter((user) => user.emp_id === userId);

  {
    /* Pang test sa data */
  }
  console.log(filteredUserData);
  console.log(userId);

  return (
    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
      {/* PROFILE AVATAR */}
      <div className="avatar ml-9 mt-9 justify-center items-stretch">
        <div className="w-50 mask mask-squircle">
          <img src={ProfileImage} />
        </div>
      </div>

      {/* Inputs Section */}
      {filteredUserData.map((user, ida) => (
        <div key={ida} className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {/* Employee Id */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Employee Id</span>
            </div>
            <input
              type="text"
              placeholder={`${user.emp_id}`}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* First name */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">First name</span>
            </div>
            <input
              type="text"
              placeholder={user.fname}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* Username */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Username</span>
            </div>
            <input
              type="text"
              placeholder={`${user.username}`}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* Middle name */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Middle name</span>
            </div>
            <input
              type="text"
              placeholder={user.mname}      
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* Position */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Position</span>
            </div>
            <input
              type="text"
              placeholder={`${user.position_sh_name}`}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* Last name */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Last name</span>
            </div>
            <input
              type="text"
              placeholder={user.lname}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* Section */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Section</span>
            </div>
            <input
              type="text"
              placeholder={`${user.section_name}`}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* Email */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Email</span>
            </div>
            <input
              type="text"
              placeholder={`${user.email}`}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>

          {/* Department */}
          <div className="form-control">
            <div className="label">
              <span className="label-text text-[#53d2fa]">Department</span>
            </div>
            <input
              type="text"
              placeholder={`${user.dept_name}`}
              className="input input-bordered w-full max-w-xs placeholder-[#53d2fa] bg-[#3c4656]"
            />
          </div>
          <div className="buttonContainer">
            <Link to="/userlist">
          <button className="btn btn-xs sm:btn-sm md:btn-md lg:btn-lg m-2 btn-outline bg-[#1b2634] text-[#85d9ef] hover:bg-[#85d9ef] hover:text-[#1b2634]">Return</button>
          </Link>
          <button className="btn btn-xs sm:btn-sm md:btn-md lg:btn-lg m-2 btn-outline bg-[#1b2634] text-[#85d9ef] hover:bg-[#85d9ef] hover:text-[#1b2634]">Update</button>
          </div>
        </div>
      ))}
    </div>
  );
}
