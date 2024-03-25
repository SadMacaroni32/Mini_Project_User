import React, { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { Link } from "react-router-dom";

import { FaRegTrashAlt } from "react-icons/fa";
import { RiEditBoxLine } from "react-icons/ri";

import { RootState } from "../../../redux/store/store"; // STORE
import { getUsersFetch } from "../../../redux/state/userState"; // STATE

{
  /* INTERFACE OPTIONAL */
}
interface userFormat {
  emp_id: number;
  username: string | number;
  fname: string;
  lname: string;
  position_sh_name: string;
  email: string | number;
  section_name: string | number;
  dept_name: string | number;
  reg_date: string | number;
  [key: string]: string | number; // Index signature
}


export default function UserListData() {
  const dispatch = useDispatch();
  const userData: userFormat[] = useSelector(
    (state: RootState) => state.userReducer.users
  );
  const [sortedColumn, setSortedColumn] = useState<string | null>(null);
  const [sortOrder, setSortOrder] = useState<"asc" | "desc">("asc");

  useEffect(() => {
    dispatch(getUsersFetch());
  }, [dispatch]);

  console.log(userData);

  // Sorting function
  const sortData = (columnName: string) => {
    if (sortedColumn === columnName) {
      // If already sorted by this column, toggle the sort order
      setSortOrder(sortOrder === "asc" ? "desc" : "asc");
    } else {
      // If sorting by a new column, set the sorted column and default to ascending order
      setSortedColumn(columnName);
      setSortOrder("asc");
    }
  };

  // Sort the userData array based on the sortedColumn and sortOrder
  const sortedUserData = [...userData].sort((a, b) => {
    if (!sortedColumn) return 0;
    const aValue = a[sortedColumn];
    const bValue = b[sortedColumn];
    if (aValue < bValue) return sortOrder === "asc" ? -1 : 1;
    if (aValue > bValue) return sortOrder === "asc" ? 1 : -1;
    return 0;
  });

  // Check if userData is undefined or not an array
  if (!userData || !Array.isArray(userData)) {
    return <div>Loading...</div>; // Or any other loading indicator
  }

  return (
    <>
      <div className="overflow-x-auto">
        <table className="table">
          {/* head */}
          <thead>
            <tr className="text-[#85d9ef] text-lg">
              <th
                onClick={() => sortData("emp_id")}
                style={{ cursor: "pointer" }}
              >
                EMPLOYEE ID
              </th>
              <th
                onClick={() => sortData("username")}
                style={{ cursor: "pointer" }}
              >
                USERNAME
              </th>
              <th
                onClick={() => sortData("fname")}
                style={{ cursor: "pointer" }}
              >
                FNAME
              </th>
              <th
                onClick={() => sortData("lname")}
                style={{ cursor: "pointer" }}
              >
                LNAME
              </th>
              <th
                onClick={() => sortData("position_sh_name")}
                style={{ cursor: "pointer" }}
              >
                POSITION
              </th>
              <th
                onClick={() => sortData("email")}
                style={{ cursor: "pointer" }}
              >
                E-MAIL
              </th>
              <th
                onClick={() => sortData("section_name")}
                style={{ cursor: "pointer" }}
              >
                SECTION
              </th>
              <th
                onClick={() => sortData("dept_name")}
                style={{ cursor: "pointer" }}
              >
                DEPARTMENT
              </th>
              <th
                onClick={() => sortData("reg_date")}
                style={{ cursor: "pointer" }}
              >
                REG. DATE
              </th>
              <th>ACTIONS</th>
            </tr>
          </thead>
          <tbody>
            {/* Rendering sorted user data */}
            {sortedUserData.map((user, ida) => (
              <tr key={ida} className="hover:bg-[#3c4656] text-lg">
                <th>{user.emp_id}</th>
                <td>{user.username}</td>
                <td>{user.fname}</td>
                <td>{user.lname}</td>
                <td>{user.position_sh_name}</td>
                <td>{user.email}</td>
                <td>{user.section_name}</td>
                <td>{user.dept_name}</td>
                <td>{user.reg_date}</td>
                <td className="flex items-center space-x-2">
                  <Link
                    to={`/editprofile/${user.username}`}
                    state={{ state: user.emp_id }}
                  >
                    <RiEditBoxLine className="h-5 w-5" />
                  </Link>
                  <FaRegTrashAlt className="h-5 w-5" />
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        <div className="join flex justify-center mt-6 text-[#85d9ef]">
          <button className="join-item btn btn-outline text-[#85d9ef] bg-[#1b2634]">
            «
          </button>
          <button className="join-item btn btn-outline text-[#85d9ef] bg-[#1b2634]">
            Page 1
          </button>
          <button className="join-item btn btn-outline text-[#85d9ef] bg-[#1b2634]">
            »
          </button>
        </div>
      </div>
    </>
  );
}
