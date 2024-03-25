/* eslint-disable @typescript-eslint/no-unused-vars */
/* eslint-disable react-hooks/rules-of-hooks */
import { useDispatch } from "react-redux";
import { logout } from "../../../redux/saga/sessionSaga";
import { Link } from "react-router-dom";
import LogoImage from "../../../assets/control-center1.png";

export default function NavbarContainer() {
  const dispatch = useDispatch();

  const handleLogout = () => {
    dispatch(logout());
  };

  return (
    <div className="mx-8 text-[#53d2fa]">
      <br />
      {/* NAVBAR */}
      <div className="navbar bg-[#1b2634] rounded-3xl">
        <div className="navbar-start">
          <div className="dropdown">
            <div
              tabIndex={0}
              role="button"
              className="btn btn-ghost lg:hidden"
            ></div>
            <ul
              tabIndex={0}
              className="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow rounded-box w-52 bg-[#1b2634]"
            >
              <li>
                <Link to="/userlist">User List</Link>
              </li>
              <li>
                <Link to="/editprofile">Profile Edit</Link>
              </li>
            </ul>
          </div>
          <img src={LogoImage} alt="Logo" />
        </div>
        <div className="navbar-center hidden lg:flex">
          <ul className="menu menu-horizontal px-1 z-[1] text-2xl">
            <li>
              <Link to="/userlist" state={{ userlist: "mainState" }}>User List</Link>
            </li>
            <li>
              <Link to="/editprofile">Profile Edit</Link>
            </li>
          </ul>
        </div>
        <div className="navbar navbar-end">
          {/* PROFILE LOGO */}
          <div className="dropdown dropdown-end ">
            <div
              tabIndex={0}
              role="button"
              className="btn btn-ghost btn-circle avatar"
            >
              <div className="w-12 rounded-full ">
                <img
                  alt="Profile"
                  src="https://daisyui.com/images/stock/photo-1534528741775-53994a69daeb.jpg"
                />
              </div>
            </div>
            <ul
              tabIndex={0}
              className="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow rounded-box w-52 text-2xl bg-[#1b2634]"
            >
              <li>
                <a onClick={handleLogout}>Logout</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
}
